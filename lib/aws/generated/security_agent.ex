# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SecurityAgent do
  @moduledoc """
  AWS Security Agent service documentation.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      create_pentest_output() :: %{
        "agentSpaceId" => [String.t() | atom()],
        "assets" => assets(),
        "createdAt" => [non_neg_integer()],
        "excludeRiskTypes" => list(list(any())()),
        "logConfig" => cloud_watch_log(),
        "pentestId" => [String.t() | atom()],
        "serviceRole" => String.t() | atom(),
        "title" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type create_pentest_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      git_hub_integration_input() :: %{
        "code" => String.t() | atom(),
        "organizationName" => [String.t() | atom()],
        "state" => String.t() | atom()
      }

  """
  @type git_hub_integration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pentest() :: %{
        "agentSpaceId" => [String.t() | atom()],
        "assets" => assets(),
        "codeRemediationStrategy" => list(any()),
        "createdAt" => [non_neg_integer()],
        "excludeRiskTypes" => list(list(any())()),
        "logConfig" => cloud_watch_log(),
        "networkTrafficConfig" => network_traffic_config(),
        "pentestId" => [String.t() | atom()],
        "serviceRole" => String.t() | atom(),
        "title" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()],
        "vpcConfig" => vpc_config()
      }

  """
  @type pentest() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      artifact_metadata_item() :: %{
        "agentSpaceId" => String.t() | atom(),
        "artifactId" => String.t() | atom(),
        "fileName" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type artifact_metadata_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task() :: %{
        "agentSpaceId" => [String.t() | atom()],
        "categories" => list(category()),
        "createdAt" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "executionStatus" => list(any()),
        "logsLocation" => log_location(),
        "pentestId" => [String.t() | atom()],
        "pentestJobId" => [String.t() | atom()],
        "riskType" => list(any()),
        "targetEndpoint" => endpoint(),
        "taskId" => [String.t() | atom()],
        "title" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type task() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_agent_space_input() :: %{
        optional("awsResources") => aws_resources(),
        optional("codeReviewSettings") => code_review_settings(),
        optional("description") => [String.t() | atom()],
        optional("name") => String.t() | atom(),
        optional("targetDomainIds") => list([String.t() | atom()]()),
        required("agentSpaceId") => String.t() | atom()
      }

  """
  @type update_agent_space_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_agent_spaces_input() :: %{
        required("agentSpaceIds") => list(String.t() | atom())
      }

  """
  @type batch_get_agent_spaces_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_space_summary() :: %{
        "agentSpaceId" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "name" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type agent_space_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_membership_response() :: %{}

  """
  @type delete_membership_response() :: %{}

  @typedoc """

  ## Example:

      batch_get_target_domains_input() :: %{
        required("targetDomainIds") => list([String.t() | atom()]())
      }

  """
  @type batch_get_target_domains_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_memberships_request() :: %{
        optional("maxResults") => integer(),
        optional("memberType") => list(any()),
        optional("nextToken") => String.t() | atom(),
        required("agentSpaceId") => String.t() | atom(),
        required("applicationId") => String.t() | atom()
      }

  """
  @type list_memberships_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_pentest_input() :: %{
        optional("assets") => assets(),
        optional("codeRemediationStrategy") => list(any()),
        optional("excludeRiskTypes") => list(list(any())()),
        optional("logConfig") => cloud_watch_log(),
        optional("networkTrafficConfig") => network_traffic_config(),
        optional("serviceRole") => String.t() | atom(),
        optional("vpcConfig") => vpc_config(),
        required("agentSpaceId") => [String.t() | atom()],
        required("title") => [String.t() | atom()]
      }

  """
  @type create_pentest_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_artifact_input() :: %{
        required("agentSpaceId") => String.t() | atom(),
        required("artifactId") => String.t() | atom()
      }

  """
  @type get_artifact_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_artifact_output() :: %{}

  """
  @type delete_artifact_output() :: %{}

  @typedoc """

  ## Example:

      list_agent_spaces_output() :: %{
        "agentSpaceSummaries" => list(agent_space_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_agent_spaces_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_metadata() :: %{
        "email" => String.t() | atom(),
        "username" => [String.t() | atom()]
      }

  """
  @type user_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_artifact_input() :: %{
        required("agentSpaceId") => String.t() | atom(),
        required("artifactId") => String.t() | atom()
      }

  """
  @type delete_artifact_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      id_c_configuration() :: %{
        "idcApplicationArn" => String.t() | atom(),
        "idcInstanceArn" => String.t() | atom()
      }

  """
  @type id_c_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_summary() :: %{
        "agentSpaceId" => [String.t() | atom()],
        "confidence" => list(any()),
        "createdAt" => [non_neg_integer()],
        "findingId" => [String.t() | atom()],
        "name" => [String.t() | atom()],
        "pentestId" => [String.t() | atom()],
        "pentestJobId" => [String.t() | atom()],
        "riskLevel" => list(any()),
        "riskType" => [String.t() | atom()],
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type finding_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pentest_jobs_for_pentest_output() :: %{
        "nextToken" => String.t() | atom(),
        "pentestJobSummaries" => list(pentest_job_summary())
      }

  """
  @type list_pentest_jobs_for_pentest_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      discovered_endpoint() :: %{
        "agentSpaceId" => [String.t() | atom()],
        "description" => [String.t() | atom()],
        "evidence" => [String.t() | atom()],
        "operation" => [String.t() | atom()],
        "pentestJobId" => [String.t() | atom()],
        "taskId" => [String.t() | atom()],
        "uri" => [String.t() | atom()]
      }

  """
  @type discovered_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_pentests_input() :: %{
        required("agentSpaceId") => [String.t() | atom()],
        required("pentestIds") => list([String.t() | atom()]())
      }

  """
  @type batch_get_pentests_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_discovered_endpoints_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("prefix") => [String.t() | atom()],
        required("agentSpaceId") => [String.t() | atom()],
        required("pentestJobId") => [String.t() | atom()]
      }

  """
  @type list_discovered_endpoints_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      integrated_resource_input_item() :: %{
        "capabilities" => list(),
        "resource" => list()
      }

  """
  @type integrated_resource_input_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_integration_input() :: %{
        required("integrationId") => String.t() | atom()
      }

  """
  @type delete_integration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      target_domain_summary() :: %{
        "domainName" => [String.t() | atom()],
        "targetDomainId" => String.t() | atom(),
        "verificationStatus" => list(any())
      }

  """
  @type target_domain_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pentest_job() :: %{
        "actors" => list(actor()),
        "allowedDomains" => list(endpoint()),
        "codeRemediationStrategy" => list(any()),
        "createdAt" => [non_neg_integer()],
        "documents" => list(document_info()),
        "endpoints" => list(endpoint()),
        "errorInformation" => error_information(),
        "excludePaths" => list(endpoint()),
        "excludeRiskTypes" => list(list(any())()),
        "executionContext" => list(execution_context()),
        "integratedRepositories" => list(integrated_repository()),
        "logConfig" => cloud_watch_log(),
        "networkTrafficConfig" => network_traffic_config(),
        "overview" => [String.t() | atom()],
        "pentestId" => [String.t() | atom()],
        "pentestJobId" => [String.t() | atom()],
        "serviceRole" => String.t() | atom(),
        "sourceCode" => list(source_code_repository()),
        "status" => list(any()),
        "steps" => list(step()),
        "title" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()],
        "vpcConfig" => vpc_config()
      }

  """
  @type pentest_job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_agent_spaces_output() :: %{
        "agentSpaces" => list(agent_space()),
        "notFound" => list(String.t() | atom())
      }

  """
  @type batch_get_agent_spaces_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_pentest_job_input() :: %{
        required("agentSpaceId") => [String.t() | atom()],
        required("pentestJobId") => [String.t() | atom()]
      }

  """
  @type stop_pentest_job_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_summary() :: %{
        "agentSpaceId" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "executionStatus" => list(any()),
        "pentestId" => [String.t() | atom()],
        "pentestJobId" => [String.t() | atom()],
        "riskType" => list(any()),
        "taskId" => [String.t() | atom()],
        "title" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type task_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pentests_output() :: %{
        "nextToken" => String.t() | atom(),
        "pentestSummaries" => list(pentest_summary())
      }

  """
  @type list_pentests_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_traffic_config() :: %{
        "customHeaders" => list(custom_header()),
        "rules" => list(network_traffic_rule())
      }

  """
  @type network_traffic_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      log_location() :: %{
        "cloudWatchLog" => cloud_watch_log(),
        "logType" => list(any())
      }

  """
  @type log_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_pentest_jobs_input() :: %{
        required("agentSpaceId") => [String.t() | atom()],
        required("pentestJobIds") => list([String.t() | atom()]())
      }

  """
  @type batch_get_pentest_jobs_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_target_domain_input() :: %{
        optional("tags") => map(),
        required("targetDomainName") => [String.t() | atom()],
        required("verificationMethod") => list(any())
      }

  """
  @type create_target_domain_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      integration_summary() :: %{
        "displayName" => [String.t() | atom()],
        "installationId" => [String.t() | atom()],
        "integrationId" => [String.t() | atom()],
        "provider" => list(any()),
        "providerType" => list(any())
      }

  """
  @type integration_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_target_domains_output() :: %{
        "nextToken" => String.t() | atom(),
        "targetDomainSummaries" => list(target_domain_summary())
      }

  """
  @type list_target_domains_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_integration_input() :: %{
        optional("kmsKeyId") => String.t() | atom(),
        optional("tags") => map(),
        required("input") => list(),
        required("integrationDisplayName") => [String.t() | atom()],
        required("provider") => list(any())
      }

  """
  @type create_integration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_artifact_output() :: %{
        "artifactId" => String.t() | atom()
      }

  """
  @type add_artifact_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      git_hub_repository_resource() :: %{
        "name" => String.t() | atom(),
        "owner" => String.t() | atom()
      }

  """
  @type git_hub_repository_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pentest_job_tasks_input() :: %{
        optional("categoryName") => [String.t() | atom()],
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("pentestJobId") => [String.t() | atom()],
        optional("stepName") => list(any()),
        required("agentSpaceId") => [String.t() | atom()]
      }

  """
  @type list_pentest_job_tasks_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_target_domain_input() :: %{
        required("targetDomainId") => String.t() | atom(),
        required("verificationMethod") => list(any())
      }

  """
  @type update_target_domain_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      http_verification() :: %{
        "routePath" => [String.t() | atom()],
        "token" => [String.t() | atom()]
      }

  """
  @type http_verification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_remediation_task_details() :: %{
        "codeDiffLink" => [String.t() | atom()],
        "pullRequestLink" => [String.t() | atom()],
        "repoName" => [String.t() | atom()]
      }

  """
  @type code_remediation_task_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_integrated_resources_input() :: %{
        optional("integrationId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("resourceType") => list(any()),
        required("agentSpaceId") => String.t() | atom()
      }

  """
  @type list_integrated_resources_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_config() :: %{
        "role" => list(any())
      }

  """
  @type user_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_space() :: %{
        "agentSpaceId" => String.t() | atom(),
        "awsResources" => aws_resources(),
        "codeReviewSettings" => code_review_settings(),
        "createdAt" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "kmsKeyId" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "targetDomainIds" => list([String.t() | atom()]()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type agent_space() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_integration_output() :: %{
        "displayName" => [String.t() | atom()],
        "installationId" => [String.t() | atom()],
        "integrationId" => String.t() | atom(),
        "kmsKeyId" => String.t() | atom(),
        "provider" => list(any()),
        "providerType" => list(any())
      }

  """
  @type get_integration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_pentest_input() :: %{
        optional("assets") => assets(),
        optional("codeRemediationStrategy") => list(any()),
        optional("excludeRiskTypes") => list(list(any())()),
        optional("logConfig") => cloud_watch_log(),
        optional("networkTrafficConfig") => network_traffic_config(),
        optional("serviceRole") => String.t() | atom(),
        optional("title") => [String.t() | atom()],
        optional("vpcConfig") => vpc_config(),
        required("agentSpaceId") => [String.t() | atom()],
        required("pentestId") => [String.t() | atom()]
      }

  """
  @type update_pentest_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_integrated_resources_output() :: %{
        "integratedResourceSummaries" => list(integrated_resource_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_integrated_resources_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_pentest_output() :: %{
        "agentSpaceId" => [String.t() | atom()],
        "assets" => assets(),
        "createdAt" => [non_neg_integer()],
        "excludeRiskTypes" => list(list(any())()),
        "logConfig" => cloud_watch_log(),
        "pentestId" => [String.t() | atom()],
        "serviceRole" => String.t() | atom(),
        "title" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_pentest_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      integrated_repository() :: %{
        "integrationId" => [String.t() | atom()],
        "providerResourceId" => [String.t() | atom()]
      }

  """
  @type integrated_repository() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_pentest_jobs_output() :: %{
        "notFound" => list([String.t() | atom()]()),
        "pentestJobs" => list(pentest_job())
      }

  """
  @type batch_get_pentest_jobs_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_integrated_resources_output() :: %{}

  """
  @type update_integrated_resources_output() :: %{}

  @typedoc """

  ## Example:

      delete_target_domain_output() :: %{
        "targetDomainId" => String.t() | atom()
      }

  """
  @type delete_target_domain_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pentests_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("agentSpaceId") => [String.t() | atom()]
      }

  """
  @type list_pentests_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_agent_space_output() :: %{
        "agentSpaceId" => String.t() | atom(),
        "awsResources" => aws_resources(),
        "codeReviewSettings" => code_review_settings(),
        "createdAt" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "name" => String.t() | atom(),
        "targetDomainIds" => list([String.t() | atom()]()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_agent_space_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_agent_space_input() :: %{
        required("agentSpaceId") => String.t() | atom()
      }

  """
  @type delete_agent_space_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc_config() :: %{
        "securityGroupArns" => list(String.t() | atom()),
        "subnetArns" => list(String.t() | atom()),
        "vpcArn" => String.t() | atom()
      }

  """
  @type vpc_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding() :: %{
        "agentSpaceId" => [String.t() | atom()],
        "attackScript" => [String.t() | atom()],
        "codeRemediationTask" => code_remediation_task(),
        "confidence" => list(any()),
        "createdAt" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "findingId" => [String.t() | atom()],
        "lastUpdatedBy" => [String.t() | atom()],
        "name" => [String.t() | atom()],
        "pentestId" => [String.t() | atom()],
        "pentestJobId" => [String.t() | atom()],
        "reasoning" => [String.t() | atom()],
        "riskLevel" => list(any()),
        "riskScore" => [String.t() | atom()],
        "riskType" => [String.t() | atom()],
        "status" => list(any()),
        "taskId" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type finding() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      authentication() :: %{
        "providerType" => list(any()),
        "value" => [String.t() | atom()]
      }

  """
  @type authentication() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_finding_input() :: %{
        optional("riskLevel") => list(any()),
        optional("status") => list(any()),
        required("agentSpaceId") => [String.t() | atom()],
        required("findingId") => [String.t() | atom()]
      }

  """
  @type update_finding_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("defaultKmsKeyId") => String.t() | atom(),
        optional("idcInstanceArn") => String.t() | atom(),
        optional("roleArn") => String.t() | atom(),
        optional("tags") => map()
      }

  """
  @type create_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_findings_input() :: %{
        optional("confidence") => list(any()),
        optional("maxResults") => integer(),
        optional("name") => [String.t() | atom()],
        optional("nextToken") => String.t() | atom(),
        optional("riskLevel") => list(any()),
        optional("riskType") => [String.t() | atom()],
        optional("status") => list(any()),
        required("agentSpaceId") => [String.t() | atom()],
        required("pentestJobId") => [String.t() | atom()]
      }

  """
  @type list_findings_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      membership_summary() :: %{
        "agentSpaceId" => String.t() | atom(),
        "applicationId" => String.t() | atom(),
        "config" => list(),
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t() | atom()],
        "memberType" => list(any()),
        "membershipId" => String.t() | atom(),
        "metadata" => list(),
        "updatedAt" => [non_neg_integer()],
        "updatedBy" => [String.t() | atom()]
      }

  """
  @type membership_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "path" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_finding_output() :: %{}

  """
  @type update_finding_output() :: %{}

  @typedoc """

  ## Example:

      git_hub_resource_capabilities() :: %{
        "leaveComments" => [boolean()],
        "remediateCode" => [boolean()]
      }

  """
  @type git_hub_resource_capabilities() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_response() :: %{
        "applicationId" => String.t() | atom()
      }

  """
  @type create_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_discovered_endpoints_output() :: %{
        "discoveredEndpoints" => list(discovered_endpoint()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_discovered_endpoints_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      git_hub_repository_metadata() :: %{
        "accessType" => list(any()),
        "name" => String.t() | atom(),
        "owner" => String.t() | atom(),
        "providerResourceId" => String.t() | atom()
      }

  """
  @type git_hub_repository_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_pentest_job_output() :: %{
        "agentSpaceId" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "pentestId" => [String.t() | atom()],
        "pentestJobId" => [String.t() | atom()],
        "status" => list(any()),
        "title" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type start_pentest_job_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_agent_space_output() :: %{
        "agentSpaceId" => String.t() | atom()
      }

  """
  @type delete_agent_space_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      verification_details() :: %{
        "dnsTxt" => dns_verification(),
        "httpRoute" => http_verification(),
        "method" => list(any())
      }

  """
  @type verification_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_integrations_output() :: %{
        "integrationSummaries" => list(integration_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_integrations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_code_repository() :: %{
        "s3Location" => [String.t() | atom()]
      }

  """
  @type source_code_repository() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      endpoint() :: %{
        "uri" => [String.t() | atom()]
      }

  """
  @type endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      update_application_request() :: %{
        optional("defaultKmsKeyId") => String.t() | atom(),
        optional("roleArn") => String.t() | atom(),
        required("applicationId") => String.t() | atom()
      }

  """
  @type update_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_application_response() :: %{
        "applicationId" => String.t() | atom()
      }

  """
  @type update_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_artifact_input() :: %{
        required("agentSpaceId") => String.t() | atom(),
        required("artifactContent") => [binary()],
        required("artifactType") => list(any()),
        required("fileName") => [String.t() | atom()]
      }

  """
  @type add_artifact_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_agent_space_output() :: %{
        "agentSpaceId" => String.t() | atom(),
        "awsResources" => aws_resources(),
        "codeReviewSettings" => code_review_settings(),
        "createdAt" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "kmsKeyId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "targetDomainIds" => list([String.t() | atom()]()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type create_agent_space_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_artifacts_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("agentSpaceId") => String.t() | atom()
      }

  """
  @type list_artifacts_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_response() :: %{
        "applicationId" => String.t() | atom(),
        "applicationName" => [String.t() | atom()],
        "defaultKmsKeyId" => String.t() | atom(),
        "domain" => String.t() | atom(),
        "idcConfiguration" => id_c_configuration(),
        "roleArn" => String.t() | atom()
      }

  """
  @type get_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_artifact_output() :: %{
        "agentSpaceId" => String.t() | atom(),
        "artifact" => artifact(),
        "artifactId" => String.t() | atom(),
        "fileName" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_artifact_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_pentest_job_tasks_output() :: %{
        "notFound" => list([String.t() | atom()]()),
        "tasks" => list(task())
      }

  """
  @type batch_get_pentest_job_tasks_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_findings_output() :: %{
        "findingsSummaries" => list(finding_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_findings_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_target_domains_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_target_domains_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_integrated_resources_input() :: %{
        required("agentSpaceId") => String.t() | atom(),
        required("integrationId") => String.t() | atom(),
        required("items") => list(integrated_resource_input_item())
      }

  """
  @type update_integrated_resources_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_agent_space_input() :: %{
        optional("awsResources") => aws_resources(),
        optional("codeReviewSettings") => code_review_settings(),
        optional("description") => [String.t() | atom()],
        optional("kmsKeyId") => String.t() | atom(),
        optional("tags") => map(),
        optional("targetDomainIds") => list([String.t() | atom()]()),
        required("name") => String.t() | atom()
      }

  """
  @type create_agent_space_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_integration_output() :: %{}

  """
  @type delete_integration_output() :: %{}

  @typedoc """

  ## Example:

      batch_get_findings_output() :: %{
        "findings" => list(finding()),
        "notFound" => list([String.t() | atom()]())
      }

  """
  @type batch_get_findings_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pentest_jobs_for_pentest_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("agentSpaceId") => [String.t() | atom()],
        required("pentestId") => [String.t() | atom()]
      }

  """
  @type list_pentest_jobs_for_pentest_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_applications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      artifact_summary() :: %{
        "artifactId" => String.t() | atom(),
        "artifactType" => list(any()),
        "fileName" => [String.t() | atom()]
      }

  """
  @type artifact_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_target_domain_output() :: %{
        "createdAt" => [non_neg_integer()],
        "domainName" => [String.t() | atom()],
        "targetDomainId" => String.t() | atom(),
        "verificationDetails" => verification_details(),
        "verificationStatus" => list(any()),
        "verifiedAt" => [non_neg_integer()]
      }

  """
  @type update_target_domain_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      verify_target_domain_input() :: %{
        required("targetDomainId") => String.t() | atom()
      }

  """
  @type verify_target_domain_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pentest_summary() :: %{
        "agentSpaceId" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "pentestId" => [String.t() | atom()],
        "title" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type pentest_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_memberships_response() :: %{
        "membershipSummaries" => list(membership_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_memberships_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_integration_output() :: %{
        "integrationId" => String.t() | atom()
      }

  """
  @type create_integration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pentest_job_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "pentestId" => [String.t() | atom()],
        "pentestJobId" => [String.t() | atom()],
        "status" => list(any()),
        "title" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type pentest_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_code_remediation_input() :: %{
        required("agentSpaceId") => [String.t() | atom()],
        required("findingIds") => list([String.t() | atom()]()),
        required("pentestJobId") => [String.t() | atom()]
      }

  """
  @type start_code_remediation_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dns_verification() :: %{
        "dnsRecordName" => [String.t() | atom()],
        "dnsRecordType" => list(any()),
        "token" => [String.t() | atom()]
      }

  """
  @type dns_verification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_review_settings() :: %{
        "controlsScanning" => [boolean()],
        "generalPurposeScanning" => [boolean()]
      }

  """
  @type code_review_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_pentests_output() :: %{
        "notFound" => list([String.t() | atom()]()),
        "pentests" => list(pentest())
      }

  """
  @type batch_get_pentests_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_pentest_job_input() :: %{
        required("agentSpaceId") => [String.t() | atom()],
        required("pentestId") => [String.t() | atom()]
      }

  """
  @type start_pentest_job_input() :: %{(String.t() | atom()) => any()}

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

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      initiate_provider_registration_output() :: %{
        "csrfState" => String.t() | atom(),
        "redirectTo" => String.t() | atom()
      }

  """
  @type initiate_provider_registration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      integrated_resource_summary() :: %{
        "capabilities" => list(),
        "integrationId" => String.t() | atom(),
        "resource" => list()
      }

  """
  @type integrated_resource_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_findings_input() :: %{
        required("agentSpaceId") => [String.t() | atom()],
        required("findingIds") => list([String.t() | atom()]())
      }

  """
  @type batch_get_findings_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_target_domain_output() :: %{
        "createdAt" => [non_neg_integer()],
        "domainName" => [String.t() | atom()],
        "targetDomainId" => String.t() | atom(),
        "verificationDetails" => verification_details(),
        "verificationStatus" => list(any()),
        "verifiedAt" => [non_neg_integer()]
      }

  """
  @type create_target_domain_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_pentest_failure() :: %{
        "pentestId" => [String.t() | atom()],
        "reason" => [String.t() | atom()]
      }

  """
  @type delete_pentest_failure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      application_summary() :: %{
        "applicationId" => String.t() | atom(),
        "applicationName" => [String.t() | atom()],
        "defaultKmsKeyId" => String.t() | atom(),
        "domain" => String.t() | atom()
      }

  """
  @type application_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      actor() :: %{
        "authentication" => authentication(),
        "description" => [String.t() | atom()],
        "identifier" => [String.t() | atom()],
        "uris" => list([String.t() | atom()]())
      }

  """
  @type actor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_traffic_rule() :: %{
        "effect" => list(any()),
        "networkTrafficRuleType" => list(any()),
        "pattern" => [String.t() | atom()]
      }

  """
  @type network_traffic_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      category() :: %{
        "isPrimary" => [boolean()],
        "name" => [String.t() | atom()]
      }

  """
  @type category() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cloud_watch_log() :: %{
        "logGroup" => [String.t() | atom()],
        "logStream" => [String.t() | atom()]
      }

  """
  @type cloud_watch_log() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_membership_request() :: %{
        optional("config") => list(),
        required("agentSpaceId") => String.t() | atom(),
        required("applicationId") => String.t() | atom(),
        required("memberType") => list(any()),
        required("membershipId") => String.t() | atom()
      }

  """
  @type create_membership_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      assets() :: %{
        "actors" => list(actor()),
        "documents" => list(document_info()),
        "endpoints" => list(endpoint()),
        "integratedRepositories" => list(integrated_repository()),
        "sourceCode" => list(source_code_repository())
      }

  """
  @type assets() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_target_domains_output() :: %{
        "notFound" => list([String.t() | atom()]()),
        "targetDomains" => list(target_domain())
      }

  """
  @type batch_get_target_domains_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_response() :: %{
        "applicationSummaries" => list(application_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_applications_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_integration_input() :: %{
        required("integrationId") => String.t() | atom()
      }

  """
  @type get_integration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_artifact_metadata_input() :: %{
        required("agentSpaceId") => String.t() | atom(),
        required("artifactIds") => list(String.t() | atom())
      }

  """
  @type batch_get_artifact_metadata_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_resources() :: %{
        "iamRoles" => list(String.t() | atom()),
        "lambdaFunctionArns" => list(String.t() | atom()),
        "logGroups" => list(String.t() | atom()),
        "s3Buckets" => list(String.t() | atom()),
        "secretArns" => list(String.t() | atom()),
        "vpcs" => list(vpc_config())
      }

  """
  @type aws_resources() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_agent_spaces_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_agent_spaces_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_artifacts_output() :: %{
        "artifactSummaries" => list(artifact_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_artifacts_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      verify_target_domain_output() :: %{
        "createdAt" => [non_neg_integer()],
        "domainName" => [String.t() | atom()],
        "status" => list(any()),
        "targetDomainId" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()],
        "verifiedAt" => [non_neg_integer()]
      }

  """
  @type verify_target_domain_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_information() :: %{
        "code" => list(any()),
        "message" => [String.t() | atom()]
      }

  """
  @type error_information() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      artifact() :: %{
        "contents" => [String.t() | atom()],
        "type" => list(any())
      }

  """
  @type artifact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      step() :: %{
        "createdAt" => [non_neg_integer()],
        "name" => list(any()),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_pentest_job_output() :: %{}

  """
  @type stop_pentest_job_output() :: %{}

  @typedoc """

  ## Example:

      delete_membership_request() :: %{
        optional("memberType") => list(any()),
        required("agentSpaceId") => String.t() | atom(),
        required("applicationId") => String.t() | atom(),
        required("membershipId") => String.t() | atom()
      }

  """
  @type delete_membership_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_code_remediation_output() :: %{}

  """
  @type start_code_remediation_output() :: %{}

  @typedoc """

  ## Example:

      batch_get_pentest_job_tasks_input() :: %{
        required("agentSpaceId") => [String.t() | atom()],
        required("taskIds") => list([String.t() | atom()]())
      }

  """
  @type batch_get_pentest_job_tasks_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_target_domain_input() :: %{
        required("targetDomainId") => String.t() | atom()
      }

  """
  @type delete_target_domain_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_header() :: %{
        "name" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }

  """
  @type custom_header() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_remediation_task() :: %{
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "taskDetails" => list(code_remediation_task_details())
      }

  """
  @type code_remediation_task() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_membership_response() :: %{}

  """
  @type create_membership_response() :: %{}

  @typedoc """

  ## Example:

      execution_context() :: %{
        "context" => [String.t() | atom()],
        "contextType" => list(any()),
        "timestamp" => [non_neg_integer()]
      }

  """
  @type execution_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_request() :: %{
        required("applicationId") => String.t() | atom()
      }

  """
  @type get_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_integrations_input() :: %{
        optional("filter") => list(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_integrations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      document_info() :: %{
        "artifactId" => [String.t() | atom()],
        "s3Location" => [String.t() | atom()]
      }

  """
  @type document_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_pentests_output() :: %{
        "deleted" => list(pentest()),
        "failed" => list(delete_pentest_failure())
      }

  """
  @type batch_delete_pentests_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pentest_job_tasks_output() :: %{
        "nextToken" => String.t() | atom(),
        "taskSummaries" => list(task_summary())
      }

  """
  @type list_pentest_job_tasks_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_artifact_metadata_output() :: %{
        "artifactMetadataList" => list(artifact_metadata_item())
      }

  """
  @type batch_get_artifact_metadata_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      initiate_provider_registration_input() :: %{
        required("provider") => list(any())
      }

  """
  @type initiate_provider_registration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_application_request() :: %{
        required("applicationId") => String.t() | atom()
      }

  """
  @type delete_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_pentests_input() :: %{
        required("agentSpaceId") => [String.t() | atom()],
        required("pentestIds") => list([String.t() | atom()]())
      }

  """
  @type batch_delete_pentests_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      target_domain() :: %{
        "createdAt" => [non_neg_integer()],
        "domainName" => [String.t() | atom()],
        "targetDomainId" => String.t() | atom(),
        "verificationDetails" => verification_details(),
        "verificationStatus" => list(any()),
        "verifiedAt" => [non_neg_integer()]
      }

  """
  @type target_domain() :: %{(String.t() | atom()) => any()}

  @type add_artifact_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_get_artifact_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_integration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_artifact_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_integration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_artifact_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_integration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type initiate_provider_registration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_artifacts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_integrated_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_integrations_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_integrated_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2025-09-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "securityagent",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SecurityAgent",
      signature_version: "v4",
      signing_name: "securityagent",
      target_prefix: nil
    }
  end

  @doc """
  Adds an Artifact for the given agent space
  """
  @spec add_artifact(map(), add_artifact_input(), list()) ::
          {:ok, add_artifact_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_artifact_errors()}
  def add_artifact(%Client{} = client, input, options \\ []) do
    url_path = "/AddArtifact"
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
  Deletes multiple pentests in a single request
  """
  @spec batch_delete_pentests(map(), batch_delete_pentests_input(), list()) ::
          {:ok, batch_delete_pentests_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def batch_delete_pentests(%Client{} = client, input, options \\ []) do
    url_path = "/BatchDeletePentests"
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
  Retrieves multiple agent spaces in a single request
  """
  @spec batch_get_agent_spaces(map(), batch_get_agent_spaces_input(), list()) ::
          {:ok, batch_get_agent_spaces_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def batch_get_agent_spaces(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGetAgentSpaces"
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
  Retrieve the list of artifact metadata for the given agent space
  """
  @spec batch_get_artifact_metadata(map(), batch_get_artifact_metadata_input(), list()) ::
          {:ok, batch_get_artifact_metadata_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_artifact_metadata_errors()}
  def batch_get_artifact_metadata(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGetArtifactMetadata"
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
  Retrieves multiple findings in a single request
  """
  @spec batch_get_findings(map(), batch_get_findings_input(), list()) ::
          {:ok, batch_get_findings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def batch_get_findings(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGetFindings"
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
  Retrieves multiple tasks for a pentest job in a single request
  """
  @spec batch_get_pentest_job_tasks(map(), batch_get_pentest_job_tasks_input(), list()) ::
          {:ok, batch_get_pentest_job_tasks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def batch_get_pentest_job_tasks(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGetPentestJobTasks"
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
  Retrieves multiple pentest jobs in a single request
  """
  @spec batch_get_pentest_jobs(map(), batch_get_pentest_jobs_input(), list()) ::
          {:ok, batch_get_pentest_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def batch_get_pentest_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGetPentestJobs"
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
  Retrieves multiple pentests in a single request
  """
  @spec batch_get_pentests(map(), batch_get_pentests_input(), list()) ::
          {:ok, batch_get_pentests_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def batch_get_pentests(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGetPentests"
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
  Retrieves multiple target domains in a single request
  """
  @spec batch_get_target_domains(map(), batch_get_target_domains_input(), list()) ::
          {:ok, batch_get_target_domains_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def batch_get_target_domains(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGetTargetDomains"
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
  Creates an agent space record
  """
  @spec create_agent_space(map(), create_agent_space_input(), list()) ::
          {:ok, create_agent_space_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def create_agent_space(%Client{} = client, input, options \\ []) do
    url_path = "/CreateAgentSpace"
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
  Creates a new application
  """
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/CreateApplication"
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
  Creates the Integration of the Security Agent App with an external Provider
  """
  @spec create_integration(map(), create_integration_input(), list()) ::
          {:ok, create_integration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_integration_errors()}
  def create_integration(%Client{} = client, input, options \\ []) do
    url_path = "/CreateIntegration"
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
  Adds a single member to an agent space with specified role
  """
  @spec create_membership(map(), create_membership_request(), list()) ::
          {:ok, create_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def create_membership(%Client{} = client, input, options \\ []) do
    url_path = "/CreateMembership"
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
  Creates a new pentest configuration
  """
  @spec create_pentest(map(), create_pentest_input(), list()) ::
          {:ok, create_pentest_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def create_pentest(%Client{} = client, input, options \\ []) do
    url_path = "/CreatePentest"
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
  Creates a target domain record
  """
  @spec create_target_domain(map(), create_target_domain_input(), list()) ::
          {:ok, create_target_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def create_target_domain(%Client{} = client, input, options \\ []) do
    url_path = "/CreateTargetDomain"
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
  Deletes an agent space record
  """
  @spec delete_agent_space(map(), delete_agent_space_input(), list()) ::
          {:ok, delete_agent_space_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def delete_agent_space(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteAgentSpace"
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
  Deletes an application
  """
  @spec delete_application(map(), delete_application_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def delete_application(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteApplication"
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
  Delete an Artifact from the given agent space
  """
  @spec delete_artifact(map(), delete_artifact_input(), list()) ::
          {:ok, delete_artifact_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_artifact_errors()}
  def delete_artifact(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteArtifact"
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
  Deletes the Integration of the Security Agent App with an external Provider
  """
  @spec delete_integration(map(), delete_integration_input(), list()) ::
          {:ok, delete_integration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_integration_errors()}
  def delete_integration(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteIntegration"
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
  Removes a single member associated to an agent space
  """
  @spec delete_membership(map(), delete_membership_request(), list()) ::
          {:ok, delete_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def delete_membership(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteMembership"
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
  Deletes a target domain record
  """
  @spec delete_target_domain(map(), delete_target_domain_input(), list()) ::
          {:ok, delete_target_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def delete_target_domain(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteTargetDomain"
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
  Retrieves application details by application ID
  """
  @spec get_application(map(), get_application_request(), list()) ::
          {:ok, get_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def get_application(%Client{} = client, input, options \\ []) do
    url_path = "/GetApplication"
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
  Retrieve an Artifact for the given agent space
  """
  @spec get_artifact(map(), get_artifact_input(), list()) ::
          {:ok, get_artifact_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_artifact_errors()}
  def get_artifact(%Client{} = client, input, options \\ []) do
    url_path = "/GetArtifact"
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
  Gets Integration metadata from the provided id
  """
  @spec get_integration(map(), get_integration_input(), list()) ::
          {:ok, get_integration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_integration_errors()}
  def get_integration(%Client{} = client, input, options \\ []) do
    url_path = "/GetIntegration"
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
  Initiates the registration of Security Agent App for an external Provider
  """
  @spec initiate_provider_registration(map(), initiate_provider_registration_input(), list()) ::
          {:ok, initiate_provider_registration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, initiate_provider_registration_errors()}
  def initiate_provider_registration(%Client{} = client, input, options \\ []) do
    url_path = "/oauth2/provider/register"
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
  Lists agent spaces
  """
  @spec list_agent_spaces(map(), list_agent_spaces_input(), list()) ::
          {:ok, list_agent_spaces_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_agent_spaces(%Client{} = client, input, options \\ []) do
    url_path = "/ListAgentSpaces"
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
  Lists all applications in the account
  """
  @spec list_applications(map(), list_applications_request(), list()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_applications(%Client{} = client, input, options \\ []) do
    url_path = "/ListApplications"
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
  Lists the artifacts for the associated agent space
  """
  @spec list_artifacts(map(), list_artifacts_input(), list()) ::
          {:ok, list_artifacts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_artifacts_errors()}
  def list_artifacts(%Client{} = client, input, options \\ []) do
    url_path = "/ListArtifacts"
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
  Lists discovered endpoints associated with a pentest job with optional URI
  prefix filtering
  """
  @spec list_discovered_endpoints(map(), list_discovered_endpoints_input(), list()) ::
          {:ok, list_discovered_endpoints_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_discovered_endpoints(%Client{} = client, input, options \\ []) do
    url_path = "/ListDiscoveredEndpoints"
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
  Lists findings with filtering and pagination support.

  When filters are applied, the actual number of results returned may be less than
  the specified limit
  """
  @spec list_findings(map(), list_findings_input(), list()) ::
          {:ok, list_findings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_findings(%Client{} = client, input, options \\ []) do
    url_path = "/ListFindings"
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
  Lists the integrated resources for an agent space
  """
  @spec list_integrated_resources(map(), list_integrated_resources_input(), list()) ::
          {:ok, list_integrated_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_integrated_resources_errors()}
  def list_integrated_resources(%Client{} = client, input, options \\ []) do
    url_path = "/ListIntegratedResources"
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
  Retrieves the Integrations associated with the user's account
  """
  @spec list_integrations(map(), list_integrations_input(), list()) ::
          {:ok, list_integrations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_integrations_errors()}
  def list_integrations(%Client{} = client, input, options \\ []) do
    url_path = "/ListIntegrations"
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
  Lists all members associated to an agent space with pagination support
  """
  @spec list_memberships(map(), list_memberships_request(), list()) ::
          {:ok, list_memberships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_memberships(%Client{} = client, input, options \\ []) do
    url_path = "/ListMemberships"
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
  Lists tasks associated with a specific pentest job
  """
  @spec list_pentest_job_tasks(map(), list_pentest_job_tasks_input(), list()) ::
          {:ok, list_pentest_job_tasks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_pentest_job_tasks(%Client{} = client, input, options \\ []) do
    url_path = "/ListPentestJobTasks"
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
  Lists pentest jobs associated with a pentest
  """
  @spec list_pentest_jobs_for_pentest(map(), list_pentest_jobs_for_pentest_input(), list()) ::
          {:ok, list_pentest_jobs_for_pentest_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_pentest_jobs_for_pentest(%Client{} = client, input, options \\ []) do
    url_path = "/ListPentestJobsForPentest"
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
  Lists pentests with optional filtering by status
  """
  @spec list_pentests(map(), list_pentests_input(), list()) ::
          {:ok, list_pentests_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_pentests(%Client{} = client, input, options \\ []) do
    url_path = "/ListPentests"
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
  Lists tags for a Security Agent resource
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists target domains
  """
  @spec list_target_domains(map(), list_target_domains_input(), list()) ::
          {:ok, list_target_domains_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_target_domains(%Client{} = client, input, options \\ []) do
    url_path = "/ListTargetDomains"
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
  Starts code remediation for the specified findings
  """
  @spec start_code_remediation(map(), start_code_remediation_input(), list()) ::
          {:ok, start_code_remediation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def start_code_remediation(%Client{} = client, input, options \\ []) do
    url_path = "/StartCodeRemediation"
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
  Initiates the execution of a pentest
  """
  @spec start_pentest_job(map(), start_pentest_job_input(), list()) ::
          {:ok, start_pentest_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def start_pentest_job(%Client{} = client, input, options \\ []) do
    url_path = "/StartPentestJob"
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
  Stops the execution of a running pentest
  """
  @spec stop_pentest_job(map(), stop_pentest_job_input(), list()) ::
          {:ok, stop_pentest_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def stop_pentest_job(%Client{} = client, input, options \\ []) do
    url_path = "/StopPentestJob"
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
  Adds tags to a Security Agent resource
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Removes tags from a Security Agent resource
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates an agent space record
  """
  @spec update_agent_space(map(), update_agent_space_input(), list()) ::
          {:ok, update_agent_space_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_agent_space(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateAgentSpace"
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
  Updates application configuration
  """
  @spec update_application(map(), update_application_request(), list()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_application(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateApplication"
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
  Updates an existing security finding with new details or status
  """
  @spec update_finding(map(), update_finding_input(), list()) ::
          {:ok, update_finding_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_finding(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateFinding"
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
  Updates the integrated resources for an agent space
  """
  @spec update_integrated_resources(map(), update_integrated_resources_input(), list()) ::
          {:ok, update_integrated_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_integrated_resources_errors()}
  def update_integrated_resources(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateIntegratedResources"
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
  Updates an existing pentest with new configuration or settings
  """
  @spec update_pentest(map(), update_pentest_input(), list()) ::
          {:ok, update_pentest_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_pentest(%Client{} = client, input, options \\ []) do
    url_path = "/UpdatePentest"
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
  Updates a target domain record
  """
  @spec update_target_domain(map(), update_target_domain_input(), list()) ::
          {:ok, update_target_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def update_target_domain(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateTargetDomain"
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
  Verifies ownership for a registered target domain
  """
  @spec verify_target_domain(map(), verify_target_domain_input(), list()) ::
          {:ok, verify_target_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def verify_target_domain(%Client{} = client, input, options \\ []) do
    url_path = "/VerifyTargetDomain"
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
