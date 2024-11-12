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
        optional("packagePaths") => list(String.t()())
      }

  """
  @type update_ec2_deep_inspection_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_encryption_key_response() :: %{
        "kmsKeyId" => String.t()
      }

  """
  @type get_encryption_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_vulnerability_details() :: %{
        "cwes" => list(String.t()()),
        "detectorId" => String.t(),
        "detectorName" => String.t(),
        "detectorTags" => list(String.t()()),
        "filePath" => code_file_path(),
        "referenceUrls" => list(String.t()()),
        "ruleId" => String.t(),
        "sourceLambdaLayerArn" => String.t()
      }

  """
  @type code_vulnerability_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_request() :: %{
        optional("accountIds") => list(String.t()()),
        optional("resourceTypes") => list(String.t()())
      }

  """
  @type disable_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_file_path() :: %{
        "endLine" => [integer()],
        "fileName" => String.t(),
        "filePath" => String.t(),
        "startLine" => [integer()]
      }

  """
  @type code_file_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_path() :: %{
        "steps" => list(step()())
      }

  """
  @type network_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      state() :: %{
        "errorCode" => String.t(),
        "errorMessage" => String.t(),
        "status" => String.t()
      }

  """
  @type state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_delegated_admin_account_response() :: %{
        optional("delegatedAdmin") => delegated_admin()
      }

  """
  @type get_delegated_admin_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      repository_aggregation() :: %{
        "repositories" => list(string_filter()()),
        "sortBy" => String.t(),
        "sortOrder" => String.t()
      }

  """
  @type repository_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suggested_fix() :: %{
        "code" => [String.t()],
        "description" => [String.t()]
      }

  """
  @type suggested_fix() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_finding_status_filter() :: %{
        "comparison" => list(any()),
        "value" => list(any())
      }

  """
  @type cis_finding_status_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_request() :: %{
        optional("accountIds") => list(String.t()()),
        optional("clientToken") => String.t(),
        required("resourceTypes") => list(String.t()())
      }

  """
  @type enable_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vulnerability() :: %{
        "atigData" => atig_data(),
        "cisaData" => cisa_data(),
        "cvss2" => cvss2(),
        "cvss3" => cvss3(),
        "cwes" => list(String.t()()),
        "description" => String.t(),
        "detectionPlatforms" => list(String.t()()),
        "epss" => epss(),
        "exploitObserved" => exploit_observed(),
        "id" => String.t(),
        "referenceUrls" => list(String.t()()),
        "relatedVulnerabilities" => list(String.t()()),
        "source" => String.t(),
        "sourceUrl" => String.t(),
        "vendorCreatedAt" => non_neg_integer(),
        "vendorSeverity" => String.t(),
        "vendorUpdatedAt" => non_neg_integer()
      }

  """
  @type vulnerability() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sbom_export_request() :: %{
        optional("resourceFilterCriteria") => resource_filter_criteria(),
        required("reportFormat") => String.t(),
        required("s3Destination") => destination()
      }

  """
  @type create_sbom_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_organization_configuration_request() :: %{}

  """
  @type describe_organization_configuration_request() :: %{}

  @typedoc """

  ## Example:

      usage_total() :: %{
        "accountId" => String.t(),
        "usage" => list(usage()())
      }

  """
  @type usage_total() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_targets() :: %{
        "accountIds" => list(String.t()()),
        "targetResourceTags" => map()
      }

  """
  @type cis_targets() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remediation() :: %{
        "recommendation" => recommendation()
      }

  """
  @type remediation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configuration_request() :: %{
        optional("ec2Configuration") => ec2_configuration(),
        optional("ecrConfiguration") => ecr_configuration()
      }

  """
  @type update_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_findings_report_response() :: %{
        optional("reportId") => String.t()
      }

  """
  @type create_findings_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      counts() :: %{
        "count" => float(),
        "groupKey" => String.t()
      }

  """
  @type counts() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      coverage_map_filter() :: %{
        "comparison" => String.t(),
        "key" => String.t(),
        "value" => String.t()
      }

  """
  @type coverage_map_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      filter_criteria() :: %{
        "severity" => list(string_filter()()),
        "codeVulnerabilityFilePath" => list(string_filter()()),
        "ecrImageHash" => list(string_filter()()),
        "findingType" => list(string_filter()()),
        "ec2InstanceVpcId" => list(string_filter()()),
        "resourceId" => list(string_filter()()),
        "lambdaFunctionExecutionRoleArn" => list(string_filter()()),
        "networkProtocol" => list(string_filter()()),
        "updatedAt" => list(date_filter()()),
        "title" => list(string_filter()()),
        "ec2InstanceImageId" => list(string_filter()()),
        "findingStatus" => list(string_filter()()),
        "inspectorScore" => list(number_filter()()),
        "vendorSeverity" => list(string_filter()()),
        "resourceTags" => list(map_filter()()),
        "lambdaFunctionName" => list(string_filter()()),
        "fixAvailable" => list(string_filter()()),
        "ecrImageRepositoryName" => list(string_filter()()),
        "awsAccountId" => list(string_filter()()),
        "codeVulnerabilityDetectorName" => list(string_filter()()),
        "epssScore" => list(number_filter()()),
        "ecrImageRegistry" => list(string_filter()()),
        "componentType" => list(string_filter()()),
        "lastObservedAt" => list(date_filter()()),
        "exploitAvailable" => list(string_filter()()),
        "ecrImageTags" => list(string_filter()()),
        "codeVulnerabilityDetectorTags" => list(string_filter()()),
        "vulnerabilitySource" => list(string_filter()()),
        "relatedVulnerabilities" => list(string_filter()()),
        "lambdaFunctionRuntime" => list(string_filter()()),
        "ec2InstanceSubnetId" => list(string_filter()()),
        "portRange" => list(port_range_filter()()),
        "ecrImagePushedAt" => list(date_filter()()),
        "lambdaFunctionLastModifiedAt" => list(date_filter()()),
        "ecrImageArchitecture" => list(string_filter()()),
        "vulnerabilityId" => list(string_filter()()),
        "resourceType" => list(string_filter()()),
        "findingArn" => list(string_filter()()),
        "componentId" => list(string_filter()()),
        "vulnerablePackages" => list(package_filter()()),
        "firstObservedAt" => list(date_filter()()),
        "lambdaFunctionLayers" => list(string_filter()())
      }

  """
  @type filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sbom_export_response() :: %{
        "errorCode" => String.t(),
        "errorMessage" => String.t(),
        "filterCriteria" => resource_filter_criteria(),
        "format" => String.t(),
        "reportId" => String.t(),
        "s3Destination" => destination(),
        "status" => String.t()
      }

  """
  @type get_sbom_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time() :: %{
        "timeOfDay" => String.t(),
        "timezone" => String.t()
      }

  """
  @type time() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_cis_scan_configuration_request() :: %{
        required("scanConfigurationArn") => String.t()
      }

  """
  @type delete_cis_scan_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_delegated_admin_account_response() :: %{
        required("delegatedAdminAccountId") => String.t()
      }

  """
  @type disable_delegated_admin_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configuration_request() :: %{}

  """
  @type get_configuration_request() :: %{}

  @typedoc """

  ## Example:

      cvss3() :: %{
        "baseScore" => float(),
        "scoringVector" => String.t()
      }

  """
  @type cvss3() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_cis_session_request() :: %{
        required("message") => start_cis_session_message(),
        required("scanJobId") => String.t()
      }

  """
  @type start_cis_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_vulnerabilities_filter_criteria() :: %{
        "vulnerabilityIds" => list(String.t()())
      }

  """
  @type search_vulnerabilities_filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_account_ec2_deep_inspection_status() :: %{
        "accountId" => String.t(),
        "activateDeepInspection" => [boolean()]
      }

  """
  @type member_account_ec2_deep_inspection_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_member_ec2_deep_inspection_status_response() :: %{
        "accountIds" => list(member_account_ec2_deep_inspection_status_state()()),
        "failedAccountIds" => list(failed_member_account_ec2_deep_inspection_status_state()())
      }

  """
  @type batch_get_member_ec2_deep_inspection_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ec2_metadata() :: %{
        "amiId" => String.t(),
        "platform" => String.t(),
        "tags" => map()
      }

  """
  @type ec2_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_account_ec2_deep_inspection_status_state() :: %{
        "accountId" => String.t(),
        "errorMessage" => String.t(),
        "status" => String.t()
      }

  """
  @type member_account_ec2_deep_inspection_status_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_findings_report_status_response() :: %{
        optional("destination") => destination(),
        optional("errorCode") => String.t(),
        optional("errorMessage") => String.t(),
        optional("filterCriteria") => filter_criteria(),
        optional("reportId") => String.t(),
        optional("status") => String.t()
      }

  """
  @type get_findings_report_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ec2_configuration() :: %{
        "scanMode" => String.t()
      }

  """
  @type ec2_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_state() :: %{
        "ec2" => state(),
        "ecr" => state(),
        "lambda" => state(),
        "lambdaCode" => state()
      }

  """
  @type resource_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ec2_configuration_state() :: %{
        "scanModeState" => ec2_scan_mode_state()
      }

  """
  @type ec2_configuration_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_usage_totals_request() :: %{
        optional("accountIds") => list(String.t()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_usage_totals_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delegated_admin() :: %{
        "accountId" => String.t(),
        "relationshipStatus" => String.t()
      }

  """
  @type delegated_admin() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_scan_status_filter() :: %{
        "comparison" => list(any()),
        "value" => list(any())
      }

  """
  @type cis_scan_status_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_account_permissions_response() :: %{
        optional("nextToken") => String.t(),
        required("permissions") => list(permission()())
      }

  """
  @type list_account_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_findings_report_status_request() :: %{
        optional("reportId") => String.t()
      }

  """
  @type get_findings_report_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_findings_report_response() :: %{
        required("reportId") => String.t()
      }

  """
  @type cancel_findings_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cis_targets() :: %{
        "accountIds" => list(String.t()()),
        "targetResourceTags" => map()
      }

  """
  @type update_cis_targets() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      coverage_string_filter() :: %{
        "comparison" => String.t(),
        "value" => String.t()
      }

  """
  @type coverage_string_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_findings_response() :: %{
        optional("findings") => list(finding()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_response() :: %{
        optional("failedAccounts") => list(failed_account()()),
        required("accounts") => list(account()())
      }

  """
  @type disable_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ecr_configuration() :: %{
        "pullDateRescanDuration" => String.t(),
        "rescanDuration" => String.t()
      }

  """
  @type ecr_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_target_resource_aggregation() :: %{
        "accountId" => String.t(),
        "platform" => [String.t()],
        "scanArn" => String.t(),
        "statusCounts" => status_counts(),
        "targetResourceId" => String.t(),
        "targetResourceTags" => map(),
        "targetStatus" => list(any()),
        "targetStatusReason" => list(any())
      }

  """
  @type cis_target_resource_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_filter_response() :: %{
        required("arn") => String.t()
      }

  """
  @type create_filter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_member_response() :: %{
        required("accountId") => String.t()
      }

  """
  @type associate_member_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_scan_results_aggregated_by_target_resource_filter_criteria() :: %{
        "accountIdFilters" => list(cis_string_filter()()),
        "checkIdFilters" => list(cis_string_filter()()),
        "failedChecksFilters" => list(cis_number_filter()()),
        "platformFilters" => list(cis_string_filter()()),
        "statusFilters" => list(cis_result_status_filter()()),
        "targetResourceIdFilters" => list(cis_string_filter()()),
        "targetResourceTagFilters" => list(tag_filter()()),
        "targetStatusFilters" => list(cis_target_status_filter()()),
        "targetStatusReasonFilters" => list(cis_target_status_reason_filter()())
      }

  """
  @type cis_scan_results_aggregated_by_target_resource_filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_status() :: %{
        "ec2" => String.t(),
        "ecr" => String.t(),
        "lambda" => String.t(),
        "lambdaCode" => String.t()
      }

  """
  @type resource_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delegated_admin_account() :: %{
        "accountId" => String.t(),
        "status" => String.t()
      }

  """
  @type delegated_admin_account() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_scan_metadata() :: %{
        "ec2" => ec2_metadata(),
        "ecrImage" => ecr_container_image_metadata(),
        "ecrRepository" => ecr_repository_metadata(),
        "lambdaFunction" => lambda_function_metadata()
      }

  """
  @type resource_scan_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      monthly_schedule() :: %{
        "day" => list(any()),
        "startTime" => time()
      }

  """
  @type monthly_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_member_request() :: %{
        required("accountId") => String.t()
      }

  """
  @type associate_member_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cis_scan_configuration_request() :: %{
        optional("scanName") => String.t(),
        optional("schedule") => list(),
        optional("securityLevel") => list(any()),
        optional("targets") => update_cis_targets(),
        required("scanConfigurationArn") => String.t()
      }

  """
  @type update_cis_scan_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_encryption_key_request() :: %{
        required("resourceType") => String.t(),
        required("scanType") => String.t()
      }

  """
  @type reset_encryption_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_scan_configuration() :: %{
        "ownerId" => String.t(),
        "scanConfigurationArn" => String.t(),
        "scanName" => String.t(),
        "schedule" => list(),
        "securityLevel" => list(any()),
        "tags" => map(),
        "targets" => cis_targets()
      }

  """
  @type cis_scan_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cis_scan_configurations_request() :: %{
        optional("filterCriteria") => list_cis_scan_configurations_filter_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }

  """
  @type list_cis_scan_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_free_trial_info_response() :: %{
        required("accounts") => list(free_trial_account_info()()),
        required("failedAccounts") => list(free_trial_info_error()())
      }

  """
  @type batch_get_free_trial_info_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_ec2_deep_inspection_configuration_response() :: %{
        "errorMessage" => String.t(),
        "orgPackagePaths" => list(String.t()()),
        "packagePaths" => list(String.t()()),
        "status" => String.t()
      }

  """
  @type update_ec2_deep_inspection_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      failed_member_account_ec2_deep_inspection_status_state() :: %{
        "accountId" => String.t(),
        "ec2ScanStatus" => String.t(),
        "errorMessage" => String.t()
      }

  """
  @type failed_member_account_ec2_deep_inspection_status_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      title_aggregation_response() :: %{
        "accountId" => String.t(),
        "severityCounts" => severity_counts(),
        "title" => String.t(),
        "vulnerabilityId" => [String.t()]
      }

  """
  @type title_aggregation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      severity_counts() :: %{
        "all" => [float()],
        "critical" => [float()],
        "high" => [float()],
        "medium" => [float()]
      }

  """
  @type severity_counts() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cis_scans_response() :: %{
        "nextToken" => String.t(),
        "scans" => list(cis_scan()())
      }

  """
  @type list_cis_scans_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      finding_type_aggregation_response() :: %{
        "accountId" => String.t(),
        "exploitAvailableCount" => [float()],
        "fixAvailableCount" => [float()],
        "severityCounts" => severity_counts()
      }

  """
  @type finding_type_aggregation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_findings_report_request() :: %{
        required("reportId") => String.t()
      }

  """
  @type cancel_findings_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      usage() :: %{
        "currency" => String.t(),
        "estimatedMonthlyCost" => float(),
        "total" => float(),
        "type" => String.t()
      }

  """
  @type usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_cis_session_request() :: %{
        required("message") => stop_cis_session_message(),
        required("scanJobId") => String.t(),
        required("sessionToken") => String.t()
      }

  """
  @type stop_cis_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      failed_account() :: %{
        "accountId" => String.t(),
        "errorCode" => String.t(),
        "errorMessage" => String.t(),
        "resourceStatus" => resource_status(),
        "status" => String.t()
      }

  """
  @type failed_account() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ec2_instance_aggregation() :: %{
        "amis" => list(string_filter()()),
        "instanceIds" => list(string_filter()()),
        "instanceTags" => list(map_filter()()),
        "operatingSystems" => list(string_filter()()),
        "sortBy" => String.t(),
        "sortOrder" => String.t()
      }

  """
  @type ec2_instance_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_snippet_result() :: %{
        "codeSnippet" => list(code_line()()),
        "endLine" => [integer()],
        "findingArn" => String.t(),
        "startLine" => [integer()],
        "suggestedFixes" => list(suggested_fix()())
      }

  """
  @type code_snippet_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_sbom_export_request() :: %{
        required("reportId") => String.t()
      }

  """
  @type cancel_sbom_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cis_scan_results_aggregated_by_checks_response() :: %{
        "checkAggregations" => list(cis_check_aggregation()()),
        "nextToken" => String.t()
      }

  """
  @type list_cis_scan_results_aggregated_by_checks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_target_status_reason_filter() :: %{
        "comparison" => list(any()),
        "value" => list(any())
      }

  """
  @type cis_target_status_reason_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_filter_response() :: %{
        required("arn") => String.t()
      }

  """
  @type update_filter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_organization_configuration_response() :: %{
        optional("autoEnable") => auto_enable(),
        optional("maxAccountLimitReached") => [boolean()]
      }

  """
  @type describe_organization_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_encryption_key_request() :: %{
        required("kmsKeyId") => String.t(),
        required("resourceType") => String.t(),
        required("scanType") => String.t()
      }

  """
  @type update_encryption_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_encryption_key_response() :: %{}

  """
  @type update_encryption_key_response() :: %{}

  @typedoc """

  ## Example:

      create_cis_scan_configuration_response() :: %{
        "scanConfigurationArn" => String.t()
      }

  """
  @type create_cis_scan_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_finding_aggregations_response() :: %{
        optional("nextToken") => String.t(),
        optional("responses") => list(list()()),
        required("aggregationType") => String.t()
      }

  """
  @type list_finding_aggregations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cis_scan_results_aggregated_by_target_resource_response() :: %{
        "nextToken" => String.t(),
        "targetResourceAggregations" => list(cis_target_resource_aggregation()())
      }

  """
  @type list_cis_scan_results_aggregated_by_target_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configuration_response() :: %{
        optional("ec2Configuration") => ec2_configuration_state(),
        optional("ecrConfiguration") => ecr_configuration_state()
      }

  """
  @type get_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lambda_function_aggregation() :: %{
        "functionNames" => list(string_filter()()),
        "functionTags" => list(map_filter()()),
        "resourceIds" => list(string_filter()()),
        "runtimes" => list(string_filter()()),
        "sortBy" => String.t(),
        "sortOrder" => String.t()
      }

  """
  @type lambda_function_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_filter_request() :: %{
        optional("description") => String.t(),
        optional("reason") => String.t(),
        optional("tags") => map(),
        required("action") => String.t(),
        required("filterCriteria") => filter_criteria(),
        required("name") => String.t()
      }

  """
  @type create_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      coverage_date_filter() :: %{
        "endInclusive" => non_neg_integer(),
        "startInclusive" => non_neg_integer()
      }

  """
  @type coverage_date_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      compute_platform() :: %{
        "product" => String.t(),
        "vendor" => String.t(),
        "version" => String.t()
      }

  """
  @type compute_platform() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_cis_session_health_request() :: %{
        required("scanJobId") => String.t(),
        required("sessionToken") => String.t()
      }

  """
  @type send_cis_session_health_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ecr_repository_metadata() :: %{
        "name" => [String.t()],
        "scanFrequency" => String.t()
      }

  """
  @type ecr_repository_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sbom_export_request() :: %{
        required("reportId") => String.t()
      }

  """
  @type get_sbom_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_delegated_admin_accounts_response() :: %{
        optional("delegatedAdminAccounts") => list(delegated_admin_account()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_delegated_admin_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ecr_configuration_state() :: %{
        "rescanDurationState" => ecr_rescan_duration_state()
      }

  """
  @type ecr_configuration_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_filter_criteria() :: %{
        "accountId" => list(resource_string_filter()()),
        "ec2InstanceTags" => list(resource_map_filter()()),
        "ecrImageTags" => list(resource_string_filter()()),
        "ecrRepositoryName" => list(resource_string_filter()()),
        "lambdaFunctionName" => list(resource_string_filter()()),
        "lambdaFunctionTags" => list(resource_map_filter()()),
        "resourceId" => list(resource_string_filter()()),
        "resourceType" => list(resource_string_filter()())
      }

  """
  @type resource_filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cis_targets() :: %{
        "accountIds" => list(String.t()()),
        "targetResourceTags" => map()
      }

  """
  @type create_cis_targets() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_delegated_admin_account_response() :: %{
        required("delegatedAdminAccountId") => String.t()
      }

  """
  @type enable_delegated_admin_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_cis_scan_configuration_response() :: %{
        "scanConfigurationArn" => String.t()
      }

  """
  @type delete_cis_scan_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_line() :: %{
        "content" => [String.t()],
        "lineNumber" => [integer()]
      }

  """
  @type code_line() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recommendation() :: %{
        "Url" => String.t(),
        "text" => String.t()
      }

  """
  @type recommendation() :: %{String.t() => any()}

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
  @type stop_cis_message_progress() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cvss2() :: %{
        "baseScore" => float(),
        "scoringVector" => String.t()
      }

  """
  @type cvss2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_check_aggregation() :: %{
        "accountId" => String.t(),
        "checkDescription" => [String.t()],
        "checkId" => [String.t()],
        "level" => list(any()),
        "platform" => [String.t()],
        "scanArn" => String.t(),
        "statusCounts" => status_counts(),
        "title" => [String.t()]
      }

  """
  @type cis_check_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_cis_session_message() :: %{
        "sessionToken" => String.t()
      }

  """
  @type start_cis_session_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_finding_details_request() :: %{
        required("findingArns") => list(String.t()())
      }

  """
  @type batch_get_finding_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_snippet_error() :: %{
        "errorCode" => String.t(),
        "errorMessage" => String.t(),
        "findingArn" => String.t()
      }

  """
  @type code_snippet_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lambda_vpc_config() :: %{
        "securityGroupIds" => list(String.t()()),
        "subnetIds" => list(String.t()()),
        "vpcId" => String.t()
      }

  """
  @type lambda_vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account() :: %{
        "accountId" => String.t(),
        "resourceStatus" => resource_status(),
        "status" => String.t()
      }

  """
  @type account() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      atig_data() :: %{
        "firstSeen" => non_neg_integer(),
        "lastSeen" => non_neg_integer(),
        "targets" => list(String.t()()),
        "ttps" => list(String.t()())
      }

  """
  @type atig_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cvss_score_details() :: %{
        "adjustments" => list(cvss_score_adjustment()()),
        "cvssSource" => String.t(),
        "score" => [float()],
        "scoreSource" => String.t(),
        "scoringVector" => String.t(),
        "version" => String.t()
      }

  """
  @type cvss_score_details() :: %{String.t() => any()}

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
  @type inspector_score_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      finding() :: %{
        "awsAccountId" => String.t(),
        "codeVulnerabilityDetails" => code_vulnerability_details(),
        "description" => String.t(),
        "epss" => epss_details(),
        "exploitAvailable" => String.t(),
        "exploitabilityDetails" => exploitability_details(),
        "findingArn" => String.t(),
        "firstObservedAt" => non_neg_integer(),
        "fixAvailable" => String.t(),
        "inspectorScore" => [float()],
        "inspectorScoreDetails" => inspector_score_details(),
        "lastObservedAt" => non_neg_integer(),
        "networkReachabilityDetails" => network_reachability_details(),
        "packageVulnerabilityDetails" => package_vulnerability_details(),
        "remediation" => remediation(),
        "resources" => list(resource()()),
        "severity" => String.t(),
        "status" => String.t(),
        "title" => String.t(),
        "type" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type finding() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      free_trial_info_error() :: %{
        "accountId" => String.t(),
        "code" => String.t(),
        "message" => [String.t()]
      }

  """
  @type free_trial_info_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vulnerable_package() :: %{
        "arch" => String.t(),
        "epoch" => integer(),
        "filePath" => String.t(),
        "fixedInVersion" => String.t(),
        "name" => String.t(),
        "packageManager" => String.t(),
        "release" => String.t(),
        "remediation" => String.t(),
        "sourceLambdaLayerArn" => String.t(),
        "sourceLayerHash" => String.t(),
        "version" => String.t()
      }

  """
  @type vulnerable_package() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      port_range_filter() :: %{
        "beginInclusive" => integer(),
        "endInclusive" => integer()
      }

  """
  @type port_range_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      finding_type_aggregation() :: %{
        "findingType" => String.t(),
        "resourceType" => String.t(),
        "sortBy" => String.t(),
        "sortOrder" => String.t()
      }

  """
  @type finding_type_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      date_filter() :: %{
        "endInclusive" => [non_neg_integer()],
        "startInclusive" => [non_neg_integer()]
      }

  """
  @type date_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_findings_request() :: %{
        optional("filterCriteria") => filter_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortCriteria") => sort_criteria()
      }

  """
  @type list_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cvss_score_adjustment() :: %{
        "metric" => String.t(),
        "reason" => String.t()
      }

  """
  @type cvss_score_adjustment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_usage_totals_response() :: %{
        optional("nextToken") => String.t(),
        optional("totals") => list(usage_total()())
      }

  """
  @type list_usage_totals_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cisa_data() :: %{
        "action" => String.t(),
        "dateAdded" => non_neg_integer(),
        "dateDue" => non_neg_integer()
      }

  """
  @type cisa_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_map_filter() :: %{
        "comparison" => String.t(),
        "key" => String.t(),
        "value" => String.t()
      }

  """
  @type resource_map_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_filter_response() :: %{
        required("arn") => String.t()
      }

  """
  @type delete_filter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      repository_aggregation_response() :: %{
        "accountId" => String.t(),
        "affectedImages" => [float()],
        "repository" => String.t(),
        "severityCounts" => severity_counts()
      }

  """
  @type repository_aggregation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lambda_function_aggregation_response() :: %{
        "accountId" => String.t(),
        "functionName" => [String.t()],
        "lambdaTags" => map(),
        "lastModifiedAt" => non_neg_integer(),
        "resourceId" => String.t(),
        "runtime" => [String.t()],
        "severityCounts" => severity_counts()
      }

  """
  @type lambda_function_aggregation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_coverage_response() :: %{
        optional("coveredResources") => list(covered_resource()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_coverage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_member_request() :: %{
        required("accountId") => String.t()
      }

  """
  @type get_member_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_organization_configuration_response() :: %{
        required("autoEnable") => auto_enable()
      }

  """
  @type update_organization_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_vulnerabilities_request() :: %{
        optional("nextToken") => String.t(),
        required("filterCriteria") => search_vulnerabilities_filter_criteria()
      }

  """
  @type search_vulnerabilities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cis_scan_configurations_filter_criteria() :: %{
        "scanConfigurationArnFilters" => list(cis_string_filter()()),
        "scanNameFilters" => list(cis_string_filter()()),
        "targetResourceTagFilters" => list(tag_filter()())
      }

  """
  @type list_cis_scan_configurations_filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_delegated_admin_account_request() :: %{}

  """
  @type get_delegated_admin_account_request() :: %{}

  @typedoc """

  ## Example:

      cis_security_level_filter() :: %{
        "comparison" => list(any()),
        "value" => list(any())
      }

  """
  @type cis_security_level_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      covered_resource() :: %{
        "accountId" => String.t(),
        "lastScannedAt" => non_neg_integer(),
        "resourceId" => String.t(),
        "resourceMetadata" => resource_scan_metadata(),
        "resourceType" => String.t(),
        "scanMode" => String.t(),
        "scanStatus" => scan_status(),
        "scanType" => String.t()
      }

  """
  @type covered_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "action" => String.t(),
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "criteria" => filter_criteria(),
        "description" => String.t(),
        "name" => String.t(),
        "ownerId" => String.t(),
        "reason" => String.t(),
        "tags" => map(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sbom_export_response() :: %{
        "reportId" => String.t()
      }

  """
  @type create_sbom_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cis_scan_configurations_response() :: %{
        "nextToken" => String.t(),
        "scanConfigurations" => list(cis_scan_configuration()())
      }

  """
  @type list_cis_scan_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      finding_detail() :: %{
        "cisaData" => cisa_data(),
        "cwes" => list(String.t()()),
        "epssScore" => [float()],
        "evidences" => list(evidence()()),
        "exploitObserved" => exploit_observed(),
        "findingArn" => String.t(),
        "referenceUrls" => list(String.t()()),
        "riskScore" => integer(),
        "tools" => list(String.t()()),
        "ttps" => list(String.t()())
      }

  """
  @type finding_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lambda_function_metadata() :: %{
        "functionName" => [String.t()],
        "functionTags" => map(),
        "layers" => list([String.t()]()),
        "runtime" => String.t()
      }

  """
  @type lambda_function_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_account_permissions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("service") => String.t()
      }

  """
  @type list_account_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_session_message() :: %{
        "cisRuleDetails" => binary(),
        "ruleId" => String.t(),
        "status" => list(any())
      }

  """
  @type cis_session_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_delegated_admin_accounts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_delegated_admin_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ecr_rescan_duration_state() :: %{
        "pullDateRescanDuration" => String.t(),
        "rescanDuration" => String.t(),
        "status" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type ecr_rescan_duration_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_number_filter() :: %{
        "lowerInclusive" => [integer()],
        "upperInclusive" => [integer()]
      }

  """
  @type cis_number_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_findings_report_request() :: %{
        optional("filterCriteria") => filter_criteria(),
        required("reportFormat") => String.t(),
        required("s3Destination") => destination()
      }

  """
  @type create_findings_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configuration_response() :: %{}

  """
  @type update_configuration_response() :: %{}

  @typedoc """

  ## Example:

      ecr_container_image_metadata() :: %{
        "imagePulledAt" => non_neg_integer(),
        "tags" => list([String.t()]())
      }

  """
  @type ecr_container_image_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_filter_request() :: %{
        optional("action") => String.t(),
        optional("description") => String.t(),
        optional("filterCriteria") => filter_criteria(),
        optional("name") => String.t(),
        optional("reason") => String.t(),
        required("filterArn") => String.t()
      }

  """
  @type update_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_aggregation_response() :: %{
        "accountId" => String.t(),
        "exploitAvailableCount" => [float()],
        "fixAvailableCount" => [float()],
        "severityCounts" => severity_counts()
      }

  """
  @type account_aggregation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_cis_session_health_response() :: %{}

  """
  @type send_cis_session_health_response() :: %{}

  @typedoc """

  ## Example:

      batch_get_account_status_response() :: %{
        optional("failedAccounts") => list(failed_account()()),
        required("accounts") => list(account_state()())
      }

  """
  @type batch_get_account_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_free_trial_info_request() :: %{
        required("accountIds") => list(String.t()())
      }

  """
  @type batch_get_free_trial_info_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_member_response() :: %{
        optional("member") => member()
      }

  """
  @type get_member_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      epss_details() :: %{
        "score" => float()
      }

  """
  @type epss_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      port_range() :: %{
        "begin" => integer(),
        "end" => integer()
      }

  """
  @type port_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_organization_configuration_request() :: %{
        required("autoEnable") => auto_enable()
      }

  """
  @type update_organization_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_response() :: %{
        optional("failedAccounts") => list(failed_account()()),
        required("accounts") => list(account()())
      }

  """
  @type enable_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_aggregation_response() :: %{
        "accountId" => String.t(),
        "packageName" => String.t(),
        "severityCounts" => severity_counts()
      }

  """
  @type package_aggregation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cis_scans_request() :: %{
        optional("detailLevel") => list(any()),
        optional("filterCriteria") => list_cis_scans_filter_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }

  """
  @type list_cis_scans_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_layer_aggregation() :: %{
        "layerHashes" => list(string_filter()()),
        "repositories" => list(string_filter()()),
        "resourceIds" => list(string_filter()()),
        "sortBy" => String.t(),
        "sortOrder" => String.t()
      }

  """
  @type image_layer_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_aggregation() :: %{
        "findingType" => String.t(),
        "resourceType" => String.t(),
        "sortBy" => String.t(),
        "sortOrder" => String.t()
      }

  """
  @type account_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lambda_layer_aggregation() :: %{
        "functionNames" => list(string_filter()()),
        "layerArns" => list(string_filter()()),
        "resourceIds" => list(string_filter()()),
        "sortBy" => String.t(),
        "sortOrder" => String.t()
      }

  """
  @type lambda_layer_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_reachability_details() :: %{
        "networkPath" => network_path(),
        "openPortRange" => port_range(),
        "protocol" => String.t()
      }

  """
  @type network_reachability_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_code_snippet_request() :: %{
        required("findingArns") => list(String.t()())
      }

  """
  @type batch_get_code_snippet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_scan() :: %{
        "failedChecks" => [integer()],
        "scanArn" => String.t(),
        "scanConfigurationArn" => String.t(),
        "scanDate" => [non_neg_integer()],
        "scanName" => String.t(),
        "scheduledBy" => [String.t()],
        "securityLevel" => list(any()),
        "status" => list(any()),
        "targets" => cis_targets(),
        "totalChecks" => [integer()]
      }

  """
  @type cis_scan() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cis_scan_configuration_request() :: %{
        optional("tags") => map(),
        required("scanName") => String.t(),
        required("schedule") => list(),
        required("securityLevel") => list(any()),
        required("targets") => create_cis_targets()
      }

  """
  @type create_cis_scan_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      finding_details_error() :: %{
        "errorCode" => String.t(),
        "errorMessage" => String.t(),
        "findingArn" => String.t()
      }

  """
  @type finding_details_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sort_criteria() :: %{
        "field" => String.t(),
        "sortOrder" => String.t()
      }

  """
  @type sort_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      weekly_schedule() :: %{
        "days" => list(list(any())()),
        "startTime" => time()
      }

  """
  @type weekly_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_vulnerability_details() :: %{
        "cvss" => list(cvss_score()()),
        "referenceUrls" => list(String.t()()),
        "relatedVulnerabilities" => list(String.t()()),
        "source" => String.t(),
        "sourceUrl" => String.t(),
        "vendorCreatedAt" => non_neg_integer(),
        "vendorSeverity" => String.t(),
        "vendorUpdatedAt" => non_neg_integer(),
        "vulnerabilityId" => String.t(),
        "vulnerablePackages" => list(vulnerable_package()())
      }

  """
  @type package_vulnerability_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cvss_score() :: %{
        "baseScore" => [float()],
        "scoringVector" => String.t(),
        "source" => String.t(),
        "version" => String.t()
      }

  """
  @type cvss_score() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_ec2_instance_details() :: %{
        "iamInstanceProfileArn" => String.t(),
        "imageId" => String.t(),
        "ipV4Addresses" => list(String.t()()),
        "ipV6Addresses" => list(String.t()()),
        "keyName" => String.t(),
        "launchedAt" => non_neg_integer(),
        "platform" => String.t(),
        "subnetId" => String.t(),
        "type" => String.t(),
        "vpcId" => String.t()
      }

  """
  @type aws_ec2_instance_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_member_ec2_deep_inspection_status_request() :: %{
        optional("accountIds") => list(String.t()())
      }

  """
  @type batch_get_member_ec2_deep_inspection_status_request() :: %{String.t() => any()}

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
  @type epss() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      exploit_observed() :: %{
        "firstSeen" => non_neg_integer(),
        "lastSeen" => non_neg_integer()
      }

  """
  @type exploit_observed() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_members_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("onlyAssociated") => [boolean()]
      }

  """
  @type list_members_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_members_response() :: %{
        optional("members") => list(member()()),
        optional("nextToken") => String.t()
      }

  """
  @type list_members_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ec2_deep_inspection_configuration_response() :: %{
        "errorMessage" => String.t(),
        "orgPackagePaths" => list(String.t()()),
        "packagePaths" => list(String.t()()),
        "status" => String.t()
      }

  """
  @type get_ec2_deep_inspection_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_delegated_admin_account_request() :: %{
        required("delegatedAdminAccountId") => String.t()
      }

  """
  @type disable_delegated_admin_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_string_filter() :: %{
        "comparison" => list(any()),
        "value" => [String.t()]
      }

  """
  @type cis_string_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      free_trial_info() :: %{
        "end" => [non_neg_integer()],
        "start" => [non_neg_integer()],
        "status" => String.t(),
        "type" => String.t()
      }

  """
  @type free_trial_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_cis_session_response() :: %{}

  """
  @type start_cis_session_response() :: %{}

  @typedoc """

  ## Example:

      get_cis_scan_report_request() :: %{
        optional("reportFormat") => list(any()),
        optional("targetAccounts") => list(String.t()()),
        required("scanArn") => String.t()
      }

  """
  @type get_cis_scan_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_cis_scan_configuration_response() :: %{
        "scanConfigurationArn" => String.t()
      }

  """
  @type update_cis_scan_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fields" => list(validation_exception_field()()),
        "message" => [String.t()],
        "reason" => String.t()
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

      get_cis_scan_result_details_response() :: %{
        "nextToken" => String.t(),
        "scanResultDetails" => list(cis_scan_result_details()())
      }

  """
  @type get_cis_scan_result_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_coverage_request() :: %{
        optional("filterCriteria") => coverage_filter_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_coverage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      destination() :: %{
        "bucketName" => [String.t()],
        "keyPrefix" => [String.t()],
        "kmsKeyArn" => [String.t()]
      }

  """
  @type destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_string_filter() :: %{
        "comparison" => String.t(),
        "value" => String.t()
      }

  """
  @type resource_string_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_coverage_statistics_response() :: %{
        optional("countsByGroup") => list(counts()()),
        optional("nextToken") => String.t(),
        required("totalCounts") => [float()]
      }

  """
  @type list_coverage_statistics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_target_status_filter() :: %{
        "comparison" => list(any()),
        "value" => list(any())
      }

  """
  @type cis_target_status_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_coverage_statistics_request() :: %{
        optional("filterCriteria") => coverage_filter_criteria(),
        optional("groupBy") => String.t(),
        optional("nextToken") => String.t()
      }

  """
  @type list_coverage_statistics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      daily_schedule() :: %{
        "startTime" => time()
      }

  """
  @type daily_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ec2_deep_inspection_configuration_request() :: %{}

  """
  @type get_ec2_deep_inspection_configuration_request() :: %{}

  @typedoc """

  ## Example:

      evidence() :: %{
        "evidenceDetail" => String.t(),
        "evidenceRule" => String.t(),
        "severity" => String.t()
      }

  """
  @type evidence() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      coverage_filter_criteria() :: %{
        "accountId" => list(coverage_string_filter()()),
        "ec2InstanceTags" => list(coverage_map_filter()()),
        "ecrImageTags" => list(coverage_string_filter()()),
        "ecrRepositoryName" => list(coverage_string_filter()()),
        "imagePulledAt" => list(coverage_date_filter()()),
        "lambdaFunctionName" => list(coverage_string_filter()()),
        "lambdaFunctionRuntime" => list(coverage_string_filter()()),
        "lambdaFunctionTags" => list(coverage_map_filter()()),
        "lastScannedAt" => list(coverage_date_filter()()),
        "resourceId" => list(coverage_string_filter()()),
        "resourceType" => list(coverage_string_filter()()),
        "scanMode" => list(coverage_string_filter()()),
        "scanStatusCode" => list(coverage_string_filter()()),
        "scanStatusReason" => list(coverage_string_filter()()),
        "scanType" => list(coverage_string_filter()())
      }

  """
  @type coverage_filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_sbom_export_response() :: %{
        "reportId" => String.t()
      }

  """
  @type cancel_sbom_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_account_status_request() :: %{
        optional("accountIds") => list(String.t()())
      }

  """
  @type batch_get_account_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_cis_session_message() :: %{
        "benchmarkProfile" => String.t(),
        "benchmarkVersion" => String.t(),
        "computePlatform" => compute_platform(),
        "progress" => stop_cis_message_progress(),
        "reason" => String.t(),
        "status" => list(any())
      }

  """
  @type stop_cis_session_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ami_aggregation() :: %{
        "amis" => list(string_filter()()),
        "sortBy" => String.t(),
        "sortOrder" => String.t()
      }

  """
  @type ami_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member() :: %{
        "accountId" => String.t(),
        "delegatedAdminAccountId" => String.t(),
        "relationshipStatus" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      string_filter() :: %{
        "comparison" => String.t(),
        "value" => String.t()
      }

  """
  @type string_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cis_scan_results_aggregated_by_checks_request() :: %{
        optional("filterCriteria") => cis_scan_results_aggregated_by_checks_filter_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        required("scanArn") => String.t()
      }

  """
  @type list_cis_scan_results_aggregated_by_checks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      package_aggregation() :: %{
        "packageNames" => list(string_filter()()),
        "sortBy" => String.t(),
        "sortOrder" => String.t()
      }

  """
  @type package_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      status_counts() :: %{
        "failed" => [integer()],
        "passed" => [integer()],
        "skipped" => [integer()]
      }

  """
  @type status_counts() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_scan_results_aggregated_by_checks_filter_criteria() :: %{
        "accountIdFilters" => list(cis_string_filter()()),
        "checkIdFilters" => list(cis_string_filter()()),
        "failedResourcesFilters" => list(cis_number_filter()()),
        "platformFilters" => list(cis_string_filter()()),
        "securityLevelFilters" => list(cis_security_level_filter()()),
        "titleFilters" => list(cis_string_filter()())
      }

  """
  @type cis_scan_results_aggregated_by_checks_filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scan_status() :: %{
        "reason" => String.t(),
        "statusCode" => String.t()
      }

  """
  @type scan_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_encryption_key_request() :: %{
        required("resourceType") => String.t(),
        required("scanType") => String.t()
      }

  """
  @type get_encryption_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_result_status_filter() :: %{
        "comparison" => list(any()),
        "value" => list(any())
      }

  """
  @type cis_result_status_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_finding_aggregations_request() :: %{
        optional("accountIds") => list(string_filter()()),
        optional("aggregationRequest") => list(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("aggregationType") => String.t()
      }

  """
  @type list_finding_aggregations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      one_time_schedule() :: %{}

  """
  @type one_time_schedule() :: %{}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ec2_instance_aggregation_response() :: %{
        "accountId" => [String.t()],
        "ami" => String.t(),
        "instanceId" => String.t(),
        "instanceTags" => map(),
        "networkFindings" => [float()],
        "operatingSystem" => [String.t()],
        "severityCounts" => severity_counts()
      }

  """
  @type ec2_instance_aggregation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cis_scan_results_aggregated_by_target_resource_request() :: %{
        optional("filterCriteria") => cis_scan_results_aggregated_by_target_resource_filter_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        required("scanArn") => String.t()
      }

  """
  @type list_cis_scan_results_aggregated_by_target_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_ecr_container_aggregation() :: %{
        "architectures" => list(string_filter()()),
        "imageShas" => list(string_filter()()),
        "imageTags" => list(string_filter()()),
        "repositories" => list(string_filter()()),
        "resourceIds" => list(string_filter()()),
        "sortBy" => String.t(),
        "sortOrder" => String.t()
      }

  """
  @type aws_ecr_container_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_filter() :: %{
        "comparison" => list(any()),
        "key" => String.t(),
        "value" => String.t()
      }

  """
  @type tag_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_code_snippet_response() :: %{
        "codeSnippetResults" => list(code_snippet_result()()),
        "errors" => list(code_snippet_error()())
      }

  """
  @type batch_get_code_snippet_response() :: %{String.t() => any()}

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
  @type package_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      step() :: %{
        "componentId" => String.t(),
        "componentType" => String.t()
      }

  """
  @type step() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      exploitability_details() :: %{
        "lastKnownExploitAt" => non_neg_integer()
      }

  """
  @type exploitability_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_details() :: %{
        "awsEc2Instance" => aws_ec2_instance_details(),
        "awsEcrContainerImage" => aws_ecr_container_image_details(),
        "awsLambdaFunction" => aws_lambda_function_details()
      }

  """
  @type resource_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_member_ec2_deep_inspection_status_request() :: %{
        required("accountIds") => list(member_account_ec2_deep_inspection_status()())
      }

  """
  @type batch_update_member_ec2_deep_inspection_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_cis_session_telemetry_response() :: %{}

  """
  @type send_cis_session_telemetry_response() :: %{}

  @typedoc """

  ## Example:

      batch_update_member_ec2_deep_inspection_status_response() :: %{
        "accountIds" => list(member_account_ec2_deep_inspection_status_state()()),
        "failedAccountIds" => list(failed_member_account_ec2_deep_inspection_status_state()())
      }

  """
  @type batch_update_member_ec2_deep_inspection_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_enable() :: %{
        "ec2" => [boolean()],
        "ecr" => [boolean()],
        "lambda" => [boolean()],
        "lambdaCode" => [boolean()]
      }

  """
  @type auto_enable() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_scan_result_details() :: %{
        "accountId" => String.t(),
        "checkDescription" => [String.t()],
        "checkId" => [String.t()],
        "findingArn" => String.t(),
        "level" => list(any()),
        "platform" => [String.t()],
        "remediation" => [String.t()],
        "scanArn" => String.t(),
        "status" => list(any()),
        "statusReason" => [String.t()],
        "targetResourceId" => String.t(),
        "title" => [String.t()]
      }

  """
  @type cis_scan_result_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_cis_scan_report_response() :: %{
        "status" => list(any()),
        "url" => [String.t()]
      }

  """
  @type get_cis_scan_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_cis_session_telemetry_request() :: %{
        required("messages") => list(cis_session_message()()),
        required("scanJobId") => String.t(),
        required("sessionToken") => String.t()
      }

  """
  @type send_cis_session_telemetry_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_delegated_admin_account_request() :: %{
        optional("clientToken") => String.t(),
        required("delegatedAdminAccountId") => String.t()
      }

  """
  @type enable_delegated_admin_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_layer_aggregation_response() :: %{
        "accountId" => String.t(),
        "layerHash" => String.t(),
        "repository" => String.t(),
        "resourceId" => String.t(),
        "severityCounts" => severity_counts()
      }

  """
  @type image_layer_aggregation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lambda_layer_aggregation_response() :: %{
        "accountId" => String.t(),
        "functionName" => String.t(),
        "layerArn" => String.t(),
        "resourceId" => String.t(),
        "severityCounts" => severity_counts()
      }

  """
  @type lambda_layer_aggregation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_ecr_container_image_details() :: %{
        "architecture" => String.t(),
        "author" => [String.t()],
        "imageHash" => String.t(),
        "imageTags" => list(String.t()()),
        "platform" => String.t(),
        "pushedAt" => non_neg_integer(),
        "registry" => String.t(),
        "repositoryName" => String.t()
      }

  """
  @type aws_ecr_container_image_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_member_response() :: %{
        required("accountId") => String.t()
      }

  """
  @type disassociate_member_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      title_aggregation() :: %{
        "findingType" => String.t(),
        "resourceType" => String.t(),
        "sortBy" => String.t(),
        "sortOrder" => String.t(),
        "titles" => list(string_filter()()),
        "vulnerabilityIds" => list(string_filter()())
      }

  """
  @type title_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_org_ec2_deep_inspection_configuration_response() :: %{}

  """
  @type update_org_ec2_deep_inspection_configuration_response() :: %{}

  @typedoc """

  ## Example:

      get_cis_scan_result_details_request() :: %{
        optional("filterCriteria") => cis_scan_result_details_filter_criteria(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        required("accountId") => String.t(),
        required("scanArn") => String.t(),
        required("targetResourceId") => String.t()
      }

  """
  @type get_cis_scan_result_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_encryption_key_response() :: %{}

  """
  @type reset_encryption_key_response() :: %{}

  @typedoc """

  ## Example:

      aws_lambda_function_details() :: %{
        "architectures" => list(String.t()()),
        "codeSha256" => String.t(),
        "executionRoleArn" => String.t(),
        "functionName" => String.t(),
        "lastModifiedAt" => [non_neg_integer()],
        "layers" => list(String.t()()),
        "packageType" => String.t(),
        "runtime" => String.t(),
        "version" => String.t(),
        "vpcConfig" => lambda_vpc_config()
      }

  """
  @type aws_lambda_function_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ec2_scan_mode_state() :: %{
        "scanMode" => String.t(),
        "scanModeStatus" => String.t()
      }

  """
  @type ec2_scan_mode_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_date_filter() :: %{
        "earliestScanStartTime" => [non_neg_integer()],
        "latestScanStartTime" => [non_neg_integer()]
      }

  """
  @type cis_date_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cis_scan_result_details_filter_criteria() :: %{
        "checkIdFilters" => list(cis_string_filter()()),
        "findingArnFilters" => list(cis_string_filter()()),
        "findingStatusFilters" => list(cis_finding_status_filter()()),
        "securityLevelFilters" => list(cis_security_level_filter()()),
        "titleFilters" => list(cis_string_filter()())
      }

  """
  @type cis_scan_result_details_filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_filters_response() :: %{
        optional("nextToken") => String.t(),
        required("filters") => list(filter()())
      }

  """
  @type list_filters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      permission() :: %{
        "operation" => String.t(),
        "service" => String.t()
      }

  """
  @type permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_vulnerabilities_response() :: %{
        "nextToken" => String.t(),
        "vulnerabilities" => list(vulnerability()())
      }

  """
  @type search_vulnerabilities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      free_trial_account_info() :: %{
        "accountId" => String.t(),
        "freeTrialInfo" => list(free_trial_info()())
      }

  """
  @type free_trial_account_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_org_ec2_deep_inspection_configuration_request() :: %{
        required("orgPackagePaths") => list(String.t()())
      }

  """
  @type update_org_ec2_deep_inspection_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_filter_request() :: %{
        required("arn") => String.t()
      }

  """
  @type delete_filter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_ecr_container_aggregation_response() :: %{
        "accountId" => String.t(),
        "architecture" => [String.t()],
        "imageSha" => [String.t()],
        "imageTags" => list(String.t()()),
        "repository" => [String.t()],
        "resourceId" => String.t(),
        "severityCounts" => severity_counts()
      }

  """
  @type aws_ecr_container_aggregation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_state() :: %{
        "accountId" => String.t(),
        "resourceState" => resource_state(),
        "state" => state()
      }

  """
  @type account_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      number_filter() :: %{
        "lowerInclusive" => [float()],
        "upperInclusive" => [float()]
      }

  """
  @type number_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_cis_scans_filter_criteria() :: %{
        "failedChecksFilters" => list(cis_number_filter()()),
        "scanArnFilters" => list(cis_string_filter()()),
        "scanAtFilters" => list(cis_date_filter()()),
        "scanConfigurationArnFilters" => list(cis_string_filter()()),
        "scanNameFilters" => list(cis_string_filter()()),
        "scanStatusFilters" => list(cis_scan_status_filter()()),
        "scheduledByFilters" => list(cis_string_filter()()),
        "targetAccountIdFilters" => list(cis_string_filter()()),
        "targetResourceIdFilters" => list(cis_string_filter()()),
        "targetResourceTagFilters" => list(tag_filter()())
      }

  """
  @type list_cis_scans_filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      map_filter() :: %{
        "comparison" => String.t(),
        "key" => String.t(),
        "value" => String.t()
      }

  """
  @type map_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_filters_request() :: %{
        optional("action") => String.t(),
        optional("arns") => list(String.t()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_filters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_finding_details_response() :: %{
        "errors" => list(finding_details_error()()),
        "findingDetails" => list(finding_detail()())
      }

  """
  @type batch_get_finding_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "details" => resource_details(),
        "id" => String.t(),
        "partition" => String.t(),
        "region" => String.t(),
        "tags" => map(),
        "type" => String.t()
      }

  """
  @type resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ami_aggregation_response() :: %{
        "accountId" => String.t(),
        "affectedInstances" => [float()],
        "ami" => String.t(),
        "severityCounts" => severity_counts()
      }

  """
  @type ami_aggregation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_member_request() :: %{
        required("accountId") => String.t()
      }

  """
  @type disassociate_member_request() :: %{String.t() => any()}

  @type associate_member_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

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

  An HTTP 200 response indicates the association was successfully started, but
  doesn’t indicate whether it was completed. You can check if the association
  completed by using
  [ListMembers](https://docs.aws.amazon.com/inspector/v2/APIReference/API_ListMembers.html) for multiple accounts or
  [GetMembers](https://docs.aws.amazon.com/inspector/v2/APIReference/API_GetMember.html)
  for a single account.
  """
  @spec associate_member(map(), associate_member_request(), list()) ::
          {:ok, associate_member_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_member_errors()}
  def associate_member(%Client{} = client, input, options \\ []) do
    url_path = "/members/associate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, batch_get_account_status_errors()}
  def batch_get_account_status(%Client{} = client, input, options \\ []) do
    url_path = "/status/batch/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves code snippets from findings that Amazon Inspector detected code
  vulnerabilities in.
  """
  @spec batch_get_code_snippet(map(), batch_get_code_snippet_request(), list()) ::
          {:ok, batch_get_code_snippet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_code_snippet_errors()}
  def batch_get_code_snippet(%Client{} = client, input, options \\ []) do
    url_path = "/codesnippet/batchget"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, batch_get_finding_details_errors()}
  def batch_get_finding_details(%Client{} = client, input, options \\ []) do
    url_path = "/findings/details/batch/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, batch_get_free_trial_info_errors()}
  def batch_get_free_trial_info(%Client{} = client, input, options \\ []) do
    url_path = "/freetrialinfo/batchget"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves Amazon Inspector deep inspection activation status of multiple member
  accounts within your organization.

  You must be the delegated administrator of an organization in Amazon Inspector
  to use this API.
  """
  @spec batch_get_member_ec2_deep_inspection_status(
          map(),
          batch_get_member_ec2_deep_inspection_status_request(),
          list()
        ) ::
          {:ok, batch_get_member_ec2_deep_inspection_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_member_ec2_deep_inspection_status_errors()}
  def batch_get_member_ec2_deep_inspection_status(%Client{} = client, input, options \\ []) do
    url_path = "/ec2deepinspectionstatus/member/batch/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Activates or deactivates Amazon Inspector deep inspection for the provided
  member accounts in your organization.

  You must be the delegated administrator of an organization in Amazon Inspector
  to use this API.
  """
  @spec batch_update_member_ec2_deep_inspection_status(
          map(),
          batch_update_member_ec2_deep_inspection_status_request(),
          list()
        ) ::
          {:ok, batch_update_member_ec2_deep_inspection_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_update_member_ec2_deep_inspection_status_errors()}
  def batch_update_member_ec2_deep_inspection_status(%Client{} = client, input, options \\ []) do
    url_path = "/ec2deepinspectionstatus/member/batch/update"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, cancel_findings_report_errors()}
  def cancel_findings_report(%Client{} = client, input, options \\ []) do
    url_path = "/reporting/cancel"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, cancel_sbom_export_errors()}
  def cancel_sbom_export(%Client{} = client, input, options \\ []) do
    url_path = "/sbomexport/cancel"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, create_cis_scan_configuration_errors()}
  def create_cis_scan_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/cis/scan-configuration/create"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a filter resource using specified filter criteria.

  When the filter action is set to `SUPPRESS` this action creates a suppression
  rule.
  """
  @spec create_filter(map(), create_filter_request(), list()) ::
          {:ok, create_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_filter_errors()}
  def create_filter(%Client{} = client, input, options \\ []) do
    url_path = "/filters/create"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a finding report.

  By default only `ACTIVE` findings are returned in the report. To see `SUPRESSED`
  or `CLOSED` findings you must specify a value for the `findingStatus` filter
  criteria.
  """
  @spec create_findings_report(map(), create_findings_report_request(), list()) ::
          {:ok, create_findings_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_findings_report_errors()}
  def create_findings_report(%Client{} = client, input, options \\ []) do
    url_path = "/reporting/create"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, create_sbom_export_errors()}
  def create_sbom_export(%Client{} = client, input, options \\ []) do
    url_path = "/sbomexport/create"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, delete_cis_scan_configuration_errors()}
  def delete_cis_scan_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/cis/scan-configuration/delete"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, delete_filter_errors()}
  def delete_filter(%Client{} = client, input, options \\ []) do
    url_path = "/filters/delete"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, describe_organization_configuration_errors()}
  def describe_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/organizationconfiguration/describe"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disables Amazon Inspector scans for one or more Amazon Web Services accounts.

  Disabling all scan types in an account
  disables the Amazon Inspector service.
  """
  @spec disable(map(), disable_request(), list()) ::
          {:ok, disable_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_errors()}
  def disable(%Client{} = client, input, options \\ []) do
    url_path = "/disable"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, disable_delegated_admin_account_errors()}
  def disable_delegated_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/delegatedadminaccounts/disable"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, disassociate_member_errors()}
  def disassociate_member(%Client{} = client, input, options \\ []) do
    url_path = "/members/disassociate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, enable_errors()}
  def enable(%Client{} = client, input, options \\ []) do
    url_path = "/enable"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, enable_delegated_admin_account_errors()}
  def enable_delegated_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/delegatedadminaccounts/enable"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, get_cis_scan_report_errors()}
  def get_cis_scan_report(%Client{} = client, input, options \\ []) do
    url_path = "/cis/scan/report/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, get_cis_scan_result_details_errors()}
  def get_cis_scan_result_details(%Client{} = client, input, options \\ []) do
    url_path = "/cis/scan-result/details/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, get_configuration_errors()}
  def get_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configuration/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, get_delegated_admin_account_errors()}
  def get_delegated_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/delegatedadminaccounts/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the activation status of Amazon Inspector deep inspection and custom
  paths associated with your account.
  """
  @spec get_ec2_deep_inspection_configuration(
          map(),
          get_ec2_deep_inspection_configuration_request(),
          list()
        ) ::
          {:ok, get_ec2_deep_inspection_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_ec2_deep_inspection_configuration_errors()}
  def get_ec2_deep_inspection_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/ec2deepinspectionconfiguration/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets an encryption key.
  """
  @spec get_encryption_key(map(), String.t(), String.t(), list()) ::
          {:ok, get_encryption_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          | {:error, get_findings_report_status_errors()}
  def get_findings_report_status(%Client{} = client, input, options \\ []) do
    url_path = "/reporting/status/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, get_member_errors()}
  def get_member(%Client{} = client, input, options \\ []) do
    url_path = "/members/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, get_sbom_export_errors()}
  def get_sbom_export(%Client{} = client, input, options \\ []) do
    url_path = "/sbomexport/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists the permissions an account has to configure Amazon Inspector.
  """
  @spec list_account_permissions(map(), list_account_permissions_request(), list()) ::
          {:ok, list_account_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_account_permissions_errors()}
  def list_account_permissions(%Client{} = client, input, options \\ []) do
    url_path = "/accountpermissions/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, list_cis_scan_configurations_errors()}
  def list_cis_scan_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/cis/scan-configuration/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, list_cis_scan_results_aggregated_by_checks_errors()}
  def list_cis_scan_results_aggregated_by_checks(%Client{} = client, input, options \\ []) do
    url_path = "/cis/scan-result/check/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, list_cis_scan_results_aggregated_by_target_resource_errors()}
  def list_cis_scan_results_aggregated_by_target_resource(
        %Client{} = client,
        input,
        options \\ []
      ) do
    url_path = "/cis/scan-result/resource/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, list_cis_scans_errors()}
  def list_cis_scans(%Client{} = client, input, options \\ []) do
    url_path = "/cis/scan/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, list_coverage_errors()}
  def list_coverage(%Client{} = client, input, options \\ []) do
    url_path = "/coverage/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, list_coverage_statistics_errors()}
  def list_coverage_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/coverage/statistics/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, list_delegated_admin_accounts_errors()}
  def list_delegated_admin_accounts(%Client{} = client, input, options \\ []) do
    url_path = "/delegatedadminaccounts/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, list_filters_errors()}
  def list_filters(%Client{} = client, input, options \\ []) do
    url_path = "/filters/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, list_finding_aggregations_errors()}
  def list_finding_aggregations(%Client{} = client, input, options \\ []) do
    url_path = "/findings/aggregation/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, list_findings_errors()}
  def list_findings(%Client{} = client, input, options \\ []) do
    url_path = "/findings/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, list_members_errors()}
  def list_members(%Client{} = client, input, options \\ []) do
    url_path = "/members/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all tags attached to a given resource.
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
  Lists the Amazon Inspector usage totals over the last 30 days.
  """
  @spec list_usage_totals(map(), list_usage_totals_request(), list()) ::
          {:ok, list_usage_totals_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_usage_totals_errors()}
  def list_usage_totals(%Client{} = client, input, options \\ []) do
    url_path = "/usage/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Resets an encryption key.

  After the key is reset your resources will be encrypted by an Amazon Web
  Services owned key.
  """
  @spec reset_encryption_key(map(), reset_encryption_key_request(), list()) ::
          {:ok, reset_encryption_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_encryption_key_errors()}
  def reset_encryption_key(%Client{} = client, input, options \\ []) do
    url_path = "/encryptionkey/reset"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Lists Amazon Inspector coverage details for a specific vulnerability.
  """
  @spec search_vulnerabilities(map(), search_vulnerabilities_request(), list()) ::
          {:ok, search_vulnerabilities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_vulnerabilities_errors()}
  def search_vulnerabilities(%Client{} = client, input, options \\ []) do
    url_path = "/vulnerabilities/search"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """

  Sends a CIS session health.

  This API is used by the Amazon Inspector SSM plugin to communicate with the
  Amazon Inspector service.
  The Amazon Inspector SSM plugin calls this API to start a CIS scan session for
  the scan ID supplied by the service.
  """
  @spec send_cis_session_health(map(), send_cis_session_health_request(), list()) ::
          {:ok, send_cis_session_health_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_cis_session_health_errors()}
  def send_cis_session_health(%Client{} = client, input, options \\ []) do
    url_path = "/cissession/health/send"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  Sends a CIS session telemetry.

  This API is used by the Amazon Inspector SSM plugin to communicate with the
  Amazon Inspector service.
  The Amazon Inspector SSM plugin calls this API to start a CIS scan session for
  the scan ID supplied by the service.
  """
  @spec send_cis_session_telemetry(map(), send_cis_session_telemetry_request(), list()) ::
          {:ok, send_cis_session_telemetry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_cis_session_telemetry_errors()}
  def send_cis_session_telemetry(%Client{} = client, input, options \\ []) do
    url_path = "/cissession/telemetry/send"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  Starts a CIS session.

  This API is used by the Amazon Inspector SSM plugin to communicate with the
  Amazon Inspector service.
  The Amazon Inspector SSM plugin calls this API to start a CIS scan session for
  the scan ID supplied by the service.
  """
  @spec start_cis_session(map(), start_cis_session_request(), list()) ::
          {:ok, start_cis_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_cis_session_errors()}
  def start_cis_session(%Client{} = client, input, options \\ []) do
    url_path = "/cissession/start"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  Stops a CIS session.

  This API is used by the Amazon Inspector SSM plugin to communicate with the
  Amazon Inspector service.
  The Amazon Inspector SSM plugin calls this API to stop a CIS scan session for
  the scan ID supplied by the service.
  """
  @spec stop_cis_session(map(), stop_cis_session_request(), list()) ::
          {:ok, stop_cis_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_cis_session_errors()}
  def stop_cis_session(%Client{} = client, input, options \\ []) do
    url_path = "/cissession/stop"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Adds tags to a resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes tags from a resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
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
          | {:error, update_cis_scan_configuration_errors()}
  def update_cis_scan_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/cis/scan-configuration/update"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates setting configurations for your Amazon Inspector account.

  When you use this API as an Amazon Inspector delegated administrator this
  updates the setting for all accounts you manage. Member accounts in an
  organization cannot update this setting.
  """
  @spec update_configuration(map(), update_configuration_request(), list()) ::
          {:ok, update_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_configuration_errors()}
  def update_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configuration/update"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, update_ec2_deep_inspection_configuration_errors()}
  def update_ec2_deep_inspection_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/ec2deepinspectionconfiguration/update"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an encryption key.

  A `ResourceNotFoundException` means that an Amazon Web Services owned key is
  being used for encryption.
  """
  @spec update_encryption_key(map(), update_encryption_key_request(), list()) ::
          {:ok, update_encryption_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_encryption_key_errors()}
  def update_encryption_key(%Client{} = client, input, options \\ []) do
    url_path = "/encryptionkey/update"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Specifies the action that is to be applied to the findings that match the
  filter.
  """
  @spec update_filter(map(), update_filter_request(), list()) ::
          {:ok, update_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_filter_errors()}
  def update_filter(%Client{} = client, input, options \\ []) do
    url_path = "/filters/update"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the Amazon Inspector deep inspection custom paths for your organization.

  You must be an Amazon Inspector delegated administrator to use this API.
  """
  @spec update_org_ec2_deep_inspection_configuration(
          map(),
          update_org_ec2_deep_inspection_configuration_request(),
          list()
        ) ::
          {:ok, update_org_ec2_deep_inspection_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_org_ec2_deep_inspection_configuration_errors()}
  def update_org_ec2_deep_inspection_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/ec2deepinspectionconfiguration/org/update"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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
          | {:error, update_organization_configuration_errors()}
  def update_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/organizationconfiguration/update"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
