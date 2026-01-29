# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Inspector2 do
  @moduledoc """
  Amazon Inspector is a vulnerability discovery service that automates continuous
  scanning for
  security vulnerabilities within your Amazon EC2, Amazon ECR, and Amazon Web
  Services Lambda environments.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      update_ec2_deep_inspection_configuration_request() :: %{
        optional("activateDeepInspection") => [boolean()],
        optional("packagePaths") => list(String.t() | atom())
      }

  """
  @type update_ec2_deep_inspection_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_disassociate_code_security_scan_configuration_request() :: %{
        required("disassociateConfigurationRequests") => list(disassociate_configuration_request())
      }

  """
  @type batch_disassociate_code_security_scan_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_encryption_key_response() :: %{
        "kmsKeyId" => String.t() | atom()
      }

  """
  @type get_encryption_key_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_vulnerability_details() :: %{
        "cwes" => list(String.t() | atom()),
        "detectorId" => String.t() | atom(),
        "detectorName" => String.t() | atom(),
        "detectorTags" => list(String.t() | atom()),
        "filePath" => code_file_path(),
        "referenceUrls" => list(String.t() | atom()),
        "ruleId" => String.t() | atom(),
        "sourceLambdaLayerArn" => String.t() | atom()
      }

  """
  @type code_vulnerability_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_request() :: %{
        optional("accountIds") => list(String.t() | atom()),
        optional("resourceTypes") => list(String.t() | atom())
      }

  """
  @type disable_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_file_path() :: %{
        "endLine" => [integer()],
        "fileName" => String.t() | atom(),
        "filePath" => String.t() | atom(),
        "startLine" => [integer()]
      }

  """
  @type code_file_path() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_git_lab_self_managed_integration_detail() :: %{
        "accessToken" => String.t() | atom(),
        "instanceUrl" => String.t() | atom()
      }

  """
  @type create_git_lab_self_managed_integration_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_path() :: %{
        "steps" => list(step())
      }

  """
  @type network_path() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      state() :: %{
        "errorCode" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cvss4() :: %{
        "baseScore" => float(),
        "scoringVector" => String.t() | atom()
      }

  """
  @type cvss4() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_delegated_admin_account_response() :: %{
        optional("delegatedAdmin") => delegated_admin()
      }

  """
  @type get_delegated_admin_account_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      repository_aggregation() :: %{
        "repositories" => list(string_filter()),
        "sortBy" => String.t() | atom(),
        "sortOrder" => String.t() | atom()
      }

  """
  @type repository_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      project_code_security_scan_configuration() :: %{
        "continuousIntegrationScanConfigurations" => list(project_continuous_integration_scan_configuration()),
        "periodicScanConfigurations" => list(project_periodic_scan_configuration())
      }

  """
  @type project_code_security_scan_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      suggested_fix() :: %{
        "code" => [String.t() | atom()],
        "description" => [String.t() | atom()]
      }

  """
  @type suggested_fix() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_finding_status_filter() :: %{
        "comparison" => list(any()),
        "value" => list(any())
      }

  """
  @type cis_finding_status_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_request() :: %{
        optional("accountIds") => list(String.t() | atom()),
        optional("clientToken") => String.t() | atom(),
        required("resourceTypes") => list(String.t() | atom())
      }

  """
  @type enable_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vulnerability() :: %{
        "atigData" => atig_data(),
        "cisaData" => cisa_data(),
        "cvss2" => cvss2(),
        "cvss3" => cvss3(),
        "cvss4" => cvss4(),
        "cwes" => list(String.t() | atom()),
        "description" => String.t() | atom(),
        "detectionPlatforms" => list(String.t() | atom()),
        "epss" => epss(),
        "exploitObserved" => exploit_observed(),
        "id" => String.t() | atom(),
        "referenceUrls" => list(String.t() | atom()),
        "relatedVulnerabilities" => list(String.t() | atom()),
        "source" => String.t() | atom(),
        "sourceUrl" => String.t() | atom(),
        "vendorCreatedAt" => non_neg_integer(),
        "vendorSeverity" => String.t() | atom(),
        "vendorUpdatedAt" => non_neg_integer()
      }

  """
  @type vulnerability() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sbom_export_request() :: %{
        optional("resourceFilterCriteria") => resource_filter_criteria(),
        required("reportFormat") => String.t() | atom(),
        required("s3Destination") => destination()
      }

  """
  @type create_sbom_export_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_code_security_integration_request() :: %{
        optional("tags") => map(),
        required("integrationArn") => String.t() | atom()
      }

  """
  @type get_code_security_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_code_security_scan_request() :: %{
        required("resource") => list(),
        required("scanId") => String.t() | atom()
      }

  """
  @type get_code_security_scan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_organization_configuration_request() :: %{}

  """
  @type describe_organization_configuration_request() :: %{}

  @typedoc """

  ## Example:

      update_git_lab_self_managed_integration_detail() :: %{
        "authCode" => String.t() | atom()
      }

  """
  @type update_git_lab_self_managed_integration_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage_total() :: %{
        "accountId" => String.t() | atom(),
        "usage" => list(usage())
      }

  """
  @type usage_total() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_targets() :: %{
        "accountIds" => list(String.t() | atom()),
        "targetResourceTags" => map()
      }

  """
  @type cis_targets() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remediation() :: %{
        "recommendation" => recommendation()
      }

  """
  @type remediation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_configuration_request() :: %{
        optional("ec2Configuration") => ec2_configuration(),
        optional("ecrConfiguration") => ecr_configuration()
      }

  """
  @type update_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_security_integration_summary() :: %{
        "createdOn" => [non_neg_integer()],
        "integrationArn" => String.t() | atom(),
        "lastUpdateOn" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "tags" => map(),
        "type" => list(any())
      }

  """
  @type code_security_integration_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_findings_report_response() :: %{
        optional("reportId") => String.t() | atom()
      }

  """
  @type create_findings_report_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      continuous_integration_scan_configuration() :: %{
        "supportedEvents" => list(list(any())())
      }

  """
  @type continuous_integration_scan_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      counts() :: %{
        "count" => float(),
        "groupKey" => String.t() | atom()
      }

  """
  @type counts() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      coverage_map_filter() :: %{
        "comparison" => String.t() | atom(),
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type coverage_map_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      filter_criteria() :: %{
        "ecrImageLastInUseAt" => list(date_filter()),
        "severity" => list(string_filter()),
        "codeVulnerabilityFilePath" => list(string_filter()),
        "ecrImageHash" => list(string_filter()),
        "findingType" => list(string_filter()),
        "ec2InstanceVpcId" => list(string_filter()),
        "resourceId" => list(string_filter()),
        "lambdaFunctionExecutionRoleArn" => list(string_filter()),
        "networkProtocol" => list(string_filter()),
        "updatedAt" => list(date_filter()),
        "title" => list(string_filter()),
        "ec2InstanceImageId" => list(string_filter()),
        "findingStatus" => list(string_filter()),
        "inspectorScore" => list(number_filter()),
        "vendorSeverity" => list(string_filter()),
        "resourceTags" => list(map_filter()),
        "lambdaFunctionName" => list(string_filter()),
        "fixAvailable" => list(string_filter()),
        "ecrImageRepositoryName" => list(string_filter()),
        "awsAccountId" => list(string_filter()),
        "codeVulnerabilityDetectorName" => list(string_filter()),
        "epssScore" => list(number_filter()),
        "ecrImageRegistry" => list(string_filter()),
        "componentType" => list(string_filter()),
        "codeRepositoryProviderType" => list(string_filter()),
        "lastObservedAt" => list(date_filter()),
        "exploitAvailable" => list(string_filter()),
        "ecrImageTags" => list(string_filter()),
        "codeVulnerabilityDetectorTags" => list(string_filter()),
        "vulnerabilitySource" => list(string_filter()),
        "relatedVulnerabilities" => list(string_filter()),
        "lambdaFunctionRuntime" => list(string_filter()),
        "ecrImageInUseCount" => list(number_filter()),
        "ec2InstanceSubnetId" => list(string_filter()),
        "portRange" => list(port_range_filter()),
        "ecrImagePushedAt" => list(date_filter()),
        "codeRepositoryProjectName" => list(string_filter()),
        "lambdaFunctionLastModifiedAt" => list(date_filter()),
        "ecrImageArchitecture" => list(string_filter()),
        "vulnerabilityId" => list(string_filter()),
        "resourceType" => list(string_filter()),
        "findingArn" => list(string_filter()),
        "componentId" => list(string_filter()),
        "vulnerablePackages" => list(package_filter()),
        "firstObservedAt" => list(date_filter()),
        "lambdaFunctionLayers" => list(string_filter())
      }

  """
  @type filter_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sbom_export_response() :: %{
        "errorCode" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "filterCriteria" => resource_filter_criteria(),
        "format" => String.t() | atom(),
        "reportId" => String.t() | atom(),
        "s3Destination" => destination(),
        "status" => String.t() | atom()
      }

  """
  @type get_sbom_export_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time() :: %{
        "timeOfDay" => String.t() | atom(),
        "timezone" => String.t() | atom()
      }

  """
  @type time() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_cis_scan_configuration_request() :: %{
        required("scanConfigurationArn") => String.t() | atom()
      }

  """
  @type delete_cis_scan_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_delegated_admin_account_response() :: %{
        required("delegatedAdminAccountId") => String.t() | atom()
      }

  """
  @type disable_delegated_admin_account_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_configuration_request() :: %{}

  """
  @type get_configuration_request() :: %{}

  @typedoc """

  ## Example:

      cvss3() :: %{
        "baseScore" => float(),
        "scoringVector" => String.t() | atom()
      }

  """
  @type cvss3() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_cis_session_request() :: %{
        required("message") => start_cis_session_message(),
        required("scanJobId") => String.t() | atom()
      }

  """
  @type start_cis_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_vulnerabilities_filter_criteria() :: %{
        "vulnerabilityIds" => list(String.t() | atom())
      }

  """
  @type search_vulnerabilities_filter_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      member_account_ec2_deep_inspection_status() :: %{
        "accountId" => String.t() | atom(),
        "activateDeepInspection" => [boolean()]
      }

  """
  @type member_account_ec2_deep_inspection_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_member_ec2_deep_inspection_status_response() :: %{
        "accountIds" => list(member_account_ec2_deep_inspection_status_state()),
        "failedAccountIds" => list(failed_member_account_ec2_deep_inspection_status_state())
      }

  """
  @type batch_get_member_ec2_deep_inspection_status_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      ec2_metadata() :: %{
        "amiId" => String.t() | atom(),
        "platform" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type ec2_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_security_scan_configurations_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_code_security_scan_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      member_account_ec2_deep_inspection_status_state() :: %{
        "accountId" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type member_account_ec2_deep_inspection_status_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_findings_report_status_response() :: %{
        optional("destination") => destination(),
        optional("errorCode") => String.t() | atom(),
        optional("errorMessage") => String.t() | atom(),
        optional("filterCriteria") => filter_criteria(),
        optional("reportId") => String.t() | atom(),
        optional("status") => String.t() | atom()
      }

  """
  @type get_findings_report_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ec2_configuration() :: %{
        "scanMode" => String.t() | atom()
      }

  """
  @type ec2_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_state() :: %{
        "codeRepository" => state(),
        "ec2" => state(),
        "ecr" => state(),
        "lambda" => state(),
        "lambdaCode" => state()
      }

  """
  @type resource_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ec2_configuration_state() :: %{
        "scanModeState" => ec2_scan_mode_state()
      }

  """
  @type ec2_configuration_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_usage_totals_request() :: %{
        optional("accountIds") => list(String.t() | atom()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_usage_totals_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delegated_admin() :: %{
        "accountId" => String.t() | atom(),
        "relationshipStatus" => String.t() | atom()
      }

  """
  @type delegated_admin() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_scan_status_filter() :: %{
        "comparison" => list(any()),
        "value" => list(any())
      }

  """
  @type cis_scan_status_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_account_permissions_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("permissions") => list(permission())
      }

  """
  @type list_account_permissions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_findings_report_status_request() :: %{
        optional("reportId") => String.t() | atom()
      }

  """
  @type get_findings_report_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_findings_report_response() :: %{
        required("reportId") => String.t() | atom()
      }

  """
  @type cancel_findings_report_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_cis_targets() :: %{
        "accountIds" => list(String.t() | atom()),
        "targetResourceTags" => map()
      }

  """
  @type update_cis_targets() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      coverage_string_filter() :: %{
        "comparison" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type coverage_string_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_configuration_request() :: %{
        "resource" => list(),
        "scanConfigurationArn" => String.t() | atom()
      }

  """
  @type associate_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_findings_response() :: %{
        optional("findings") => list(finding()),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_findings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_response() :: %{
        optional("failedAccounts") => list(failed_account()),
        required("accounts") => list(account())
      }

  """
  @type disable_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ecr_configuration() :: %{
        "pullDateRescanDuration" => String.t() | atom(),
        "pullDateRescanMode" => String.t() | atom(),
        "rescanDuration" => String.t() | atom()
      }

  """
  @type ecr_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecs_metadata_details() :: %{
        "detailsGroup" => [String.t() | atom()],
        "taskDefinitionArn" => [String.t() | atom()]
      }

  """
  @type aws_ecs_metadata_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_target_resource_aggregation() :: %{
        "accountId" => String.t() | atom(),
        "platform" => [String.t() | atom()],
        "scanArn" => String.t() | atom(),
        "statusCounts" => status_counts(),
        "targetResourceId" => String.t() | atom(),
        "targetResourceTags" => map(),
        "targetStatus" => list(any()),
        "targetStatusReason" => list(any())
      }

  """
  @type cis_target_resource_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_filter_response() :: %{
        required("arn") => String.t() | atom()
      }

  """
  @type create_filter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_member_response() :: %{
        required("accountId") => String.t() | atom()
      }

  """
  @type associate_member_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_scan_results_aggregated_by_target_resource_filter_criteria() :: %{
        "accountIdFilters" => list(cis_string_filter()),
        "checkIdFilters" => list(cis_string_filter()),
        "failedChecksFilters" => list(cis_number_filter()),
        "platformFilters" => list(cis_string_filter()),
        "statusFilters" => list(cis_result_status_filter()),
        "targetResourceIdFilters" => list(cis_string_filter()),
        "targetResourceTagFilters" => list(tag_filter()),
        "targetStatusFilters" => list(cis_target_status_filter()),
        "targetStatusReasonFilters" => list(cis_target_status_reason_filter())
      }

  """
  @type cis_scan_results_aggregated_by_target_resource_filter_criteria() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      resource_status() :: %{
        "codeRepository" => String.t() | atom(),
        "ec2" => String.t() | atom(),
        "ecr" => String.t() | atom(),
        "lambda" => String.t() | atom(),
        "lambdaCode" => String.t() | atom()
      }

  """
  @type resource_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delegated_admin_account() :: %{
        "accountId" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type delegated_admin_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_scan_metadata() :: %{
        "codeRepository" => code_repository_metadata(),
        "ec2" => ec2_metadata(),
        "ecrImage" => ecr_container_image_metadata(),
        "ecrRepository" => ecr_repository_metadata(),
        "lambdaFunction" => lambda_function_metadata()
      }

  """
  @type resource_scan_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      monthly_schedule() :: %{
        "day" => list(any()),
        "startTime" => time()
      }

  """
  @type monthly_schedule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_member_request() :: %{
        required("accountId") => String.t() | atom()
      }

  """
  @type associate_member_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_git_hub_integration_detail() :: %{
        "code" => String.t() | atom(),
        "installationId" => String.t() | atom()
      }

  """
  @type update_git_hub_integration_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_cis_scan_configuration_request() :: %{
        optional("scanName") => String.t() | atom(),
        optional("schedule") => list(),
        optional("securityLevel") => list(any()),
        optional("targets") => update_cis_targets(),
        required("scanConfigurationArn") => String.t() | atom()
      }

  """
  @type update_cis_scan_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reset_encryption_key_request() :: %{
        required("resourceType") => String.t() | atom(),
        required("scanType") => String.t() | atom()
      }

  """
  @type reset_encryption_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_code_security_integration_response() :: %{
        "integrationArn" => String.t() | atom()
      }

  """
  @type delete_code_security_integration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_scan_configuration() :: %{
        "ownerId" => String.t() | atom(),
        "scanConfigurationArn" => String.t() | atom(),
        "scanName" => String.t() | atom(),
        "schedule" => list(),
        "securityLevel" => list(any()),
        "tags" => map(),
        "targets" => cis_targets()
      }

  """
  @type cis_scan_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_code_security_integration_request() :: %{
        optional("details") => list(),
        optional("tags") => map(),
        required("name") => String.t() | atom(),
        required("type") => list(any())
      }

  """
  @type create_code_security_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_code_security_scan_configuration_response() :: %{
        "scanConfigurationArn" => String.t() | atom()
      }

  """
  @type delete_code_security_scan_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_cis_scan_configurations_request() :: %{
        optional("filterCriteria") => list_cis_scan_configurations_filter_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }

  """
  @type list_cis_scan_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_free_trial_info_response() :: %{
        required("accounts") => list(free_trial_account_info()),
        required("failedAccounts") => list(free_trial_info_error())
      }

  """
  @type batch_get_free_trial_info_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      coverage_number_filter() :: %{
        "lowerInclusive" => [float()],
        "upperInclusive" => [float()]
      }

  """
  @type coverage_number_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_ec2_deep_inspection_configuration_response() :: %{
        "errorMessage" => String.t() | atom(),
        "orgPackagePaths" => list(String.t() | atom()),
        "packagePaths" => list(String.t() | atom()),
        "status" => String.t() | atom()
      }

  """
  @type update_ec2_deep_inspection_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      failed_member_account_ec2_deep_inspection_status_state() :: %{
        "accountId" => String.t() | atom(),
        "ec2ScanStatus" => String.t() | atom(),
        "errorMessage" => String.t() | atom()
      }

  """
  @type failed_member_account_ec2_deep_inspection_status_state() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      code_security_scan_configuration_association_summary() :: %{
        "resource" => list()
      }

  """
  @type code_security_scan_configuration_association_summary() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      title_aggregation_response() :: %{
        "accountId" => String.t() | atom(),
        "severityCounts" => severity_counts(),
        "title" => String.t() | atom(),
        "vulnerabilityId" => [String.t() | atom()]
      }

  """
  @type title_aggregation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      severity_counts() :: %{
        "all" => [float()],
        "critical" => [float()],
        "high" => [float()],
        "medium" => [float()]
      }

  """
  @type severity_counts() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_cis_scans_response() :: %{
        "nextToken" => String.t() | atom(),
        "scans" => list(cis_scan())
      }

  """
  @type list_cis_scans_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_type_aggregation_response() :: %{
        "accountId" => String.t() | atom(),
        "exploitAvailableCount" => [float()],
        "fixAvailableCount" => [float()],
        "severityCounts" => severity_counts()
      }

  """
  @type finding_type_aggregation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_findings_report_request() :: %{
        required("reportId") => String.t() | atom()
      }

  """
  @type cancel_findings_report_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage() :: %{
        "currency" => String.t() | atom(),
        "estimatedMonthlyCost" => float(),
        "total" => float(),
        "type" => String.t() | atom()
      }

  """
  @type usage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_cis_session_request() :: %{
        required("message") => stop_cis_session_message(),
        required("scanJobId") => String.t() | atom(),
        required("sessionToken") => String.t() | atom()
      }

  """
  @type stop_cis_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      failed_account() :: %{
        "accountId" => String.t() | atom(),
        "errorCode" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "resourceStatus" => resource_status(),
        "status" => String.t() | atom()
      }

  """
  @type failed_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ec2_instance_aggregation() :: %{
        "amis" => list(string_filter()),
        "instanceIds" => list(string_filter()),
        "instanceTags" => list(map_filter()),
        "operatingSystems" => list(string_filter()),
        "sortBy" => String.t() | atom(),
        "sortOrder" => String.t() | atom()
      }

  """
  @type ec2_instance_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cluster_for_image_filter_criteria() :: %{
        "resourceId" => [String.t() | atom()]
      }

  """
  @type cluster_for_image_filter_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_snippet_result() :: %{
        "codeSnippet" => list(code_line()),
        "endLine" => [integer()],
        "findingArn" => String.t() | atom(),
        "startLine" => [integer()],
        "suggestedFixes" => list(suggested_fix())
      }

  """
  @type code_snippet_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_sbom_export_request() :: %{
        required("reportId") => String.t() | atom()
      }

  """
  @type cancel_sbom_export_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_security_scan_configuration_associations_response() :: %{
        "associations" => list(code_security_scan_configuration_association_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_code_security_scan_configuration_associations_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_cis_scan_results_aggregated_by_checks_response() :: %{
        "checkAggregations" => list(cis_check_aggregation()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_cis_scan_results_aggregated_by_checks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_code_security_integration_request() :: %{
        required("integrationArn") => String.t() | atom()
      }

  """
  @type delete_code_security_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_target_status_reason_filter() :: %{
        "comparison" => list(any()),
        "value" => list(any())
      }

  """
  @type cis_target_status_reason_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      periodic_scan_configuration() :: %{
        "frequency" => list(any()),
        "frequencyExpression" => String.t() | atom()
      }

  """
  @type periodic_scan_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_filter_response() :: %{
        required("arn") => String.t() | atom()
      }

  """
  @type update_filter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_organization_configuration_response() :: %{
        optional("autoEnable") => auto_enable(),
        optional("maxAccountLimitReached") => [boolean()]
      }

  """
  @type describe_organization_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_encryption_key_request() :: %{
        required("kmsKeyId") => String.t() | atom(),
        required("resourceType") => String.t() | atom(),
        required("scanType") => String.t() | atom()
      }

  """
  @type update_encryption_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_encryption_key_response() :: %{}

  """
  @type update_encryption_key_response() :: %{}

  @typedoc """

  ## Example:

      create_cis_scan_configuration_response() :: %{
        "scanConfigurationArn" => String.t() | atom()
      }

  """
  @type create_cis_scan_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_finding_aggregations_response() :: %{
        optional("nextToken") => String.t() | atom(),
        optional("responses") => list(list()),
        required("aggregationType") => String.t() | atom()
      }

  """
  @type list_finding_aggregations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_cis_scan_results_aggregated_by_target_resource_response() :: %{
        "nextToken" => String.t() | atom(),
        "targetResourceAggregations" => list(cis_target_resource_aggregation())
      }

  """
  @type list_cis_scan_results_aggregated_by_target_resource_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_configuration_response() :: %{
        optional("ec2Configuration") => ec2_configuration_state(),
        optional("ecrConfiguration") => ecr_configuration_state()
      }

  """
  @type get_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lambda_function_aggregation() :: %{
        "functionNames" => list(string_filter()),
        "functionTags" => list(map_filter()),
        "resourceIds" => list(string_filter()),
        "runtimes" => list(string_filter()),
        "sortBy" => String.t() | atom(),
        "sortOrder" => String.t() | atom()
      }

  """
  @type lambda_function_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_filter_request() :: %{
        optional("description") => String.t() | atom(),
        optional("reason") => String.t() | atom(),
        optional("tags") => map(),
        required("action") => String.t() | atom(),
        required("filterCriteria") => filter_criteria(),
        required("name") => String.t() | atom()
      }

  """
  @type create_filter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      coverage_date_filter() :: %{
        "endInclusive" => non_neg_integer(),
        "startInclusive" => non_neg_integer()
      }

  """
  @type coverage_date_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_security_scan_configurations_response() :: %{
        "configurations" => list(code_security_scan_configuration_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_code_security_scan_configurations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_code_security_scan_response() :: %{
        "accountId" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "lastCommitId" => [String.t() | atom()],
        "resource" => list(),
        "scanId" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_code_security_scan_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      compute_platform() :: %{
        "product" => String.t() | atom(),
        "vendor" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type compute_platform() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_cis_session_health_request() :: %{
        required("scanJobId") => String.t() | atom(),
        required("sessionToken") => String.t() | atom()
      }

  """
  @type send_cis_session_health_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ecr_repository_metadata() :: %{
        "name" => [String.t() | atom()],
        "scanFrequency" => String.t() | atom()
      }

  """
  @type ecr_repository_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sbom_export_request() :: %{
        required("reportId") => String.t() | atom()
      }

  """
  @type get_sbom_export_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_delegated_admin_accounts_response() :: %{
        optional("delegatedAdminAccounts") => list(delegated_admin_account()),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_delegated_admin_accounts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_security_integrations_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_code_security_integrations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ecr_configuration_state() :: %{
        "rescanDurationState" => ecr_rescan_duration_state()
      }

  """
  @type ecr_configuration_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_filter_criteria() :: %{
        "accountId" => list(resource_string_filter()),
        "ec2InstanceTags" => list(resource_map_filter()),
        "ecrImageTags" => list(resource_string_filter()),
        "ecrRepositoryName" => list(resource_string_filter()),
        "lambdaFunctionName" => list(resource_string_filter()),
        "lambdaFunctionTags" => list(resource_map_filter()),
        "resourceId" => list(resource_string_filter()),
        "resourceType" => list(resource_string_filter())
      }

  """
  @type resource_filter_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_cis_targets() :: %{
        "accountIds" => list(String.t() | atom()),
        "targetResourceTags" => map()
      }

  """
  @type create_cis_targets() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_delegated_admin_account_response() :: %{
        required("delegatedAdminAccountId") => String.t() | atom()
      }

  """
  @type enable_delegated_admin_account_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_cis_scan_configuration_response() :: %{
        "scanConfigurationArn" => String.t() | atom()
      }

  """
  @type delete_cis_scan_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_line() :: %{
        "content" => [String.t() | atom()],
        "lineNumber" => [integer()]
      }

  """
  @type code_line() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation() :: %{
        "Url" => String.t() | atom(),
        "text" => String.t() | atom()
      }

  """
  @type recommendation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_cis_message_progress() :: %{
        "errorChecks" => integer(),
        "failedChecks" => integer(),
        "informationalChecks" => integer(),
        "notApplicableChecks" => integer(),
        "notEvaluatedChecks" => integer(),
        "successfulChecks" => integer(),
        "totalChecks" => integer(),
        "unknownChecks" => integer()
      }

  """
  @type stop_cis_message_progress() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cvss2() :: %{
        "baseScore" => float(),
        "scoringVector" => String.t() | atom()
      }

  """
  @type cvss2() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_check_aggregation() :: %{
        "accountId" => String.t() | atom(),
        "checkDescription" => [String.t() | atom()],
        "checkId" => [String.t() | atom()],
        "level" => list(any()),
        "platform" => [String.t() | atom()],
        "scanArn" => String.t() | atom(),
        "statusCounts" => status_counts(),
        "title" => [String.t() | atom()]
      }

  """
  @type cis_check_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_cis_session_message() :: %{
        "sessionToken" => String.t() | atom()
      }

  """
  @type start_cis_session_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_finding_details_request() :: %{
        required("findingArns") => list(String.t() | atom())
      }

  """
  @type batch_get_finding_details_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_snippet_error() :: %{
        "errorCode" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "findingArn" => String.t() | atom()
      }

  """
  @type code_snippet_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lambda_vpc_config() :: %{
        "securityGroupIds" => list(String.t() | atom()),
        "subnetIds" => list(String.t() | atom()),
        "vpcId" => String.t() | atom()
      }

  """
  @type lambda_vpc_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account() :: %{
        "accountId" => String.t() | atom(),
        "resourceStatus" => resource_status(),
        "status" => String.t() | atom()
      }

  """
  @type account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      atig_data() :: %{
        "firstSeen" => non_neg_integer(),
        "lastSeen" => non_neg_integer(),
        "targets" => list(String.t() | atom()),
        "ttps" => list(String.t() | atom())
      }

  """
  @type atig_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_security_scan_configuration_summary() :: %{
        "continuousIntegrationScanSupportedEvents" => list(list(any())()),
        "frequencyExpression" => String.t() | atom(),
        "name" => String.t() | atom(),
        "ownerAccountId" => String.t() | atom(),
        "periodicScanFrequency" => list(any()),
        "ruleSetCategories" => list(list(any())()),
        "scanConfigurationArn" => String.t() | atom(),
        "scopeSettings" => scope_settings(),
        "tags" => map()
      }

  """
  @type code_security_scan_configuration_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cluster_details() :: %{
        "clusterMetadata" => list(),
        "lastInUse" => [non_neg_integer()],
        "runningUnitCount" => [float()],
        "stoppedUnitCount" => [float()]
      }

  """
  @type cluster_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cvss_score_details() :: %{
        "adjustments" => list(cvss_score_adjustment()),
        "cvssSource" => String.t() | atom(),
        "score" => [float()],
        "scoreSource" => String.t() | atom(),
        "scoringVector" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type cvss_score_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_security_scan_configuration() :: %{
        "continuousIntegrationScanConfiguration" => continuous_integration_scan_configuration(),
        "periodicScanConfiguration" => periodic_scan_configuration(),
        "ruleSetCategories" => list(list(any())())
      }

  """
  @type code_security_scan_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_cis_session_response() :: %{}

  """
  @type stop_cis_session_response() :: %{}

  @typedoc """

  ## Example:

      inspector_score_details() :: %{
        "adjustedCvss" => cvss_score_details()
      }

  """
  @type inspector_score_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding() :: %{
        "awsAccountId" => String.t() | atom(),
        "codeVulnerabilityDetails" => code_vulnerability_details(),
        "description" => String.t() | atom(),
        "epss" => epss_details(),
        "exploitAvailable" => String.t() | atom(),
        "exploitabilityDetails" => exploitability_details(),
        "findingArn" => String.t() | atom(),
        "firstObservedAt" => non_neg_integer(),
        "fixAvailable" => String.t() | atom(),
        "inspectorScore" => [float()],
        "inspectorScoreDetails" => inspector_score_details(),
        "lastObservedAt" => non_neg_integer(),
        "networkReachabilityDetails" => network_reachability_details(),
        "packageVulnerabilityDetails" => package_vulnerability_details(),
        "remediation" => remediation(),
        "resources" => list(resource()),
        "severity" => String.t() | atom(),
        "status" => String.t() | atom(),
        "title" => String.t() | atom(),
        "type" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type finding() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      free_trial_info_error() :: %{
        "accountId" => String.t() | atom(),
        "code" => String.t() | atom(),
        "message" => [String.t() | atom()]
      }

  """
  @type free_trial_info_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vulnerable_package() :: %{
        "arch" => String.t() | atom(),
        "epoch" => integer(),
        "filePath" => String.t() | atom(),
        "fixedInVersion" => String.t() | atom(),
        "name" => String.t() | atom(),
        "packageManager" => String.t() | atom(),
        "release" => String.t() | atom(),
        "remediation" => String.t() | atom(),
        "sourceLambdaLayerArn" => String.t() | atom(),
        "sourceLayerHash" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type vulnerable_package() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      port_range_filter() :: %{
        "beginInclusive" => integer(),
        "endInclusive" => integer()
      }

  """
  @type port_range_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_type_aggregation() :: %{
        "findingType" => String.t() | atom(),
        "resourceType" => String.t() | atom(),
        "sortBy" => String.t() | atom(),
        "sortOrder" => String.t() | atom()
      }

  """
  @type finding_type_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_code_security_integration_response() :: %{
        "authorizationUrl" => String.t() | atom(),
        "createdOn" => [non_neg_integer()],
        "integrationArn" => String.t() | atom(),
        "lastUpdateOn" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "tags" => map(),
        "type" => list(any())
      }

  """
  @type get_code_security_integration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      date_filter() :: %{
        "endInclusive" => [non_neg_integer()],
        "startInclusive" => [non_neg_integer()]
      }

  """
  @type date_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_findings_request() :: %{
        optional("filterCriteria") => filter_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortCriteria") => sort_criteria()
      }

  """
  @type list_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cvss_score_adjustment() :: %{
        "metric" => String.t() | atom(),
        "reason" => String.t() | atom()
      }

  """
  @type cvss_score_adjustment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_usage_totals_response() :: %{
        optional("nextToken") => String.t() | atom(),
        optional("totals") => list(usage_total())
      }

  """
  @type list_usage_totals_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_code_security_scan_configuration_response() :: %{
        "scanConfigurationArn" => String.t() | atom()
      }

  """
  @type create_code_security_scan_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cisa_data() :: %{
        "action" => String.t() | atom(),
        "dateAdded" => non_neg_integer(),
        "dateDue" => non_neg_integer()
      }

  """
  @type cisa_data() :: %{(String.t() | atom()) => any()}

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

      resource_map_filter() :: %{
        "comparison" => String.t() | atom(),
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type resource_map_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_filter_response() :: %{
        required("arn") => String.t() | atom()
      }

  """
  @type delete_filter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      repository_aggregation_response() :: %{
        "accountId" => String.t() | atom(),
        "affectedImages" => [float()],
        "repository" => String.t() | atom(),
        "severityCounts" => severity_counts()
      }

  """
  @type repository_aggregation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lambda_function_aggregation_response() :: %{
        "accountId" => String.t() | atom(),
        "functionName" => [String.t() | atom()],
        "lambdaTags" => map(),
        "lastModifiedAt" => non_neg_integer(),
        "resourceId" => String.t() | atom(),
        "runtime" => [String.t() | atom()],
        "severityCounts" => severity_counts()
      }

  """
  @type lambda_function_aggregation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_coverage_response() :: %{
        optional("coveredResources") => list(covered_resource()),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_coverage_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_member_request() :: %{
        required("accountId") => String.t() | atom()
      }

  """
  @type get_member_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_organization_configuration_response() :: %{
        required("autoEnable") => auto_enable()
      }

  """
  @type update_organization_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_vulnerabilities_request() :: %{
        optional("nextToken") => String.t() | atom(),
        required("filterCriteria") => search_vulnerabilities_filter_criteria()
      }

  """
  @type search_vulnerabilities_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_cis_scan_configurations_filter_criteria() :: %{
        "scanConfigurationArnFilters" => list(cis_string_filter()),
        "scanNameFilters" => list(cis_string_filter()),
        "targetResourceTagFilters" => list(tag_filter())
      }

  """
  @type list_cis_scan_configurations_filter_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_delegated_admin_account_request() :: %{}

  """
  @type get_delegated_admin_account_request() :: %{}

  @typedoc """

  ## Example:

      start_code_security_scan_response() :: %{
        "scanId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type start_code_security_scan_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_security_level_filter() :: %{
        "comparison" => list(any()),
        "value" => list(any())
      }

  """
  @type cis_security_level_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      covered_resource() :: %{
        "accountId" => String.t() | atom(),
        "lastScannedAt" => non_neg_integer(),
        "resourceId" => String.t() | atom(),
        "resourceMetadata" => resource_scan_metadata(),
        "resourceType" => String.t() | atom(),
        "scanMode" => String.t() | atom(),
        "scanStatus" => scan_status(),
        "scanType" => String.t() | atom()
      }

  """
  @type covered_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cluster_information() :: %{
        "clusterArn" => [String.t() | atom()],
        "clusterDetails" => list(cluster_details())
      }

  """
  @type cluster_information() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_repository_aggregation() :: %{
        "projectNames" => list(string_filter()),
        "providerTypes" => list(string_filter()),
        "resourceIds" => list(string_filter()),
        "sortBy" => String.t() | atom(),
        "sortOrder" => String.t() | atom()
      }

  """
  @type code_repository_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "action" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "criteria" => filter_criteria(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "ownerId" => String.t() | atom(),
        "reason" => String.t() | atom(),
        "tags" => map(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sbom_export_response() :: %{
        "reportId" => String.t() | atom()
      }

  """
  @type create_sbom_export_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_cis_scan_configurations_response() :: %{
        "nextToken" => String.t() | atom(),
        "scanConfigurations" => list(cis_scan_configuration())
      }

  """
  @type list_cis_scan_configurations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_detail() :: %{
        "cisaData" => cisa_data(),
        "cwes" => list(String.t() | atom()),
        "epssScore" => [float()],
        "evidences" => list(evidence()),
        "exploitObserved" => exploit_observed(),
        "findingArn" => String.t() | atom(),
        "referenceUrls" => list(String.t() | atom()),
        "riskScore" => integer(),
        "tools" => list(String.t() | atom()),
        "ttps" => list(String.t() | atom())
      }

  """
  @type finding_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lambda_function_metadata() :: %{
        "functionName" => [String.t() | atom()],
        "functionTags" => map(),
        "layers" => list([String.t() | atom()]()),
        "runtime" => String.t() | atom()
      }

  """
  @type lambda_function_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_account_permissions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("service") => String.t() | atom()
      }

  """
  @type list_account_permissions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_session_message() :: %{
        "cisRuleDetails" => binary(),
        "ruleId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type cis_session_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_delegated_admin_accounts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_delegated_admin_accounts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_code_security_integration_request() :: %{
        required("details") => list(),
        required("integrationArn") => String.t() | atom()
      }

  """
  @type update_code_security_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ecr_rescan_duration_state() :: %{
        "pullDateRescanDuration" => String.t() | atom(),
        "pullDateRescanMode" => String.t() | atom(),
        "rescanDuration" => String.t() | atom(),
        "status" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type ecr_rescan_duration_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_number_filter() :: %{
        "lowerInclusive" => [integer()],
        "upperInclusive" => [integer()]
      }

  """
  @type cis_number_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_findings_report_request() :: %{
        optional("filterCriteria") => filter_criteria(),
        required("reportFormat") => String.t() | atom(),
        required("s3Destination") => destination()
      }

  """
  @type create_findings_report_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_configuration_response() :: %{}

  """
  @type update_configuration_response() :: %{}

  @typedoc """

  ## Example:

      get_code_security_scan_configuration_request() :: %{
        required("scanConfigurationArn") => String.t() | atom()
      }

  """
  @type get_code_security_scan_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ecr_container_image_metadata() :: %{
        "imagePulledAt" => non_neg_integer(),
        "inUseCount" => [float()],
        "lastInUseAt" => non_neg_integer(),
        "tags" => list([String.t() | atom()]())
      }

  """
  @type ecr_container_image_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_filter_request() :: %{
        optional("action") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("filterCriteria") => filter_criteria(),
        optional("name") => String.t() | atom(),
        optional("reason") => String.t() | atom(),
        required("filterArn") => String.t() | atom()
      }

  """
  @type update_filter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_aggregation_response() :: %{
        "accountId" => String.t() | atom(),
        "exploitAvailableCount" => [float()],
        "fixAvailableCount" => [float()],
        "severityCounts" => severity_counts()
      }

  """
  @type account_aggregation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_repository_metadata() :: %{
        "integrationArn" => String.t() | atom(),
        "lastScannedCommitId" => String.t() | atom(),
        "onDemandScan" => code_repository_on_demand_scan(),
        "projectName" => [String.t() | atom()],
        "providerType" => [String.t() | atom()],
        "providerTypeVisibility" => [String.t() | atom()],
        "scanConfiguration" => project_code_security_scan_configuration()
      }

  """
  @type code_repository_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_security_integrations_response() :: %{
        "integrations" => list(code_security_integration_summary()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_code_security_integrations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_cis_session_health_response() :: %{}

  """
  @type send_cis_session_health_response() :: %{}

  @typedoc """

  ## Example:

      batch_get_account_status_response() :: %{
        optional("failedAccounts") => list(failed_account()),
        required("accounts") => list(account_state())
      }

  """
  @type batch_get_account_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_free_trial_info_request() :: %{
        required("accountIds") => list(String.t() | atom())
      }

  """
  @type batch_get_free_trial_info_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_member_response() :: %{
        optional("member") => member()
      }

  """
  @type get_member_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      epss_details() :: %{
        "score" => float()
      }

  """
  @type epss_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      port_range() :: %{
        "begin" => integer(),
        "end" => integer()
      }

  """
  @type port_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_organization_configuration_request() :: %{
        required("autoEnable") => auto_enable()
      }

  """
  @type update_organization_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_response() :: %{
        optional("failedAccounts") => list(failed_account()),
        required("accounts") => list(account())
      }

  """
  @type enable_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_aggregation_response() :: %{
        "accountId" => String.t() | atom(),
        "packageName" => String.t() | atom(),
        "severityCounts" => severity_counts()
      }

  """
  @type package_aggregation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_cis_scans_request() :: %{
        optional("detailLevel") => list(any()),
        optional("filterCriteria") => list_cis_scans_filter_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }

  """
  @type list_cis_scans_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_layer_aggregation() :: %{
        "layerHashes" => list(string_filter()),
        "repositories" => list(string_filter()),
        "resourceIds" => list(string_filter()),
        "sortBy" => String.t() | atom(),
        "sortOrder" => String.t() | atom()
      }

  """
  @type image_layer_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_aggregation() :: %{
        "findingType" => String.t() | atom(),
        "resourceType" => String.t() | atom(),
        "sortBy" => String.t() | atom(),
        "sortOrder" => String.t() | atom()
      }

  """
  @type account_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lambda_layer_aggregation() :: %{
        "functionNames" => list(string_filter()),
        "layerArns" => list(string_filter()),
        "resourceIds" => list(string_filter()),
        "sortBy" => String.t() | atom(),
        "sortOrder" => String.t() | atom()
      }

  """
  @type lambda_layer_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_code_security_scan_configuration_request() :: %{
        required("configuration") => code_security_scan_configuration(),
        required("scanConfigurationArn") => String.t() | atom()
      }

  """
  @type update_code_security_scan_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_reachability_details() :: %{
        "networkPath" => network_path(),
        "openPortRange" => port_range(),
        "protocol" => String.t() | atom()
      }

  """
  @type network_reachability_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_code_snippet_request() :: %{
        required("findingArns") => list(String.t() | atom())
      }

  """
  @type batch_get_code_snippet_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_scan() :: %{
        "failedChecks" => [integer()],
        "scanArn" => String.t() | atom(),
        "scanConfigurationArn" => String.t() | atom(),
        "scanDate" => [non_neg_integer()],
        "scanName" => String.t() | atom(),
        "scheduledBy" => [String.t() | atom()],
        "securityLevel" => list(any()),
        "status" => list(any()),
        "targets" => cis_targets(),
        "totalChecks" => [integer()]
      }

  """
  @type cis_scan() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_cis_scan_configuration_request() :: %{
        optional("tags") => map(),
        required("scanName") => String.t() | atom(),
        required("schedule") => list(),
        required("securityLevel") => list(any()),
        required("targets") => create_cis_targets()
      }

  """
  @type create_cis_scan_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_details_error() :: %{
        "errorCode" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "findingArn" => String.t() | atom()
      }

  """
  @type finding_details_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_code_security_scan_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("resource") => list()
      }

  """
  @type start_code_security_scan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sort_criteria() :: %{
        "field" => String.t() | atom(),
        "sortOrder" => String.t() | atom()
      }

  """
  @type sort_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      weekly_schedule() :: %{
        "days" => list(list(any())()),
        "startTime" => time()
      }

  """
  @type weekly_schedule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_vulnerability_details() :: %{
        "cvss" => list(cvss_score()),
        "referenceUrls" => list(String.t() | atom()),
        "relatedVulnerabilities" => list(String.t() | atom()),
        "source" => String.t() | atom(),
        "sourceUrl" => String.t() | atom(),
        "vendorCreatedAt" => non_neg_integer(),
        "vendorSeverity" => String.t() | atom(),
        "vendorUpdatedAt" => non_neg_integer(),
        "vulnerabilityId" => String.t() | atom(),
        "vulnerablePackages" => list(vulnerable_package())
      }

  """
  @type package_vulnerability_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cvss_score() :: %{
        "baseScore" => [float()],
        "scoringVector" => String.t() | atom(),
        "source" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type cvss_score() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ec2_instance_details() :: %{
        "iamInstanceProfileArn" => String.t() | atom(),
        "imageId" => String.t() | atom(),
        "ipV4Addresses" => list(String.t() | atom()),
        "ipV6Addresses" => list(String.t() | atom()),
        "keyName" => String.t() | atom(),
        "launchedAt" => non_neg_integer(),
        "platform" => String.t() | atom(),
        "subnetId" => String.t() | atom(),
        "type" => String.t() | atom(),
        "vpcId" => String.t() | atom()
      }

  """
  @type aws_ec2_instance_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_code_security_scan_configuration_request() :: %{
        optional("scopeSettings") => scope_settings(),
        optional("tags") => map(),
        required("configuration") => code_security_scan_configuration(),
        required("level") => list(any()),
        required("name") => String.t() | atom()
      }

  """
  @type create_code_security_scan_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_member_ec2_deep_inspection_status_request() :: %{
        optional("accountIds") => list(String.t() | atom())
      }

  """
  @type batch_get_member_ec2_deep_inspection_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      epss() :: %{
        "score" => float()
      }

  """
  @type epss() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      exploit_observed() :: %{
        "firstSeen" => non_neg_integer(),
        "lastSeen" => non_neg_integer()
      }

  """
  @type exploit_observed() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_members_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("onlyAssociated") => [boolean()]
      }

  """
  @type list_members_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_members_response() :: %{
        optional("members") => list(member()),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_members_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_ec2_deep_inspection_configuration_response() :: %{
        "errorMessage" => String.t() | atom(),
        "orgPackagePaths" => list(String.t() | atom()),
        "packagePaths" => list(String.t() | atom()),
        "status" => String.t() | atom()
      }

  """
  @type get_ec2_deep_inspection_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_delegated_admin_account_request() :: %{
        required("delegatedAdminAccountId") => String.t() | atom()
      }

  """
  @type disable_delegated_admin_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_string_filter() :: %{
        "comparison" => list(any()),
        "value" => [String.t() | atom()]
      }

  """
  @type cis_string_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      project_continuous_integration_scan_configuration() :: %{
        "ruleSetCategories" => list(list(any())()),
        "supportedEvent" => list(any())
      }

  """
  @type project_continuous_integration_scan_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      free_trial_info() :: %{
        "end" => [non_neg_integer()],
        "start" => [non_neg_integer()],
        "status" => String.t() | atom(),
        "type" => String.t() | atom()
      }

  """
  @type free_trial_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_cis_session_response() :: %{}

  """
  @type start_cis_session_response() :: %{}

  @typedoc """

  ## Example:

      get_cis_scan_report_request() :: %{
        optional("reportFormat") => list(any()),
        optional("targetAccounts") => list(String.t() | atom()),
        required("scanArn") => String.t() | atom()
      }

  """
  @type get_cis_scan_report_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scope_settings() :: %{
        "projectSelectionScope" => list(any())
      }

  """
  @type scope_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_cis_scan_configuration_response() :: %{
        "scanConfigurationArn" => String.t() | atom()
      }

  """
  @type update_cis_scan_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fields" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      get_cis_scan_result_details_response() :: %{
        "nextToken" => String.t() | atom(),
        "scanResultDetails" => list(cis_scan_result_details())
      }

  """
  @type get_cis_scan_result_details_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_coverage_request() :: %{
        optional("filterCriteria") => coverage_filter_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_coverage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      destination() :: %{
        "bucketName" => [String.t() | atom()],
        "keyPrefix" => [String.t() | atom()],
        "kmsKeyArn" => [String.t() | atom()]
      }

  """
  @type destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_string_filter() :: %{
        "comparison" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type resource_string_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_coverage_statistics_response() :: %{
        optional("countsByGroup") => list(counts()),
        optional("nextToken") => String.t() | atom(),
        required("totalCounts") => [float()]
      }

  """
  @type list_coverage_statistics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_target_status_filter() :: %{
        "comparison" => list(any()),
        "value" => list(any())
      }

  """
  @type cis_target_status_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_coverage_statistics_request() :: %{
        optional("filterCriteria") => coverage_filter_criteria(),
        optional("groupBy") => String.t() | atom(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_coverage_statistics_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      daily_schedule() :: %{
        "startTime" => time()
      }

  """
  @type daily_schedule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_ec2_deep_inspection_configuration_request() :: %{}

  """
  @type get_ec2_deep_inspection_configuration_request() :: %{}

  @typedoc """

  ## Example:

      evidence() :: %{
        "evidenceDetail" => String.t() | atom(),
        "evidenceRule" => String.t() | atom(),
        "severity" => String.t() | atom()
      }

  """
  @type evidence() :: %{(String.t() | atom()) => any()}

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

      coverage_filter_criteria() :: %{
        "accountId" => list(coverage_string_filter()),
        "codeRepositoryProjectName" => list(coverage_string_filter()),
        "codeRepositoryProviderType" => list(coverage_string_filter()),
        "codeRepositoryProviderTypeVisibility" => list(coverage_string_filter()),
        "ec2InstanceTags" => list(coverage_map_filter()),
        "ecrImageInUseCount" => list(coverage_number_filter()),
        "ecrImageLastInUseAt" => list(coverage_date_filter()),
        "ecrImageTags" => list(coverage_string_filter()),
        "ecrRepositoryName" => list(coverage_string_filter()),
        "imagePulledAt" => list(coverage_date_filter()),
        "lambdaFunctionName" => list(coverage_string_filter()),
        "lambdaFunctionRuntime" => list(coverage_string_filter()),
        "lambdaFunctionTags" => list(coverage_map_filter()),
        "lastScannedAt" => list(coverage_date_filter()),
        "lastScannedCommitId" => list(coverage_string_filter()),
        "resourceId" => list(coverage_string_filter()),
        "resourceType" => list(coverage_string_filter()),
        "scanMode" => list(coverage_string_filter()),
        "scanStatusCode" => list(coverage_string_filter()),
        "scanStatusReason" => list(coverage_string_filter()),
        "scanType" => list(coverage_string_filter())
      }

  """
  @type coverage_filter_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_sbom_export_response() :: %{
        "reportId" => String.t() | atom()
      }

  """
  @type cancel_sbom_export_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_account_status_request() :: %{
        optional("accountIds") => list(String.t() | atom())
      }

  """
  @type batch_get_account_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_clusters_for_image_response() :: %{
        "cluster" => list(cluster_information()),
        "nextToken" => String.t() | atom()
      }

  """
  @type get_clusters_for_image_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_code_security_integration_response() :: %{
        "authorizationUrl" => String.t() | atom(),
        "integrationArn" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type create_code_security_integration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_cis_session_message() :: %{
        "benchmarkProfile" => String.t() | atom(),
        "benchmarkVersion" => String.t() | atom(),
        "computePlatform" => compute_platform(),
        "progress" => stop_cis_message_progress(),
        "reason" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type stop_cis_session_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ami_aggregation() :: %{
        "amis" => list(string_filter()),
        "sortBy" => String.t() | atom(),
        "sortOrder" => String.t() | atom()
      }

  """
  @type ami_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      member() :: %{
        "accountId" => String.t() | atom(),
        "delegatedAdminAccountId" => String.t() | atom(),
        "relationshipStatus" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type member() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      string_filter() :: %{
        "comparison" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type string_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_cis_scan_results_aggregated_by_checks_request() :: %{
        optional("filterCriteria") => cis_scan_results_aggregated_by_checks_filter_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        required("scanArn") => String.t() | atom()
      }

  """
  @type list_cis_scan_results_aggregated_by_checks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_security_scan_configuration_associations_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        required("scanConfigurationArn") => String.t() | atom()
      }

  """
  @type list_code_security_scan_configuration_associations_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      code_repository_aggregation_response() :: %{
        "accountId" => [String.t() | atom()],
        "exploitAvailableActiveFindingsCount" => [float()],
        "fixAvailableActiveFindingsCount" => [float()],
        "projectNames" => [String.t() | atom()],
        "providerType" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "severityCounts" => severity_counts()
      }

  """
  @type code_repository_aggregation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_code_security_scan_configuration_request() :: %{
        required("scanConfigurationArn") => String.t() | atom()
      }

  """
  @type delete_code_security_scan_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_aggregation() :: %{
        "packageNames" => list(string_filter()),
        "sortBy" => String.t() | atom(),
        "sortOrder" => String.t() | atom()
      }

  """
  @type package_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      status_counts() :: %{
        "failed" => [integer()],
        "passed" => [integer()],
        "skipped" => [integer()]
      }

  """
  @type status_counts() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_scan_results_aggregated_by_checks_filter_criteria() :: %{
        "accountIdFilters" => list(cis_string_filter()),
        "checkIdFilters" => list(cis_string_filter()),
        "failedResourcesFilters" => list(cis_number_filter()),
        "platformFilters" => list(cis_string_filter()),
        "securityLevelFilters" => list(cis_security_level_filter()),
        "titleFilters" => list(cis_string_filter())
      }

  """
  @type cis_scan_results_aggregated_by_checks_filter_criteria() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      scan_status() :: %{
        "reason" => String.t() | atom(),
        "statusCode" => String.t() | atom()
      }

  """
  @type scan_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_encryption_key_request() :: %{
        required("resourceType") => String.t() | atom(),
        required("scanType") => String.t() | atom()
      }

  """
  @type get_encryption_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_repository_on_demand_scan() :: %{
        "lastScanAt" => non_neg_integer(),
        "lastScannedCommitId" => String.t() | atom(),
        "scanStatus" => scan_status()
      }

  """
  @type code_repository_on_demand_scan() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      failed_association_result() :: %{
        "resource" => list(),
        "scanConfigurationArn" => String.t() | atom(),
        "statusCode" => list(any()),
        "statusMessage" => String.t() | atom()
      }

  """
  @type failed_association_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_result_status_filter() :: %{
        "comparison" => list(any()),
        "value" => list(any())
      }

  """
  @type cis_result_status_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_finding_aggregations_request() :: %{
        optional("accountIds") => list(string_filter()),
        optional("aggregationRequest") => list(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("aggregationType") => String.t() | atom()
      }

  """
  @type list_finding_aggregations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      one_time_schedule() :: %{}

  """
  @type one_time_schedule() :: %{}

  @typedoc """

  ## Example:

      get_code_security_scan_configuration_response() :: %{
        "configuration" => code_security_scan_configuration(),
        "createdAt" => [non_neg_integer()],
        "lastUpdatedAt" => [non_neg_integer()],
        "level" => list(any()),
        "name" => String.t() | atom(),
        "scanConfigurationArn" => String.t() | atom(),
        "scopeSettings" => scope_settings(),
        "tags" => map()
      }

  """
  @type get_code_security_scan_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type bad_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ec2_instance_aggregation_response() :: %{
        "accountId" => [String.t() | atom()],
        "ami" => String.t() | atom(),
        "instanceId" => String.t() | atom(),
        "instanceTags" => map(),
        "networkFindings" => [float()],
        "operatingSystem" => [String.t() | atom()],
        "severityCounts" => severity_counts()
      }

  """
  @type ec2_instance_aggregation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_associate_code_security_scan_configuration_request() :: %{
        required("associateConfigurationRequests") => list(associate_configuration_request())
      }

  """
  @type batch_associate_code_security_scan_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_cis_scan_results_aggregated_by_target_resource_request() :: %{
        optional("filterCriteria") => cis_scan_results_aggregated_by_target_resource_filter_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        required("scanArn") => String.t() | atom()
      }

  """
  @type list_cis_scan_results_aggregated_by_target_resource_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      batch_disassociate_code_security_scan_configuration_response() :: %{
        "failedAssociations" => list(failed_association_result()),
        "successfulAssociations" => list(successful_association_result())
      }

  """
  @type batch_disassociate_code_security_scan_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      aws_ecr_container_aggregation() :: %{
        "architectures" => list(string_filter()),
        "imageShas" => list(string_filter()),
        "imageTags" => list(string_filter()),
        "inUseCount" => list(number_filter()),
        "lastInUseAt" => list(date_filter()),
        "repositories" => list(string_filter()),
        "resourceIds" => list(string_filter()),
        "sortBy" => String.t() | atom(),
        "sortOrder" => String.t() | atom()
      }

  """
  @type aws_ecr_container_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_filter() :: %{
        "comparison" => list(any()),
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type tag_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_code_snippet_response() :: %{
        "codeSnippetResults" => list(code_snippet_result()),
        "errors" => list(code_snippet_error())
      }

  """
  @type batch_get_code_snippet_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_filter() :: %{
        "architecture" => string_filter(),
        "epoch" => number_filter(),
        "filePath" => string_filter(),
        "name" => string_filter(),
        "release" => string_filter(),
        "sourceLambdaLayerArn" => string_filter(),
        "sourceLayerHash" => string_filter(),
        "version" => string_filter()
      }

  """
  @type package_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      step() :: %{
        "componentArn" => String.t() | atom(),
        "componentId" => String.t() | atom(),
        "componentType" => String.t() | atom()
      }

  """
  @type step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      exploitability_details() :: %{
        "lastKnownExploitAt" => non_neg_integer()
      }

  """
  @type exploitability_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_details() :: %{
        "awsEc2Instance" => aws_ec2_instance_details(),
        "awsEcrContainerImage" => aws_ecr_container_image_details(),
        "awsLambdaFunction" => aws_lambda_function_details(),
        "codeRepository" => code_repository_details()
      }

  """
  @type resource_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_member_ec2_deep_inspection_status_request() :: %{
        required("accountIds") => list(member_account_ec2_deep_inspection_status())
      }

  """
  @type batch_update_member_ec2_deep_inspection_status_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      send_cis_session_telemetry_response() :: %{}

  """
  @type send_cis_session_telemetry_response() :: %{}

  @typedoc """

  ## Example:

      batch_update_member_ec2_deep_inspection_status_response() :: %{
        "accountIds" => list(member_account_ec2_deep_inspection_status_state()),
        "failedAccountIds" => list(failed_member_account_ec2_deep_inspection_status_state())
      }

  """
  @type batch_update_member_ec2_deep_inspection_status_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      auto_enable() :: %{
        "codeRepository" => [boolean()],
        "ec2" => [boolean()],
        "ecr" => [boolean()],
        "lambda" => [boolean()],
        "lambdaCode" => [boolean()]
      }

  """
  @type auto_enable() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_scan_result_details() :: %{
        "accountId" => String.t() | atom(),
        "checkDescription" => [String.t() | atom()],
        "checkId" => [String.t() | atom()],
        "findingArn" => String.t() | atom(),
        "level" => list(any()),
        "platform" => [String.t() | atom()],
        "remediation" => [String.t() | atom()],
        "scanArn" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "targetResourceId" => String.t() | atom(),
        "title" => [String.t() | atom()]
      }

  """
  @type cis_scan_result_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_repository_details() :: %{
        "integrationArn" => String.t() | atom(),
        "projectName" => String.t() | atom(),
        "providerType" => String.t() | atom()
      }

  """
  @type code_repository_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_cis_scan_report_response() :: %{
        "status" => list(any()),
        "url" => [String.t() | atom()]
      }

  """
  @type get_cis_scan_report_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_clusters_for_image_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        required("filter") => cluster_for_image_filter_criteria()
      }

  """
  @type get_clusters_for_image_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_cis_session_telemetry_request() :: %{
        required("messages") => list(cis_session_message()),
        required("scanJobId") => String.t() | atom(),
        required("sessionToken") => String.t() | atom()
      }

  """
  @type send_cis_session_telemetry_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_delegated_admin_account_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("delegatedAdminAccountId") => String.t() | atom()
      }

  """
  @type enable_delegated_admin_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_layer_aggregation_response() :: %{
        "accountId" => String.t() | atom(),
        "layerHash" => String.t() | atom(),
        "repository" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "severityCounts" => severity_counts()
      }

  """
  @type image_layer_aggregation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lambda_layer_aggregation_response() :: %{
        "accountId" => String.t() | atom(),
        "functionName" => String.t() | atom(),
        "layerArn" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "severityCounts" => severity_counts()
      }

  """
  @type lambda_layer_aggregation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_code_security_integration_response() :: %{
        "integrationArn" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type update_code_security_integration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecr_container_image_details() :: %{
        "architecture" => String.t() | atom(),
        "author" => [String.t() | atom()],
        "imageHash" => String.t() | atom(),
        "imageTags" => list(String.t() | atom()),
        "inUseCount" => [float()],
        "lastInUseAt" => non_neg_integer(),
        "platform" => String.t() | atom(),
        "pushedAt" => non_neg_integer(),
        "registry" => String.t() | atom(),
        "repositoryName" => String.t() | atom()
      }

  """
  @type aws_ecr_container_image_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_member_response() :: %{
        required("accountId") => String.t() | atom()
      }

  """
  @type disassociate_member_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_code_security_scan_configuration_response() :: %{
        "scanConfigurationArn" => String.t() | atom()
      }

  """
  @type update_code_security_scan_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      title_aggregation() :: %{
        "findingType" => String.t() | atom(),
        "resourceType" => String.t() | atom(),
        "sortBy" => String.t() | atom(),
        "sortOrder" => String.t() | atom(),
        "titles" => list(string_filter()),
        "vulnerabilityIds" => list(string_filter())
      }

  """
  @type title_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_org_ec2_deep_inspection_configuration_response() :: %{}

  """
  @type update_org_ec2_deep_inspection_configuration_response() :: %{}

  @typedoc """

  ## Example:

      aws_eks_metadata_details() :: %{
        "namespace" => [String.t() | atom()],
        "workloadInfoList" => list(aws_eks_workload_info())
      }

  """
  @type aws_eks_metadata_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_cis_scan_result_details_request() :: %{
        optional("filterCriteria") => cis_scan_result_details_filter_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        required("accountId") => String.t() | atom(),
        required("scanArn") => String.t() | atom(),
        required("targetResourceId") => String.t() | atom()
      }

  """
  @type get_cis_scan_result_details_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reset_encryption_key_response() :: %{}

  """
  @type reset_encryption_key_response() :: %{}

  @typedoc """

  ## Example:

      aws_lambda_function_details() :: %{
        "architectures" => list(String.t() | atom()),
        "codeSha256" => String.t() | atom(),
        "executionRoleArn" => String.t() | atom(),
        "functionName" => String.t() | atom(),
        "lastModifiedAt" => [non_neg_integer()],
        "layers" => list(String.t() | atom()),
        "packageType" => String.t() | atom(),
        "runtime" => String.t() | atom(),
        "version" => String.t() | atom(),
        "vpcConfig" => lambda_vpc_config()
      }

  """
  @type aws_lambda_function_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ec2_scan_mode_state() :: %{
        "scanMode" => String.t() | atom(),
        "scanModeStatus" => String.t() | atom()
      }

  """
  @type ec2_scan_mode_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cis_date_filter() :: %{
        "earliestScanStartTime" => [non_neg_integer()],
        "latestScanStartTime" => [non_neg_integer()]
      }

  """
  @type cis_date_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_associate_code_security_scan_configuration_response() :: %{
        "failedAssociations" => list(failed_association_result()),
        "successfulAssociations" => list(successful_association_result())
      }

  """
  @type batch_associate_code_security_scan_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      cis_scan_result_details_filter_criteria() :: %{
        "checkIdFilters" => list(cis_string_filter()),
        "findingArnFilters" => list(cis_string_filter()),
        "findingStatusFilters" => list(cis_finding_status_filter()),
        "securityLevelFilters" => list(cis_security_level_filter()),
        "titleFilters" => list(cis_string_filter())
      }

  """
  @type cis_scan_result_details_filter_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_filters_response() :: %{
        optional("nextToken") => String.t() | atom(),
        required("filters") => list(filter())
      }

  """
  @type list_filters_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_eks_workload_info() :: %{
        "name" => [String.t() | atom()],
        "type" => [String.t() | atom()]
      }

  """
  @type aws_eks_workload_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      permission() :: %{
        "operation" => String.t() | atom(),
        "service" => String.t() | atom()
      }

  """
  @type permission() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_configuration_request() :: %{
        "resource" => list(),
        "scanConfigurationArn" => String.t() | atom()
      }

  """
  @type disassociate_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_vulnerabilities_response() :: %{
        "nextToken" => String.t() | atom(),
        "vulnerabilities" => list(vulnerability())
      }

  """
  @type search_vulnerabilities_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      free_trial_account_info() :: %{
        "accountId" => String.t() | atom(),
        "freeTrialInfo" => list(free_trial_info())
      }

  """
  @type free_trial_account_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_org_ec2_deep_inspection_configuration_request() :: %{
        required("orgPackagePaths") => list(String.t() | atom())
      }

  """
  @type update_org_ec2_deep_inspection_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      delete_filter_request() :: %{
        required("arn") => String.t() | atom()
      }

  """
  @type delete_filter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_ecr_container_aggregation_response() :: %{
        "accountId" => String.t() | atom(),
        "architecture" => [String.t() | atom()],
        "imageSha" => [String.t() | atom()],
        "imageTags" => list(String.t() | atom()),
        "inUseCount" => [float()],
        "lastInUseAt" => non_neg_integer(),
        "repository" => [String.t() | atom()],
        "resourceId" => String.t() | atom(),
        "severityCounts" => severity_counts()
      }

  """
  @type aws_ecr_container_aggregation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_state() :: %{
        "accountId" => String.t() | atom(),
        "resourceState" => resource_state(),
        "state" => state()
      }

  """
  @type account_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      number_filter() :: %{
        "lowerInclusive" => [float()],
        "upperInclusive" => [float()]
      }

  """
  @type number_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_cis_scans_filter_criteria() :: %{
        "failedChecksFilters" => list(cis_number_filter()),
        "scanArnFilters" => list(cis_string_filter()),
        "scanAtFilters" => list(cis_date_filter()),
        "scanConfigurationArnFilters" => list(cis_string_filter()),
        "scanNameFilters" => list(cis_string_filter()),
        "scanStatusFilters" => list(cis_scan_status_filter()),
        "scheduledByFilters" => list(cis_string_filter()),
        "targetAccountIdFilters" => list(cis_string_filter()),
        "targetResourceIdFilters" => list(cis_string_filter()),
        "targetResourceTagFilters" => list(tag_filter())
      }

  """
  @type list_cis_scans_filter_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      map_filter() :: %{
        "comparison" => String.t() | atom(),
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type map_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_filters_request() :: %{
        optional("action") => String.t() | atom(),
        optional("arns") => list(String.t() | atom()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_filters_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      project_periodic_scan_configuration() :: %{
        "frequencyExpression" => String.t() | atom(),
        "ruleSetCategories" => list(list(any())())
      }

  """
  @type project_periodic_scan_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_finding_details_response() :: %{
        "errors" => list(finding_details_error()),
        "findingDetails" => list(finding_detail())
      }

  """
  @type batch_get_finding_details_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "details" => resource_details(),
        "id" => String.t() | atom(),
        "partition" => String.t() | atom(),
        "region" => String.t() | atom(),
        "tags" => map(),
        "type" => String.t() | atom()
      }

  """
  @type resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      successful_association_result() :: %{
        "resource" => list(),
        "scanConfigurationArn" => String.t() | atom()
      }

  """
  @type successful_association_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ami_aggregation_response() :: %{
        "accountId" => String.t() | atom(),
        "affectedInstances" => [float()],
        "ami" => String.t() | atom(),
        "severityCounts" => severity_counts()
      }

  """
  @type ami_aggregation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_member_request() :: %{
        required("accountId") => String.t() | atom()
      }

  """
  @type disassociate_member_request() :: %{(String.t() | atom()) => any()}

  @type associate_member_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type batch_associate_code_security_scan_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_disassociate_code_security_scan_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_get_account_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_get_code_snippet_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type batch_get_finding_details_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type batch_get_free_trial_info_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type batch_get_member_ec2_deep_inspection_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type batch_update_member_ec2_deep_inspection_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type cancel_findings_report_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_sbom_export_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_cis_scan_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type create_code_security_integration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_code_security_scan_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_filter_errors() ::
          bad_request_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type create_findings_report_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_sbom_export_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_cis_scan_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_code_security_integration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_code_security_scan_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_organization_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type disable_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disable_delegated_admin_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_member_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type enable_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type enable_delegated_admin_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_cis_scan_report_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_cis_scan_result_details_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_clusters_for_image_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_code_security_integration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_code_security_scan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_code_security_scan_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_configuration_errors() ::
          throttling_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_delegated_admin_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_ec2_deep_inspection_configuration_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_encryption_key_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_findings_report_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_member_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sbom_export_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_account_permissions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_cis_scan_configurations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_cis_scan_results_aggregated_by_checks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_cis_scan_results_aggregated_by_target_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_cis_scans_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_code_security_integrations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_code_security_scan_configuration_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_code_security_scan_configurations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_coverage_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type list_coverage_statistics_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type list_delegated_admin_accounts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_filters_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_finding_aggregations_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type list_findings_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type list_members_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_usage_totals_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type reset_encryption_key_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type search_vulnerabilities_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type send_cis_session_health_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type send_cis_session_telemetry_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type start_cis_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type start_code_security_scan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_cis_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_cis_scan_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_code_security_integration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_code_security_scan_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_ec2_deep_inspection_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_encryption_key_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_filter_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_org_ec2_deep_inspection_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_organization_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2020-06-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "inspector2",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Inspector2",
      signature_version: "v4",
      signing_name: "inspector2",
      target_prefix: nil
    }
  end

  @doc """
  Associates an Amazon Web Services account with an Amazon Inspector delegated
  administrator.

  An HTTP 200 response
  indicates the association was successfully started, but doesn’t indicate whether
  it was
  completed. You can check if the association completed by using
  [ListMembers](https://docs.aws.amazon.com/inspector/v2/APIReference/API_ListMembers.html) for multiple
  accounts or
  [GetMembers](https://docs.aws.amazon.com/inspector/v2/APIReference/API_GetMember.html)
  for a single account.
  """
  @spec associate_member(map(), associate_member_request(), list()) ::
          {:ok, associate_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_member_errors()}
  def associate_member(%Client{} = client, input, options \\ []) do
    url_path = "/members/associate"
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
  Associates multiple code repositories with an Amazon Inspector code security
  scan
  configuration.
  """
  @spec batch_associate_code_security_scan_configuration(
          map(),
          batch_associate_code_security_scan_configuration_request(),
          list()
        ) ::
          {:ok, batch_associate_code_security_scan_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_associate_code_security_scan_configuration_errors()}
  def batch_associate_code_security_scan_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/codesecurity/scan-configuration/batch/associate"
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
  Disassociates multiple code repositories from an Amazon Inspector code security
  scan
  configuration.
  """
  @spec batch_disassociate_code_security_scan_configuration(
          map(),
          batch_disassociate_code_security_scan_configuration_request(),
          list()
        ) ::
          {:ok, batch_disassociate_code_security_scan_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_disassociate_code_security_scan_configuration_errors()}
  def batch_disassociate_code_security_scan_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    url_path = "/codesecurity/scan-configuration/batch/disassociate"
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
  Retrieves the Amazon Inspector status of multiple Amazon Web Services accounts
  within your environment.
  """
  @spec batch_get_account_status(map(), batch_get_account_status_request(), list()) ::
          {:ok, batch_get_account_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_account_status_errors()}
  def batch_get_account_status(%Client{} = client, input, options \\ []) do
    url_path = "/status/batch/get"
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
  Retrieves code snippets from findings that Amazon Inspector detected code
  vulnerabilities
  in.
  """
  @spec batch_get_code_snippet(map(), batch_get_code_snippet_request(), list()) ::
          {:ok, batch_get_code_snippet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_code_snippet_errors()}
  def batch_get_code_snippet(%Client{} = client, input, options \\ []) do
    url_path = "/codesnippet/batchget"
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
  Gets vulnerability details for findings.
  """
  @spec batch_get_finding_details(map(), batch_get_finding_details_request(), list()) ::
          {:ok, batch_get_finding_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_finding_details_errors()}
  def batch_get_finding_details(%Client{} = client, input, options \\ []) do
    url_path = "/findings/details/batch/get"
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
  Gets free trial status for multiple Amazon Web Services accounts.
  """
  @spec batch_get_free_trial_info(map(), batch_get_free_trial_info_request(), list()) ::
          {:ok, batch_get_free_trial_info_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_free_trial_info_errors()}
  def batch_get_free_trial_info(%Client{} = client, input, options \\ []) do
    url_path = "/freetrialinfo/batchget"
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
  Retrieves Amazon Inspector deep inspection activation status of multiple member
  accounts within
  your organization.

  You must be the delegated administrator of an organization in Amazon Inspector
  to
  use this API.
  """
  @spec batch_get_member_ec2_deep_inspection_status(
          map(),
          batch_get_member_ec2_deep_inspection_status_request(),
          list()
        ) ::
          {:ok, batch_get_member_ec2_deep_inspection_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_member_ec2_deep_inspection_status_errors()}
  def batch_get_member_ec2_deep_inspection_status(%Client{} = client, input, options \\ []) do
    url_path = "/ec2deepinspectionstatus/member/batch/get"
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
  Activates or deactivates Amazon Inspector deep inspection for the provided
  member accounts in your
  organization.

  You must be the delegated administrator of an organization in Amazon Inspector
  to use
  this API.
  """
  @spec batch_update_member_ec2_deep_inspection_status(
          map(),
          batch_update_member_ec2_deep_inspection_status_request(),
          list()
        ) ::
          {:ok, batch_update_member_ec2_deep_inspection_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_update_member_ec2_deep_inspection_status_errors()}
  def batch_update_member_ec2_deep_inspection_status(%Client{} = client, input, options \\ []) do
    url_path = "/ec2deepinspectionstatus/member/batch/update"
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
  Cancels the given findings report.
  """
  @spec cancel_findings_report(map(), cancel_findings_report_request(), list()) ::
          {:ok, cancel_findings_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_findings_report_errors()}
  def cancel_findings_report(%Client{} = client, input, options \\ []) do
    url_path = "/reporting/cancel"
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
  Cancels a software bill of materials (SBOM) report.
  """
  @spec cancel_sbom_export(map(), cancel_sbom_export_request(), list()) ::
          {:ok, cancel_sbom_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_sbom_export_errors()}
  def cancel_sbom_export(%Client{} = client, input, options \\ []) do
    url_path = "/sbomexport/cancel"
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
  Creates a CIS scan configuration.
  """
  @spec create_cis_scan_configuration(map(), create_cis_scan_configuration_request(), list()) ::
          {:ok, create_cis_scan_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cis_scan_configuration_errors()}
  def create_cis_scan_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/cis/scan-configuration/create"
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
  Creates a code security integration with a source code repository provider.

  After calling the `CreateCodeSecurityIntegration` operation, you complete
  authentication and authorization with your provider. Next you call the
  `UpdateCodeSecurityIntegration` operation to provide the `details`
  to complete the integration setup
  """
  @spec create_code_security_integration(
          map(),
          create_code_security_integration_request(),
          list()
        ) ::
          {:ok, create_code_security_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_code_security_integration_errors()}
  def create_code_security_integration(%Client{} = client, input, options \\ []) do
    url_path = "/codesecurity/integration/create"
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
  Creates a scan configuration for code security scanning.
  """
  @spec create_code_security_scan_configuration(
          map(),
          create_code_security_scan_configuration_request(),
          list()
        ) ::
          {:ok, create_code_security_scan_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_code_security_scan_configuration_errors()}
  def create_code_security_scan_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/codesecurity/scan-configuration/create"
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
  Creates a filter resource using specified filter criteria.

  When the filter action is set
  to `SUPPRESS` this action creates a suppression rule.
  """
  @spec create_filter(map(), create_filter_request(), list()) ::
          {:ok, create_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_filter_errors()}
  def create_filter(%Client{} = client, input, options \\ []) do
    url_path = "/filters/create"
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
  Creates a finding report.

  By default only `ACTIVE` findings are returned in
  the report. To see `SUPRESSED` or `CLOSED` findings you must specify
  a value for the `findingStatus` filter criteria.
  """
  @spec create_findings_report(map(), create_findings_report_request(), list()) ::
          {:ok, create_findings_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_findings_report_errors()}
  def create_findings_report(%Client{} = client, input, options \\ []) do
    url_path = "/reporting/create"
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
  Creates a software bill of materials (SBOM) report.
  """
  @spec create_sbom_export(map(), create_sbom_export_request(), list()) ::
          {:ok, create_sbom_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_sbom_export_errors()}
  def create_sbom_export(%Client{} = client, input, options \\ []) do
    url_path = "/sbomexport/create"
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
  Deletes a CIS scan configuration.
  """
  @spec delete_cis_scan_configuration(map(), delete_cis_scan_configuration_request(), list()) ::
          {:ok, delete_cis_scan_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cis_scan_configuration_errors()}
  def delete_cis_scan_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/cis/scan-configuration/delete"
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
  Deletes a code security integration.
  """
  @spec delete_code_security_integration(
          map(),
          delete_code_security_integration_request(),
          list()
        ) ::
          {:ok, delete_code_security_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_code_security_integration_errors()}
  def delete_code_security_integration(%Client{} = client, input, options \\ []) do
    url_path = "/codesecurity/integration/delete"
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
  Deletes a code security scan configuration.
  """
  @spec delete_code_security_scan_configuration(
          map(),
          delete_code_security_scan_configuration_request(),
          list()
        ) ::
          {:ok, delete_code_security_scan_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_code_security_scan_configuration_errors()}
  def delete_code_security_scan_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/codesecurity/scan-configuration/delete"
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
  Deletes a filter resource.
  """
  @spec delete_filter(map(), delete_filter_request(), list()) ::
          {:ok, delete_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_filter_errors()}
  def delete_filter(%Client{} = client, input, options \\ []) do
    url_path = "/filters/delete"
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
  Describe Amazon Inspector configuration settings for an Amazon Web Services
  organization.
  """
  @spec describe_organization_configuration(
          map(),
          describe_organization_configuration_request(),
          list()
        ) ::
          {:ok, describe_organization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_organization_configuration_errors()}
  def describe_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/organizationconfiguration/describe"
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
  Disables Amazon Inspector scans for one or more Amazon Web Services accounts.

  Disabling all scan types in an
  account disables the Amazon Inspector service.
  """
  @spec disable(map(), disable_request(), list()) ::
          {:ok, disable_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_errors()}
  def disable(%Client{} = client, input, options \\ []) do
    url_path = "/disable"
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
  Disables the Amazon Inspector delegated administrator for your organization.
  """
  @spec disable_delegated_admin_account(map(), disable_delegated_admin_account_request(), list()) ::
          {:ok, disable_delegated_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_delegated_admin_account_errors()}
  def disable_delegated_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/delegatedadminaccounts/disable"
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
  Disassociates a member account from an Amazon Inspector delegated administrator.
  """
  @spec disassociate_member(map(), disassociate_member_request(), list()) ::
          {:ok, disassociate_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_member_errors()}
  def disassociate_member(%Client{} = client, input, options \\ []) do
    url_path = "/members/disassociate"
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
  Enables Amazon Inspector scans for one or more Amazon Web Services accounts.
  """
  @spec enable(map(), enable_request(), list()) ::
          {:ok, enable_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_errors()}
  def enable(%Client{} = client, input, options \\ []) do
    url_path = "/enable"
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
  Enables the Amazon Inspector delegated administrator for your Organizations
  organization.
  """
  @spec enable_delegated_admin_account(map(), enable_delegated_admin_account_request(), list()) ::
          {:ok, enable_delegated_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_delegated_admin_account_errors()}
  def enable_delegated_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/delegatedadminaccounts/enable"
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
  Retrieves a CIS scan report.
  """
  @spec get_cis_scan_report(map(), get_cis_scan_report_request(), list()) ::
          {:ok, get_cis_scan_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cis_scan_report_errors()}
  def get_cis_scan_report(%Client{} = client, input, options \\ []) do
    url_path = "/cis/scan/report/get"
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
  Retrieves CIS scan result details.
  """
  @spec get_cis_scan_result_details(map(), get_cis_scan_result_details_request(), list()) ::
          {:ok, get_cis_scan_result_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cis_scan_result_details_errors()}
  def get_cis_scan_result_details(%Client{} = client, input, options \\ []) do
    url_path = "/cis/scan-result/details/get"
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
  Returns a list of clusters and metadata associated with an image.
  """
  @spec get_clusters_for_image(map(), get_clusters_for_image_request(), list()) ::
          {:ok, get_clusters_for_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_clusters_for_image_errors()}
  def get_clusters_for_image(%Client{} = client, input, options \\ []) do
    url_path = "/cluster/get"
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
  Retrieves information about a code security integration.
  """
  @spec get_code_security_integration(map(), get_code_security_integration_request(), list()) ::
          {:ok, get_code_security_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_code_security_integration_errors()}
  def get_code_security_integration(%Client{} = client, input, options \\ []) do
    url_path = "/codesecurity/integration/get"
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
  Retrieves information about a specific code security scan.
  """
  @spec get_code_security_scan(map(), get_code_security_scan_request(), list()) ::
          {:ok, get_code_security_scan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_code_security_scan_errors()}
  def get_code_security_scan(%Client{} = client, input, options \\ []) do
    url_path = "/codesecurity/scan/get"
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
  Retrieves information about a code security scan configuration.
  """
  @spec get_code_security_scan_configuration(
          map(),
          get_code_security_scan_configuration_request(),
          list()
        ) ::
          {:ok, get_code_security_scan_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_code_security_scan_configuration_errors()}
  def get_code_security_scan_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/codesecurity/scan-configuration/get"
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
  Retrieves setting configurations for Inspector scans.
  """
  @spec get_configuration(map(), get_configuration_request(), list()) ::
          {:ok, get_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_configuration_errors()}
  def get_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configuration/get"
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
  Retrieves information about the Amazon Inspector delegated administrator for
  your
  organization.
  """
  @spec get_delegated_admin_account(map(), get_delegated_admin_account_request(), list()) ::
          {:ok, get_delegated_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_delegated_admin_account_errors()}
  def get_delegated_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/delegatedadminaccounts/get"
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
  Retrieves the activation status of Amazon Inspector deep inspection and custom
  paths associated
  with your account.
  """
  @spec get_ec2_deep_inspection_configuration(
          map(),
          get_ec2_deep_inspection_configuration_request(),
          list()
        ) ::
          {:ok, get_ec2_deep_inspection_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ec2_deep_inspection_configuration_errors()}
  def get_ec2_deep_inspection_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/ec2deepinspectionconfiguration/get"
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
  Gets an encryption key.
  """
  @spec get_encryption_key(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_encryption_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_encryption_key_errors()}
  def get_encryption_key(%Client{} = client, resource_type, scan_type, options \\ []) do
    url_path = "/encryptionkey/get"
    headers = []
    query_params = []

    query_params =
      if !is_nil(scan_type) do
        [{"scanType", scan_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the status of a findings report.
  """
  @spec get_findings_report_status(map(), get_findings_report_status_request(), list()) ::
          {:ok, get_findings_report_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_findings_report_status_errors()}
  def get_findings_report_status(%Client{} = client, input, options \\ []) do
    url_path = "/reporting/status/get"
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
  Gets member information for your organization.
  """
  @spec get_member(map(), get_member_request(), list()) ::
          {:ok, get_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_member_errors()}
  def get_member(%Client{} = client, input, options \\ []) do
    url_path = "/members/get"
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
  Gets details of a software bill of materials (SBOM) report.
  """
  @spec get_sbom_export(map(), get_sbom_export_request(), list()) ::
          {:ok, get_sbom_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sbom_export_errors()}
  def get_sbom_export(%Client{} = client, input, options \\ []) do
    url_path = "/sbomexport/get"
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

  Lists the permissions an account has to configure Amazon Inspector.

  If the account is a member account or standalone account with resources managed
  by an Organizations policy, the operation returns fewer permissions.
  """
  @spec list_account_permissions(map(), list_account_permissions_request(), list()) ::
          {:ok, list_account_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_account_permissions_errors()}
  def list_account_permissions(%Client{} = client, input, options \\ []) do
    url_path = "/accountpermissions/list"
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
  Lists CIS scan configurations.
  """
  @spec list_cis_scan_configurations(map(), list_cis_scan_configurations_request(), list()) ::
          {:ok, list_cis_scan_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cis_scan_configurations_errors()}
  def list_cis_scan_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/cis/scan-configuration/list"
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
  Lists scan results aggregated by checks.
  """
  @spec list_cis_scan_results_aggregated_by_checks(
          map(),
          list_cis_scan_results_aggregated_by_checks_request(),
          list()
        ) ::
          {:ok, list_cis_scan_results_aggregated_by_checks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cis_scan_results_aggregated_by_checks_errors()}
  def list_cis_scan_results_aggregated_by_checks(%Client{} = client, input, options \\ []) do
    url_path = "/cis/scan-result/check/list"
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
  Lists scan results aggregated by a target resource.
  """
  @spec list_cis_scan_results_aggregated_by_target_resource(
          map(),
          list_cis_scan_results_aggregated_by_target_resource_request(),
          list()
        ) ::
          {:ok, list_cis_scan_results_aggregated_by_target_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cis_scan_results_aggregated_by_target_resource_errors()}
  def list_cis_scan_results_aggregated_by_target_resource(
        %Client{} = client,
        input,
        options \\ []
      ) do
    url_path = "/cis/scan-result/resource/list"
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
  Returns a CIS scan list.
  """
  @spec list_cis_scans(map(), list_cis_scans_request(), list()) ::
          {:ok, list_cis_scans_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cis_scans_errors()}
  def list_cis_scans(%Client{} = client, input, options \\ []) do
    url_path = "/cis/scan/list"
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
  Lists all code security integrations in your account.
  """
  @spec list_code_security_integrations(map(), list_code_security_integrations_request(), list()) ::
          {:ok, list_code_security_integrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_code_security_integrations_errors()}
  def list_code_security_integrations(%Client{} = client, input, options \\ []) do
    url_path = "/codesecurity/integration/list"
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
  Lists the associations between code repositories and Amazon Inspector code
  security scan
  configurations.
  """
  @spec list_code_security_scan_configuration_associations(
          map(),
          list_code_security_scan_configuration_associations_request(),
          list()
        ) ::
          {:ok, list_code_security_scan_configuration_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_code_security_scan_configuration_associations_errors()}
  def list_code_security_scan_configuration_associations(%Client{} = client, input, options \\ []) do
    url_path = "/codesecurity/scan-configuration/associations/list"
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
  Lists all code security scan configurations in your account.
  """
  @spec list_code_security_scan_configurations(
          map(),
          list_code_security_scan_configurations_request(),
          list()
        ) ::
          {:ok, list_code_security_scan_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_code_security_scan_configurations_errors()}
  def list_code_security_scan_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/codesecurity/scan-configuration/list"
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
  Lists coverage details for your environment.
  """
  @spec list_coverage(map(), list_coverage_request(), list()) ::
          {:ok, list_coverage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_coverage_errors()}
  def list_coverage(%Client{} = client, input, options \\ []) do
    url_path = "/coverage/list"
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
  Lists Amazon Inspector coverage statistics for your environment.
  """
  @spec list_coverage_statistics(map(), list_coverage_statistics_request(), list()) ::
          {:ok, list_coverage_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_coverage_statistics_errors()}
  def list_coverage_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/coverage/statistics/list"
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
  Lists information about the Amazon Inspector delegated administrator of your
  organization.
  """
  @spec list_delegated_admin_accounts(map(), list_delegated_admin_accounts_request(), list()) ::
          {:ok, list_delegated_admin_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_delegated_admin_accounts_errors()}
  def list_delegated_admin_accounts(%Client{} = client, input, options \\ []) do
    url_path = "/delegatedadminaccounts/list"
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
  Lists the filters associated with your account.
  """
  @spec list_filters(map(), list_filters_request(), list()) ::
          {:ok, list_filters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_filters_errors()}
  def list_filters(%Client{} = client, input, options \\ []) do
    url_path = "/filters/list"
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
  Lists aggregated finding data for your environment based on specific criteria.
  """
  @spec list_finding_aggregations(map(), list_finding_aggregations_request(), list()) ::
          {:ok, list_finding_aggregations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_finding_aggregations_errors()}
  def list_finding_aggregations(%Client{} = client, input, options \\ []) do
    url_path = "/findings/aggregation/list"
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
  Lists findings for your environment.
  """
  @spec list_findings(map(), list_findings_request(), list()) ::
          {:ok, list_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_findings_errors()}
  def list_findings(%Client{} = client, input, options \\ []) do
    url_path = "/findings/list"
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
  List members associated with the Amazon Inspector delegated administrator for
  your
  organization.
  """
  @spec list_members(map(), list_members_request(), list()) ::
          {:ok, list_members_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_members_errors()}
  def list_members(%Client{} = client, input, options \\ []) do
    url_path = "/members/list"
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
  Lists all tags attached to a given resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
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
  Lists the Amazon Inspector usage totals over the last 30 days.
  """
  @spec list_usage_totals(map(), list_usage_totals_request(), list()) ::
          {:ok, list_usage_totals_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_usage_totals_errors()}
  def list_usage_totals(%Client{} = client, input, options \\ []) do
    url_path = "/usage/list"
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
  Resets an encryption key.

  After the key is reset your resources will be encrypted by an
  Amazon Web Services owned key.
  """
  @spec reset_encryption_key(map(), reset_encryption_key_request(), list()) ::
          {:ok, reset_encryption_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reset_encryption_key_errors()}
  def reset_encryption_key(%Client{} = client, input, options \\ []) do
    url_path = "/encryptionkey/reset"
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
  Lists Amazon Inspector coverage details for a specific vulnerability.
  """
  @spec search_vulnerabilities(map(), search_vulnerabilities_request(), list()) ::
          {:ok, search_vulnerabilities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_vulnerabilities_errors()}
  def search_vulnerabilities(%Client{} = client, input, options \\ []) do
    url_path = "/vulnerabilities/search"
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
  Sends a CIS session health.

  This API is used by the Amazon Inspector SSM plugin to
  communicate with the Amazon Inspector service. The Amazon Inspector SSM plugin
  calls
  this API to start a CIS scan session for the scan ID supplied by the service.
  """
  @spec send_cis_session_health(map(), send_cis_session_health_request(), list()) ::
          {:ok, send_cis_session_health_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_cis_session_health_errors()}
  def send_cis_session_health(%Client{} = client, input, options \\ []) do
    url_path = "/cissession/health/send"
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
  Sends a CIS session telemetry.

  This API is used by the Amazon Inspector SSM plugin to
  communicate with the Amazon Inspector service. The Amazon Inspector SSM plugin
  calls
  this API to start a CIS scan session for the scan ID supplied by the service.
  """
  @spec send_cis_session_telemetry(map(), send_cis_session_telemetry_request(), list()) ::
          {:ok, send_cis_session_telemetry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_cis_session_telemetry_errors()}
  def send_cis_session_telemetry(%Client{} = client, input, options \\ []) do
    url_path = "/cissession/telemetry/send"
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
  Starts a CIS session.

  This API is used by the Amazon Inspector SSM plugin to
  communicate with the Amazon Inspector service. The Amazon Inspector SSM plugin
  calls
  this API to start a CIS scan session for the scan ID supplied by the service.
  """
  @spec start_cis_session(map(), start_cis_session_request(), list()) ::
          {:ok, start_cis_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_cis_session_errors()}
  def start_cis_session(%Client{} = client, input, options \\ []) do
    url_path = "/cissession/start"
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
  Initiates a code security scan on a specified repository.
  """
  @spec start_code_security_scan(map(), start_code_security_scan_request(), list()) ::
          {:ok, start_code_security_scan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_code_security_scan_errors()}
  def start_code_security_scan(%Client{} = client, input, options \\ []) do
    url_path = "/codesecurity/scan/start"
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
  Stops a CIS session.

  This API is used by the Amazon Inspector SSM plugin to
  communicate with the Amazon Inspector service. The Amazon Inspector SSM plugin
  calls
  this API to stop a CIS scan session for the scan ID supplied by the service.
  """
  @spec stop_cis_session(map(), stop_cis_session_request(), list()) ::
          {:ok, stop_cis_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_cis_session_errors()}
  def stop_cis_session(%Client{} = client, input, options \\ []) do
    url_path = "/cissession/stop"
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
  Adds tags to a resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
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
  Removes tags from a resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
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
  Updates a CIS scan configuration.
  """
  @spec update_cis_scan_configuration(map(), update_cis_scan_configuration_request(), list()) ::
          {:ok, update_cis_scan_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_cis_scan_configuration_errors()}
  def update_cis_scan_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/cis/scan-configuration/update"
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
  Updates an existing code security integration.

  After calling the `CreateCodeSecurityIntegration` operation, you complete
  authentication and authorization with your provider. Next you call the
  `UpdateCodeSecurityIntegration` operation to provide the `details`
  to complete the integration setup
  """
  @spec update_code_security_integration(
          map(),
          update_code_security_integration_request(),
          list()
        ) ::
          {:ok, update_code_security_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_code_security_integration_errors()}
  def update_code_security_integration(%Client{} = client, input, options \\ []) do
    url_path = "/codesecurity/integration/update"
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
  Updates an existing code security scan configuration.
  """
  @spec update_code_security_scan_configuration(
          map(),
          update_code_security_scan_configuration_request(),
          list()
        ) ::
          {:ok, update_code_security_scan_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_code_security_scan_configuration_errors()}
  def update_code_security_scan_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/codesecurity/scan-configuration/update"
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
  Updates setting configurations for your Amazon Inspector account.

  When you use this API as an Amazon Inspector
  delegated administrator this updates the setting for all accounts you manage.
  Member
  accounts in an organization cannot update this setting.
  """
  @spec update_configuration(map(), update_configuration_request(), list()) ::
          {:ok, update_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_configuration_errors()}
  def update_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configuration/update"
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
  Activates, deactivates Amazon Inspector deep inspection, or updates custom paths
  for your account.
  """
  @spec update_ec2_deep_inspection_configuration(
          map(),
          update_ec2_deep_inspection_configuration_request(),
          list()
        ) ::
          {:ok, update_ec2_deep_inspection_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_ec2_deep_inspection_configuration_errors()}
  def update_ec2_deep_inspection_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/ec2deepinspectionconfiguration/update"
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
  Updates an encryption key.

  A `ResourceNotFoundException` means that an
  Amazon Web Services owned key is being used for encryption.
  """
  @spec update_encryption_key(map(), update_encryption_key_request(), list()) ::
          {:ok, update_encryption_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_encryption_key_errors()}
  def update_encryption_key(%Client{} = client, input, options \\ []) do
    url_path = "/encryptionkey/update"
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
  Specifies the action that is to be applied to the findings that match the
  filter.
  """
  @spec update_filter(map(), update_filter_request(), list()) ::
          {:ok, update_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_filter_errors()}
  def update_filter(%Client{} = client, input, options \\ []) do
    url_path = "/filters/update"
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
  Updates the Amazon Inspector deep inspection custom paths for your organization.

  You must be an
  Amazon Inspector delegated administrator to use this API.
  """
  @spec update_org_ec2_deep_inspection_configuration(
          map(),
          update_org_ec2_deep_inspection_configuration_request(),
          list()
        ) ::
          {:ok, update_org_ec2_deep_inspection_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_org_ec2_deep_inspection_configuration_errors()}
  def update_org_ec2_deep_inspection_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/ec2deepinspectionconfiguration/org/update"
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
  Updates the configurations for your Amazon Inspector organization.
  """
  @spec update_organization_configuration(
          map(),
          update_organization_configuration_request(),
          list()
        ) ::
          {:ok, update_organization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_organization_configuration_errors()}
  def update_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/organizationconfiguration/update"
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
