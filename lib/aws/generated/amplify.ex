# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Amplify do
  @moduledoc """
  Amplify enables developers to develop and deploy cloud-powered mobile and web
  apps.

  Amplify Hosting provides a continuous delivery and hosting service for web
  applications.
  For more information, see the [Amplify Hosting User Guide](https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html). The
  Amplify Framework is a comprehensive set of SDKs, libraries, tools, and
  documentation
  for client app development. For more information, see the [Amplify Framework.](https://docs.amplify.aws/)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  app() :: %{
    "appArn" => String.t(),
    "appId" => String.t(),
    "autoBranchCreationConfig" => auto_branch_creation_config(),
    "autoBranchCreationPatterns" => list(String.t()()),
    "basicAuthCredentials" => String.t(),
    "buildSpec" => String.t(),
    "createTime" => non_neg_integer(),
    "customHeaders" => String.t(),
    "customRules" => list(custom_rule()()),
    "defaultDomain" => String.t(),
    "description" => String.t(),
    "enableAutoBranchCreation" => boolean(),
    "enableBasicAuth" => boolean(),
    "enableBranchAutoBuild" => boolean(),
    "enableBranchAutoDeletion" => boolean(),
    "environmentVariables" => map(),
    "iamServiceRoleArn" => String.t(),
    "name" => String.t(),
    "platform" => list(any()),
    "productionBranch" => production_branch(),
    "repository" => String.t(),
    "repositoryCloneMethod" => list(any()),
    "tags" => map(),
    "updateTime" => non_neg_integer()
  }
  """
  @type app() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  branch() :: %{
    "activeJobId" => String.t(),
    "associatedResources" => list(String.t()()),
    "backend" => backend(),
    "backendEnvironmentArn" => String.t(),
    "basicAuthCredentials" => String.t(),
    "branchArn" => String.t(),
    "branchName" => String.t(),
    "buildSpec" => String.t(),
    "createTime" => non_neg_integer(),
    "customDomains" => list(String.t()()),
    "description" => String.t(),
    "destinationBranch" => String.t(),
    "displayName" => String.t(),
    "enableAutoBuild" => boolean(),
    "enableBasicAuth" => boolean(),
    "enableNotification" => boolean(),
    "enablePerformanceMode" => boolean(),
    "enablePullRequestPreview" => boolean(),
    "environmentVariables" => map(),
    "framework" => String.t(),
    "pullRequestEnvironmentName" => String.t(),
    "sourceBranch" => String.t(),
    "stage" => list(any()),
    "tags" => map(),
    "thumbnailUrl" => String.t(),
    "totalNumberOfJobs" => String.t(),
    "ttl" => String.t(),
    "updateTime" => non_neg_integer()
  }
  """
  @type branch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_job_result() :: %{
    "jobSummary" => job_summary()
  }
  """
  @type start_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_domain_association_request() :: %{

  }
  """
  @type get_domain_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("tags") => map()
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_failure_exception() :: %{
    "message" => String.t()
  }
  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  generate_access_logs_result() :: %{
    "logUrl" => String.t()
  }
  """
  @type generate_access_logs_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  sub_domain() :: %{
    "dnsRecord" => String.t(),
    "subDomainSetting" => sub_domain_setting(),
    "verified" => boolean()
  }
  """
  @type sub_domain() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_app_request() :: %{
    optional("accessToken") => String.t(),
    optional("autoBranchCreationConfig") => auto_branch_creation_config(),
    optional("autoBranchCreationPatterns") => list(String.t()()),
    optional("basicAuthCredentials") => String.t(),
    optional("buildSpec") => String.t(),
    optional("customHeaders") => String.t(),
    optional("customRules") => list(custom_rule()()),
    optional("description") => String.t(),
    optional("enableAutoBranchCreation") => boolean(),
    optional("enableBasicAuth") => boolean(),
    optional("enableBranchAutoBuild") => boolean(),
    optional("enableBranchAutoDeletion") => boolean(),
    optional("environmentVariables") => map(),
    optional("iamServiceRoleArn") => String.t(),
    optional("oauthToken") => String.t(),
    optional("platform") => list(any()),
    optional("repository") => String.t(),
    optional("tags") => map(),
    required("name") => String.t()
  }
  """
  @type create_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  unauthorized_exception() :: %{
    "message" => String.t()
  }
  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_branch_request() :: %{
    optional("backend") => backend(),
    optional("backendEnvironmentArn") => String.t(),
    optional("basicAuthCredentials") => String.t(),
    optional("buildSpec") => String.t(),
    optional("description") => String.t(),
    optional("displayName") => String.t(),
    optional("enableAutoBuild") => boolean(),
    optional("enableBasicAuth") => boolean(),
    optional("enableNotification") => boolean(),
    optional("enablePerformanceMode") => boolean(),
    optional("enablePullRequestPreview") => boolean(),
    optional("environmentVariables") => map(),
    optional("framework") => String.t(),
    optional("pullRequestEnvironmentName") => String.t(),
    optional("stage") => list(any()),
    optional("tags") => map(),
    optional("ttl") => String.t(),
    required("branchName") => String.t()
  }
  """
  @type create_branch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_jobs_result() :: %{
    "jobSummaries" => list(job_summary()()),
    "nextToken" => String.t()
  }
  """
  @type list_jobs_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_backend_environment_result() :: %{
    "backendEnvironment" => backend_environment()
  }
  """
  @type create_backend_environment_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_domain_association_request() :: %{
    optional("autoSubDomainCreationPatterns") => list(String.t()()),
    optional("autoSubDomainIAMRole") => String.t(),
    optional("certificateSettings") => certificate_settings(),
    optional("enableAutoSubDomain") => boolean(),
    optional("subDomainSettings") => list(sub_domain_setting()())
  }
  """
  @type update_domain_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_domain_association_request() :: %{
    optional("autoSubDomainCreationPatterns") => list(String.t()()),
    optional("autoSubDomainIAMRole") => String.t(),
    optional("certificateSettings") => certificate_settings(),
    optional("enableAutoSubDomain") => boolean(),
    required("domainName") => String.t(),
    required("subDomainSettings") => list(sub_domain_setting()())
  }
  """
  @type create_domain_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_jobs_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  backend() :: %{
    "stackArn" => String.t()
  }
  """
  @type backend() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_webhook_result() :: %{
    "webhook" => webhook()
  }
  """
  @type create_webhook_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_deployment_request() :: %{
    optional("fileMap") => map()
  }
  """
  @type create_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_job_result() :: %{
    "jobSummary" => job_summary()
  }
  """
  @type delete_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  generate_access_logs_request() :: %{
    optional("endTime") => non_neg_integer(),
    optional("startTime") => non_neg_integer(),
    required("domainName") => String.t()
  }
  """
  @type generate_access_logs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_branches_result() :: %{
    "branches" => list(branch()()),
    "nextToken" => String.t()
  }
  """
  @type list_branches_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_artifact_url_request() :: %{

  }
  """
  @type get_artifact_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_job_request() :: %{

  }
  """
  @type stop_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_domain_association_request() :: %{

  }
  """
  @type delete_domain_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("tagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_backend_environments_result() :: %{
    "backendEnvironments" => list(backend_environment()()),
    "nextToken" => String.t()
  }
  """
  @type list_backend_environments_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_webhook_request() :: %{

  }
  """
  @type delete_webhook_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_apps_result() :: %{
    "apps" => list(app()()),
    "nextToken" => String.t()
  }
  """
  @type list_apps_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_backend_environment_request() :: %{
    optional("deploymentArtifacts") => String.t(),
    optional("stackName") => String.t(),
    required("environmentName") => String.t()
  }
  """
  @type create_backend_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_backend_environment_result() :: %{
    "backendEnvironment" => backend_environment()
  }
  """
  @type delete_backend_environment_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_job_result() :: %{
    "job" => job()
  }
  """
  @type get_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_app_request() :: %{

  }
  """
  @type get_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job_summary() :: %{
    "commitId" => String.t(),
    "commitMessage" => String.t(),
    "commitTime" => non_neg_integer(),
    "endTime" => non_neg_integer(),
    "jobArn" => String.t(),
    "jobId" => String.t(),
    "jobType" => list(any()),
    "startTime" => non_neg_integer(),
    "status" => list(any())
  }
  """
  @type job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  sub_domain_setting() :: %{
    "branchName" => String.t(),
    "prefix" => String.t()
  }
  """
  @type sub_domain_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_app_result() :: %{
    "app" => app()
  }
  """
  @type update_app_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  domain_association() :: %{
    "autoSubDomainCreationPatterns" => list(String.t()()),
    "autoSubDomainIAMRole" => String.t(),
    "certificate" => certificate(),
    "certificateVerificationDNSRecord" => String.t(),
    "domainAssociationArn" => String.t(),
    "domainName" => String.t(),
    "domainStatus" => list(any()),
    "enableAutoSubDomain" => boolean(),
    "statusReason" => String.t(),
    "subDomains" => list(sub_domain()()),
    "updateStatus" => list(any())
  }
  """
  @type domain_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_backend_environment_result() :: %{
    "backendEnvironment" => backend_environment()
  }
  """
  @type get_backend_environment_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_deployment_result() :: %{
    "jobSummary" => job_summary()
  }
  """
  @type start_deployment_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "code" => String.t(),
    "message" => String.t()
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  dependent_service_failure_exception() :: %{
    "message" => String.t()
  }
  """
  @type dependent_service_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_webhook_result() :: %{
    "webhook" => webhook()
  }
  """
  @type delete_webhook_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  production_branch() :: %{
    "branchName" => String.t(),
    "lastDeployTime" => non_neg_integer(),
    "status" => String.t(),
    "thumbnailUrl" => String.t()
  }
  """
  @type production_branch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_deployment_result() :: %{
    "fileUploadUrls" => map(),
    "jobId" => String.t(),
    "zipUploadUrl" => String.t()
  }
  """
  @type create_deployment_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_webhook_request() :: %{
    optional("branchName") => String.t(),
    optional("description") => String.t()
  }
  """
  @type update_webhook_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_webhooks_result() :: %{
    "nextToken" => String.t(),
    "webhooks" => list(webhook()())
  }
  """
  @type list_webhooks_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  not_found_exception() :: %{
    "message" => String.t()
  }
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_webhook_request() :: %{
    optional("description") => String.t(),
    required("branchName") => String.t()
  }
  """
  @type create_webhook_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  backend_environment() :: %{
    "backendEnvironmentArn" => String.t(),
    "createTime" => non_neg_integer(),
    "deploymentArtifacts" => String.t(),
    "environmentName" => String.t(),
    "stackName" => String.t(),
    "updateTime" => non_neg_integer()
  }
  """
  @type backend_environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "tags" => map()
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_app_result() :: %{
    "app" => app()
  }
  """
  @type delete_app_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_branch_result() :: %{
    "branch" => branch()
  }
  """
  @type update_branch_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_branch_request() :: %{

  }
  """
  @type get_branch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_domain_associations_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_domain_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_job_request() :: %{
    optional("commitId") => String.t(),
    optional("commitMessage") => String.t(),
    optional("commitTime") => non_neg_integer(),
    optional("jobId") => String.t(),
    optional("jobReason") => String.t(),
    required("jobType") => list(any())
  }
  """
  @type start_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_backend_environments_request() :: %{
    optional("environmentName") => String.t(),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_backend_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_backend_environment_request() :: %{

  }
  """
  @type delete_backend_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  custom_rule() :: %{
    "condition" => String.t(),
    "source" => String.t(),
    "status" => String.t(),
    "target" => String.t()
  }
  """
  @type custom_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_branch_result() :: %{
    "branch" => branch()
  }
  """
  @type create_branch_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  certificate() :: %{
    "certificateVerificationDNSRecord" => String.t(),
    "customCertificateArn" => String.t(),
    "type" => list(any())
  }
  """
  @type certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_branch_request() :: %{

  }
  """
  @type delete_branch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_webhook_request() :: %{

  }
  """
  @type get_webhook_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_app_request() :: %{

  }
  """
  @type delete_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_branch_request() :: %{
    optional("backend") => backend(),
    optional("backendEnvironmentArn") => String.t(),
    optional("basicAuthCredentials") => String.t(),
    optional("buildSpec") => String.t(),
    optional("description") => String.t(),
    optional("displayName") => String.t(),
    optional("enableAutoBuild") => boolean(),
    optional("enableBasicAuth") => boolean(),
    optional("enableNotification") => boolean(),
    optional("enablePerformanceMode") => boolean(),
    optional("enablePullRequestPreview") => boolean(),
    optional("environmentVariables") => map(),
    optional("framework") => String.t(),
    optional("pullRequestEnvironmentName") => String.t(),
    optional("stage") => list(any()),
    optional("ttl") => String.t()
  }
  """
  @type update_branch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_domain_association_result() :: %{
    "domainAssociation" => domain_association()
  }
  """
  @type update_domain_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_job_request() :: %{

  }
  """
  @type delete_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_domain_association_result() :: %{
    "domainAssociation" => domain_association()
  }
  """
  @type get_domain_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{

  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  job() :: %{
    "steps" => list(step()()),
    "summary" => job_summary()
  }
  """
  @type job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_artifacts_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_artifacts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_app_request() :: %{
    optional("accessToken") => String.t(),
    optional("autoBranchCreationConfig") => auto_branch_creation_config(),
    optional("autoBranchCreationPatterns") => list(String.t()()),
    optional("basicAuthCredentials") => String.t(),
    optional("buildSpec") => String.t(),
    optional("customHeaders") => String.t(),
    optional("customRules") => list(custom_rule()()),
    optional("description") => String.t(),
    optional("enableAutoBranchCreation") => boolean(),
    optional("enableBasicAuth") => boolean(),
    optional("enableBranchAutoBuild") => boolean(),
    optional("enableBranchAutoDeletion") => boolean(),
    optional("environmentVariables") => map(),
    optional("iamServiceRoleArn") => String.t(),
    optional("name") => String.t(),
    optional("oauthToken") => String.t(),
    optional("platform") => list(any()),
    optional("repository") => String.t()
  }
  """
  @type update_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_job_request() :: %{

  }
  """
  @type get_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  certificate_settings() :: %{
    "customCertificateArn" => String.t(),
    "type" => list(any())
  }
  """
  @type certificate_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  limit_exceeded_exception() :: %{
    "message" => String.t()
  }
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_apps_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_apps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_app_result() :: %{
    "app" => app()
  }
  """
  @type get_app_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  bad_request_exception() :: %{
    "message" => String.t()
  }
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_domain_association_result() :: %{
    "domainAssociation" => domain_association()
  }
  """
  @type delete_domain_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  artifact() :: %{
    "artifactFileName" => String.t(),
    "artifactId" => String.t()
  }
  """
  @type artifact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_artifacts_result() :: %{
    "artifacts" => list(artifact()()),
    "nextToken" => String.t()
  }
  """
  @type list_artifacts_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_webhook_result() :: %{
    "webhook" => webhook()
  }
  """
  @type get_webhook_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  step() :: %{
    "artifactsUrl" => String.t(),
    "context" => String.t(),
    "endTime" => non_neg_integer(),
    "logUrl" => String.t(),
    "screenshots" => map(),
    "startTime" => non_neg_integer(),
    "status" => list(any()),
    "statusReason" => String.t(),
    "stepName" => String.t(),
    "testArtifactsUrl" => String.t(),
    "testConfigUrl" => String.t()
  }
  """
  @type step() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_webhooks_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_webhooks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_branch_result() :: %{
    "branch" => branch()
  }
  """
  @type get_branch_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_branch_result() :: %{
    "branch" => branch()
  }
  """
  @type delete_branch_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_app_result() :: %{
    "app" => app()
  }
  """
  @type create_app_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_backend_environment_request() :: %{

  }
  """
  @type get_backend_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  auto_branch_creation_config() :: %{
    "basicAuthCredentials" => String.t(),
    "buildSpec" => String.t(),
    "enableAutoBuild" => boolean(),
    "enableBasicAuth" => boolean(),
    "enablePerformanceMode" => boolean(),
    "enablePullRequestPreview" => boolean(),
    "environmentVariables" => map(),
    "framework" => String.t(),
    "pullRequestEnvironmentName" => String.t(),
    "stage" => list(any())
  }
  """
  @type auto_branch_creation_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_branches_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_branches_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_artifact_url_result() :: %{
    "artifactId" => String.t(),
    "artifactUrl" => String.t()
  }
  """
  @type get_artifact_url_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_domain_associations_result() :: %{
    "domainAssociations" => list(domain_association()()),
    "nextToken" => String.t()
  }
  """
  @type list_domain_associations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  webhook() :: %{
    "branchName" => String.t(),
    "createTime" => non_neg_integer(),
    "description" => String.t(),
    "updateTime" => non_neg_integer(),
    "webhookArn" => String.t(),
    "webhookId" => String.t(),
    "webhookUrl" => String.t()
  }
  """
  @type webhook() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_job_result() :: %{
    "jobSummary" => job_summary()
  }
  """
  @type stop_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_deployment_request() :: %{
    optional("jobId") => String.t(),
    optional("sourceUrl") => String.t()
  }
  """
  @type start_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_domain_association_result() :: %{
    "domainAssociation" => domain_association()
  }
  """
  @type create_domain_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_webhook_result() :: %{
    "webhook" => webhook()
  }
  """
  @type update_webhook_result() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "amplify",
      global?: false,
      protocol: "rest-json",
      service_id: "Amplify",
      signature_version: "v4",
      signing_name: "amplify",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new Amplify app.
  """
  @spec create_app(map(), create_app_request(), list()) ::
          {:ok, create_app_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, dependent_service_failure_exception()}
          | {:error, internal_failure_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, unauthorized_exception()}
  def create_app(%Client{} = client, input, options \\ []) do
    url_path = "/apps"
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
  Creates a new backend environment for an Amplify app.
  """
  @spec create_backend_environment(
          map(),
          String.t(),
          create_backend_environment_request(),
          list()
        ) ::
          {:ok, create_backend_environment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def create_backend_environment(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/backendenvironments"
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
  Creates a new branch for an Amplify app.
  """
  @spec create_branch(map(), String.t(), create_branch_request(), list()) ::
          {:ok, create_branch_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, dependent_service_failure_exception()}
          | {:error, internal_failure_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def create_branch(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/branches"
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
  Creates a deployment for a manually deployed Amplify app.

  Manually deployed apps are
  not connected to a repository.

  The maximum duration between the `CreateDeployment` call and the
  `StartDeployment` call cannot exceed 8 hours. If the duration exceeds 8
  hours, the `StartDeployment` call and the associated `Job` will
  fail.
  """
  @spec create_deployment(map(), String.t(), String.t(), create_deployment_request(), list()) ::
          {:ok, create_deployment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, unauthorized_exception()}
  def create_deployment(%Client{} = client, app_id, branch_name, input, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/deployments"

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
  Creates a new domain association for an Amplify app.

  This action associates a custom
  domain with the Amplify app
  """
  @spec create_domain_association(map(), String.t(), create_domain_association_request(), list()) ::
          {:ok, create_domain_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, dependent_service_failure_exception()}
          | {:error, internal_failure_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def create_domain_association(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/domains"
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
  Creates a new webhook on an Amplify app.
  """
  @spec create_webhook(map(), String.t(), create_webhook_request(), list()) ::
          {:ok, create_webhook_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, dependent_service_failure_exception()}
          | {:error, internal_failure_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def create_webhook(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/webhooks"
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
  Deletes an existing Amplify app specified by an app ID.
  """
  @spec delete_app(map(), String.t(), delete_app_request(), list()) ::
          {:ok, delete_app_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, dependent_service_failure_exception()}
          | {:error, internal_failure_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def delete_app(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}"
    headers = []
    query_params = []

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
  Deletes a backend environment for an Amplify app.
  """
  @spec delete_backend_environment(
          map(),
          String.t(),
          String.t(),
          delete_backend_environment_request(),
          list()
        ) ::
          {:ok, delete_backend_environment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, dependent_service_failure_exception()}
          | {:error, internal_failure_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def delete_backend_environment(
        %Client{} = client,
        app_id,
        environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/backendenvironments/#{AWS.Util.encode_uri(environment_name)}"

    headers = []
    query_params = []

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
  Deletes a branch for an Amplify app.
  """
  @spec delete_branch(map(), String.t(), String.t(), delete_branch_request(), list()) ::
          {:ok, delete_branch_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, dependent_service_failure_exception()}
          | {:error, internal_failure_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def delete_branch(%Client{} = client, app_id, branch_name, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}"
    headers = []
    query_params = []

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
  Deletes a domain association for an Amplify app.
  """
  @spec delete_domain_association(
          map(),
          String.t(),
          String.t(),
          delete_domain_association_request(),
          list()
        ) ::
          {:ok, delete_domain_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, dependent_service_failure_exception()}
          | {:error, internal_failure_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def delete_domain_association(%Client{} = client, app_id, domain_name, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/domains/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    query_params = []

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
  Deletes a job for a branch of an Amplify app.
  """
  @spec delete_job(map(), String.t(), String.t(), String.t(), delete_job_request(), list()) ::
          {:ok, delete_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def delete_job(%Client{} = client, app_id, branch_name, job_id, input, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

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
  Deletes a webhook.
  """
  @spec delete_webhook(map(), String.t(), delete_webhook_request(), list()) ::
          {:ok, delete_webhook_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def delete_webhook(%Client{} = client, webhook_id, input, options \\ []) do
    url_path = "/webhooks/#{AWS.Util.encode_uri(webhook_id)}"
    headers = []
    query_params = []

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
  Returns the website access logs for a specific time range using a presigned URL.
  """
  @spec generate_access_logs(map(), String.t(), generate_access_logs_request(), list()) ::
          {:ok, generate_access_logs_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def generate_access_logs(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/accesslogs"
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
  Returns an existing Amplify app specified by an app ID.
  """
  @spec get_app(map(), String.t(), list()) ::
          {:ok, get_app_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def get_app(%Client{} = client, app_id, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the artifact info that corresponds to an artifact id.
  """
  @spec get_artifact_url(map(), String.t(), list()) ::
          {:ok, get_artifact_url_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def get_artifact_url(%Client{} = client, artifact_id, options \\ []) do
    url_path = "/artifacts/#{AWS.Util.encode_uri(artifact_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a backend environment for an Amplify app.
  """
  @spec get_backend_environment(map(), String.t(), String.t(), list()) ::
          {:ok, get_backend_environment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def get_backend_environment(%Client{} = client, app_id, environment_name, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/backendenvironments/#{AWS.Util.encode_uri(environment_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a branch for an Amplify app.
  """
  @spec get_branch(map(), String.t(), String.t(), list()) ::
          {:ok, get_branch_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def get_branch(%Client{} = client, app_id, branch_name, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the domain information for an Amplify app.
  """
  @spec get_domain_association(map(), String.t(), String.t(), list()) ::
          {:ok, get_domain_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def get_domain_association(%Client{} = client, app_id, domain_name, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/domains/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a job for a branch of an Amplify app.
  """
  @spec get_job(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def get_job(%Client{} = client, app_id, branch_name, job_id, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the webhook information that corresponds to a specified webhook ID.
  """
  @spec get_webhook(map(), String.t(), list()) ::
          {:ok, get_webhook_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def get_webhook(%Client{} = client, webhook_id, options \\ []) do
    url_path = "/webhooks/#{AWS.Util.encode_uri(webhook_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the existing Amplify apps.
  """
  @spec list_apps(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_apps_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, unauthorized_exception()}
  def list_apps(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/apps"
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
  Returns a list of artifacts for a specified app, branch, and job.
  """
  @spec list_artifacts(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_artifacts_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, unauthorized_exception()}
  def list_artifacts(
        %Client{} = client,
        app_id,
        branch_name,
        job_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs/#{AWS.Util.encode_uri(job_id)}/artifacts"

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
  Lists the backend environments for an Amplify app.
  """
  @spec list_backend_environments(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_backend_environments_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, unauthorized_exception()}
  def list_backend_environments(
        %Client{} = client,
        app_id,
        environment_name \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/backendenvironments"
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
      if !is_nil(environment_name) do
        [{"environmentName", environment_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the branches of an Amplify app.
  """
  @spec list_branches(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_branches_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, unauthorized_exception()}
  def list_branches(
        %Client{} = client,
        app_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/branches"
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
  Returns the domain associations for an Amplify app.
  """
  @spec list_domain_associations(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_domain_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, unauthorized_exception()}
  def list_domain_associations(
        %Client{} = client,
        app_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/domains"
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
  Lists the jobs for a branch of an Amplify app.
  """
  @spec list_jobs(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_jobs_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, unauthorized_exception()}
  def list_jobs(
        %Client{} = client,
        app_id,
        branch_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs"

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
  Returns a list of tags for a specified Amazon Resource Name (ARN).
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, resource_not_found_exception()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of webhooks for an Amplify app.
  """
  @spec list_webhooks(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_webhooks_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, unauthorized_exception()}
  def list_webhooks(
        %Client{} = client,
        app_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/webhooks"
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
  Starts a deployment for a manually deployed app.

  Manually deployed apps are not
  connected to a repository.

  The maximum duration between the `CreateDeployment` call and the
  `StartDeployment` call cannot exceed 8 hours. If the duration exceeds 8
  hours, the `StartDeployment` call and the associated `Job` will
  fail.
  """
  @spec start_deployment(map(), String.t(), String.t(), start_deployment_request(), list()) ::
          {:ok, start_deployment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def start_deployment(%Client{} = client, app_id, branch_name, input, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/deployments/start"

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
  Starts a new job for a branch of an Amplify app.
  """
  @spec start_job(map(), String.t(), String.t(), start_job_request(), list()) ::
          {:ok, start_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def start_job(%Client{} = client, app_id, branch_name, input, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs"

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
  Stops a job that is in progress for a branch of an Amplify app.
  """
  @spec stop_job(map(), String.t(), String.t(), String.t(), stop_job_request(), list()) ::
          {:ok, stop_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def stop_job(%Client{} = client, app_id, branch_name, job_id, input, options \\ []) do
    url_path =
      "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}/jobs/#{AWS.Util.encode_uri(job_id)}/stop"

    headers = []
    query_params = []

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
  Tags the resource with a tag key and value.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, resource_not_found_exception()}
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
  Untags a resource with a specified Amazon Resource Name (ARN).
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, resource_not_found_exception()}
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
  Updates an existing Amplify app.
  """
  @spec update_app(map(), String.t(), update_app_request(), list()) ::
          {:ok, update_app_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, internal_failure_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def update_app(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}"
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
  Updates a branch for an Amplify app.
  """
  @spec update_branch(map(), String.t(), String.t(), update_branch_request(), list()) ::
          {:ok, update_branch_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, dependent_service_failure_exception()}
          | {:error, internal_failure_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def update_branch(%Client{} = client, app_id, branch_name, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/branches/#{AWS.Util.encode_uri(branch_name)}"
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
  Creates a new domain association for an Amplify app.
  """
  @spec update_domain_association(
          map(),
          String.t(),
          String.t(),
          update_domain_association_request(),
          list()
        ) ::
          {:ok, update_domain_association_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, dependent_service_failure_exception()}
          | {:error, internal_failure_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def update_domain_association(%Client{} = client, app_id, domain_name, input, options \\ []) do
    url_path = "/apps/#{AWS.Util.encode_uri(app_id)}/domains/#{AWS.Util.encode_uri(domain_name)}"
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
  Updates a webhook.
  """
  @spec update_webhook(map(), String.t(), update_webhook_request(), list()) ::
          {:ok, update_webhook_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, dependent_service_failure_exception()}
          | {:error, internal_failure_exception()}
          | {:error, not_found_exception()}
          | {:error, unauthorized_exception()}
  def update_webhook(%Client{} = client, webhook_id, input, options \\ []) do
    url_path = "/webhooks/#{AWS.Util.encode_uri(webhook_id)}"
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
