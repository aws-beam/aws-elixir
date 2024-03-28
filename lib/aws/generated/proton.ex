# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Proton do
  @moduledoc """
  This is the Proton Service API Reference.

  It provides descriptions, syntax and usage examples for each of the
  [actions](https://docs.aws.amazon.com/proton/latest/APIReference/API_Operations.html) and [data
  types](https://docs.aws.amazon.com/proton/latest/APIReference/API_Types.html)
  for the Proton
  service.

  The documentation for each action shows the Query API request parameters and the
  XML response.

  Alternatively, you can use the Amazon Web Services CLI to access an API. For
  more information, see the [Amazon Web Services Command Line Interface User Guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html).

  The Proton service is a two-pronged automation framework. Administrators create
  service templates to provide
  standardized infrastructure and deployment tooling for serverless and container
  based applications. Developers, in
  turn, select from the available service templates to automate their application
  or service deployments.

  Because administrators define the infrastructure and tooling that Proton deploys
  and manages, they need
  permissions to use all of the listed API operations.

  When developers select a specific infrastructure and tooling set, Proton deploys
  their applications. To
  monitor their applications that are running on Proton, developers need
  permissions to the service
  *create*, *list*, *update* and *delete*
  API operations and the service instance *list* and *update* API
  operations.

  To learn more about Proton, see the [Proton User Guide](https://docs.aws.amazon.com/proton/latest/userguide/Welcome.html).

  ## Ensuring Idempotency

  When you make a mutating API request, the request typically returns a result
  before the asynchronous workflows
  of the operation are complete. Operations might also time out or encounter other
  server issues before they're
  complete, even if the request already returned a result. This might make it
  difficult to determine whether the
  request succeeded. Moreover, you might need to retry the request multiple times
  to ensure that the operation
  completes successfully. However, if the original request and the subsequent
  retries are successful, the operation
  occurs multiple times. This means that you might create more resources than you
  intended.

  *Idempotency* ensures that an API request action completes no more than one
  time. With an
  idempotent request, if the original request action completes successfully, any
  subsequent retries complete
  successfully without performing any further actions. However, the result might
  contain updated information, such as
  the current creation status.

  The following lists of APIs are grouped according to methods that ensure
  idempotency.

  ## Idempotent create APIs with a client token

  The API actions in this list support idempotency with the use of a *client
  token*. The
  corresponding Amazon Web Services CLI commands also support idempotency using a
  client token. A client token is a unique,
  case-sensitive string of up to 64 ASCII characters. To make an idempotent API
  request using one of these actions,
  specify a client token in the request. We recommend that you *don't* reuse the
  same client token
  for other API requests. If you don’t provide a client token for these APIs, a
  default client token is automatically
  provided by SDKs.

  Given a request action that has succeeded:

  If you retry the request using the same client token and the same parameters,
  the retry succeeds without
  performing any further actions other than returning the original resource detail
  data in the response.

  If you retry the request using the same client token, but one or more of the
  parameters are different, the retry
  throws a `ValidationException` with an `IdempotentParameterMismatch` error.

  Client tokens expire eight hours after a request is made. If you retry the
  request with the expired token, a new
  resource is created.

  If the original resource is deleted and you retry the request, a new resource is
  created.

  Idempotent create APIs with a client token:

    *
  CreateEnvironmentTemplateVersion

    *
  CreateServiceTemplateVersion

    *
  CreateEnvironmentAccountConnection

  ## Idempotent create APIs

  Given a request action that has succeeded:

  If you retry the request with an API from this group, and the original resource
  *hasn't* been
  modified, the retry succeeds without performing any further actions other than
  returning the original resource detail
  data in the response.

  If the original resource has been modified, the retry throws a
  `ConflictException`.

  If you retry with different input parameters, the retry throws a
  `ValidationException` with an
  `IdempotentParameterMismatch` error.

  Idempotent create APIs:

    *
  CreateEnvironmentTemplate

    *
  CreateServiceTemplate

    *
  CreateEnvironment

    *
  CreateService

  ## Idempotent delete APIs

  Given a request action that has succeeded:

  When you retry the request with an API from this group and the resource was
  deleted, its metadata is returned in
  the response.

  If you retry and the resource doesn't exist, the response is empty.

  In both cases, the retry succeeds.

  Idempotent delete APIs:

    *
  DeleteEnvironmentTemplate

    *
  DeleteEnvironmentTemplateVersion

    *
  DeleteServiceTemplate

    *
  DeleteServiceTemplateVersion

    *
  DeleteEnvironmentAccountConnection

  ## Asynchronous idempotent delete APIs

  Given a request action that has succeeded:

  If you retry the request with an API from this group, if the original request
  delete operation status is
  `DELETE_IN_PROGRESS`, the retry returns the resource detail data in the response
  without performing any
  further actions.

  If the original request delete operation is complete, a retry returns an empty
  response.

  Asynchronous idempotent delete APIs:

    *
  DeleteEnvironment

    *
  DeleteService
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_environment_template_versions_output() :: %{
        optional("nextToken") => String.t(),
        required("templateVersions") => list(environment_template_version_summary()())
      }
      
  """
  @type list_environment_template_versions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_pipeline_provisioned_resources_output() :: %{
        optional("nextToken") => String.t(),
        required("provisionedResources") => list(provisioned_resource()())
      }
      
  """
  @type list_service_pipeline_provisioned_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_component_output() :: %{
        optional("component") => component()
      }
      
  """
  @type get_component_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_template_version_input() :: %{
        "compatibleEnvironmentTemplates" => list(compatible_environment_template_input()()),
        "description" => String.t(),
        "majorVersion" => String.t(),
        "minorVersion" => String.t(),
        "status" => String.t(),
        "supportedComponentSources" => list(String.t()()),
        "templateName" => String.t()
      }
      
  """
  @type update_service_template_version_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_branch_input() :: %{
        "branch" => String.t(),
        "name" => String.t(),
        "provider" => String.t()
      }
      
  """
  @type repository_branch_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_template_version_input() :: %{
        "description" => String.t(),
        "majorVersion" => String.t(),
        "minorVersion" => String.t(),
        "status" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type update_environment_template_version_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_input() :: %{
        "name" => String.t()
      }
      
  """
  @type get_service_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_instance_sync_status_output() :: %{
        optional("desiredState") => revision(),
        optional("latestSuccessfulSync") => resource_sync_attempt(),
        optional("latestSync") => resource_sync_attempt()
      }
      
  """
  @type get_service_instance_sync_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_template_filter() :: %{
        "majorVersion" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type environment_template_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_environment_account_connection_output() :: %{
        required("environmentAccountConnection") => environment_account_connection()
      }
      
  """
  @type accept_environment_account_connection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_component_input() :: %{
        "clientToken" => String.t(),
        "deploymentType" => String.t(),
        "description" => String.t(),
        "name" => String.t(),
        "serviceInstanceName" => String.t(),
        "serviceName" => String.t(),
        "serviceSpec" => String.t(),
        "templateFile" => String.t()
      }
      
  """
  @type update_component_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_summary() :: %{
        "arn" => String.t(),
        "completedAt" => [non_neg_integer()],
        "componentName" => String.t(),
        "createdAt" => [non_neg_integer()],
        "deploymentStatus" => String.t(),
        "environmentName" => String.t(),
        "id" => String.t(),
        "lastAttemptedDeploymentId" => String.t(),
        "lastModifiedAt" => [non_neg_integer()],
        "lastSucceededDeploymentId" => String.t(),
        "serviceInstanceName" => String.t(),
        "serviceName" => String.t(),
        "targetArn" => String.t(),
        "targetResourceCreatedAt" => [non_neg_integer()],
        "targetResourceType" => String.t()
      }
      
  """
  @type deployment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_sync_attempt() :: %{
        "events" => list(repository_sync_event()()),
        "startedAt" => [non_neg_integer()],
        "status" => String.t()
      }
      
  """
  @type repository_sync_attempt() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_instance_input() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => list(tag()()),
        optional("templateMajorVersion") => String.t(),
        optional("templateMinorVersion") => String.t(),
        required("name") => String.t(),
        required("serviceName") => String.t(),
        required("spec") => String.t()
      }
      
  """
  @type create_service_instance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_template_output() :: %{
        optional("environmentTemplate") => environment_template()
      }
      
  """
  @type delete_environment_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_repository_input() :: %{
        "name" => String.t(),
        "provider" => String.t()
      }
      
  """
  @type get_repository_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_template_sync_config_output() :: %{
        optional("templateSyncConfig") => template_sync_config()
      }
      
  """
  @type update_template_sync_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_sync_config() :: %{
        "branch" => String.t(),
        "filePath" => String.t(),
        "repositoryName" => String.t(),
        "repositoryProvider" => String.t(),
        "serviceName" => String.t()
      }
      
  """
  @type service_sync_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_account_connection_output() :: %{
        required("environmentAccountConnection") => environment_account_connection()
      }
      
  """
  @type create_environment_account_connection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_sync_config_output() :: %{
        optional("serviceSyncConfig") => service_sync_config()
      }
      
  """
  @type get_service_sync_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_instance_output() :: %{
        required("serviceInstance") => service_instance()
      }
      
  """
  @type update_service_instance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environment_templates_output() :: %{
        optional("nextToken") => String.t(),
        required("templates") => list(environment_template_summary()())
      }
      
  """
  @type list_environment_templates_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_environment_account_connection_input() :: %{
        "id" => String.t()
      }
      
  """
  @type accept_environment_account_connection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment() :: %{
        "arn" => String.t(),
        "completedAt" => [non_neg_integer()],
        "componentName" => String.t(),
        "createdAt" => [non_neg_integer()],
        "deploymentStatus" => String.t(),
        "deploymentStatusMessage" => String.t(),
        "environmentName" => String.t(),
        "id" => String.t(),
        "initialState" => list(),
        "lastAttemptedDeploymentId" => String.t(),
        "lastModifiedAt" => [non_neg_integer()],
        "lastSucceededDeploymentId" => String.t(),
        "serviceInstanceName" => String.t(),
        "serviceName" => String.t(),
        "targetArn" => String.t(),
        "targetResourceCreatedAt" => [non_neg_integer()],
        "targetResourceType" => String.t(),
        "targetState" => list()
      }
      
  """
  @type deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_output() :: %{
        required("environment") => environment()
      }
      
  """
  @type get_environment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_repository_output() :: %{
        required("repository") => repository()
      }
      
  """
  @type create_repository_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_template_sync_config_input() :: %{
        optional("subdirectory") => String.t(),
        required("branch") => String.t(),
        required("repositoryName") => String.t(),
        required("repositoryProvider") => String.t(),
        required("templateName") => String.t(),
        required("templateType") => String.t()
      }
      
  """
  @type update_template_sync_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_sync_config_output() :: %{
        optional("serviceSyncConfig") => service_sync_config()
      }
      
  """
  @type update_service_sync_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_template_version_output() :: %{
        required("environmentTemplateVersion") => environment_template_version()
      }
      
  """
  @type update_environment_template_version_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_sync_config_input() :: %{
        required("branch") => String.t(),
        required("filePath") => String.t(),
        required("repositoryName") => String.t(),
        required("repositoryProvider") => String.t(),
        required("serviceName") => String.t()
      }
      
  """
  @type create_service_sync_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_sync_blocker_input() :: %{
        required("id") => [String.t()],
        required("resolvedReason") => [String.t()]
      }
      
  """
  @type update_service_sync_blocker_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environment_template_versions_input() :: %{
        optional("majorVersion") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("templateName") => String.t()
      }
      
  """
  @type list_environment_template_versions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_deployment_output() :: %{
        "deployment" => deployment()
      }
      
  """
  @type get_deployment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_input() :: %{
        optional("codebuildRoleArn") => String.t(),
        optional("componentRoleArn") => String.t(),
        optional("description") => String.t(),
        optional("environmentAccountConnectionId") => String.t(),
        optional("protonServiceRoleArn") => String.t(),
        optional("provisioningRepository") => repository_branch_input(),
        optional("tags") => list(tag()()),
        optional("templateMinorVersion") => String.t(),
        required("name") => String.t(),
        required("spec") => String.t(),
        required("templateMajorVersion") => String.t(),
        required("templateName") => String.t()
      }
      
  """
  @type create_environment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_template_version_summary() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "lastModifiedAt" => [non_neg_integer()],
        "majorVersion" => String.t(),
        "minorVersion" => String.t(),
        "recommendedMinorVersion" => String.t(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type environment_template_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_account_connection_input() :: %{
        "id" => String.t()
      }
      
  """
  @type get_environment_account_connection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_sync_config_input() :: %{
        required("serviceName") => String.t()
      }
      
  """
  @type delete_service_sync_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sync_blocker_context() :: %{
        "key" => [String.t()],
        "value" => [String.t()]
      }
      
  """
  @type sync_blocker_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_instance_output() :: %{
        required("serviceInstance") => service_instance()
      }
      
  """
  @type get_service_instance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_component_output() :: %{
        optional("component") => component()
      }
      
  """
  @type delete_component_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_component_provisioned_resources_input() :: %{
        optional("nextToken") => String.t(),
        required("componentName") => String.t()
      }
      
  """
  @type list_component_provisioned_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_branch() :: %{
        "arn" => String.t(),
        "branch" => String.t(),
        "name" => String.t(),
        "provider" => String.t()
      }
      
  """
  @type repository_branch() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_summary() :: %{
        "arn" => String.t(),
        "componentRoleArn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "deploymentStatus" => String.t(),
        "deploymentStatusMessage" => String.t(),
        "description" => String.t(),
        "environmentAccountConnectionId" => String.t(),
        "environmentAccountId" => String.t(),
        "lastAttemptedDeploymentId" => String.t(),
        "lastDeploymentAttemptedAt" => [non_neg_integer()],
        "lastDeploymentSucceededAt" => [non_neg_integer()],
        "lastSucceededDeploymentId" => String.t(),
        "name" => String.t(),
        "protonServiceRoleArn" => String.t(),
        "provisioning" => String.t(),
        "templateMajorVersion" => String.t(),
        "templateMinorVersion" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type environment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_object_source() :: %{
        "bucket" => String.t(),
        "key" => String.t()
      }
      
  """
  @type s3_object_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_input() :: %{
        "name" => String.t()
      }
      
  """
  @type delete_environment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_instance_provisioned_resources_input() :: %{
        optional("nextToken") => String.t(),
        required("serviceInstanceName") => String.t(),
        required("serviceName") => String.t()
      }
      
  """
  @type list_service_instance_provisioned_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_deployment_input() :: %{
        optional("componentName") => String.t(),
        optional("environmentName") => String.t(),
        optional("serviceInstanceName") => String.t(),
        optional("serviceName") => String.t(),
        required("id") => String.t()
      }
      
  """
  @type get_deployment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_instance_sync_status_input() :: %{
        required("serviceInstanceName") => String.t(),
        required("serviceName") => String.t()
      }
      
  """
  @type get_service_instance_sync_status_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_template_input() :: %{
        required("name") => String.t()
      }
      
  """
  @type get_environment_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_template_version_output() :: %{
        required("environmentTemplateVersion") => environment_template_version()
      }
      
  """
  @type get_environment_template_version_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_template_input() :: %{
        "name" => String.t()
      }
      
  """
  @type delete_environment_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_repositories_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_repositories_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_output() :: %{
        required("service") => service()
      }
      
  """
  @type update_service_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compatible_environment_template_input() :: %{
        "majorVersion" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type compatible_environment_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_instance_input() :: %{
        "clientToken" => String.t(),
        "deploymentType" => String.t(),
        "name" => String.t(),
        "serviceName" => String.t(),
        "spec" => String.t(),
        "templateMajorVersion" => String.t(),
        "templateMinorVersion" => String.t()
      }
      
  """
  @type update_service_instance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_instance_output() :: %{
        required("serviceInstance") => service_instance()
      }
      
  """
  @type create_service_instance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_repository_output() :: %{
        required("repository") => repository()
      }
      
  """
  @type get_repository_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_pipeline_state() :: %{
        "spec" => String.t(),
        "templateMajorVersion" => String.t(),
        "templateMinorVersion" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type service_pipeline_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service() :: %{
        "arn" => String.t(),
        "branchName" => String.t(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "lastModifiedAt" => [non_neg_integer()],
        "name" => String.t(),
        "pipeline" => service_pipeline(),
        "repositoryConnectionArn" => String.t(),
        "repositoryId" => String.t(),
        "spec" => String.t(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type service() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_service_pipeline_deployment_input() :: %{
        "serviceName" => String.t()
      }
      
  """
  @type cancel_service_pipeline_deployment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_instance_provisioned_resources_output() :: %{
        optional("nextToken") => String.t(),
        required("provisionedResources") => list(provisioned_resource()())
      }
      
  """
  @type list_service_instance_provisioned_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_template_output() :: %{
        required("serviceTemplate") => service_template()
      }
      
  """
  @type create_service_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environments_input() :: %{
        optional("environmentTemplates") => list(environment_template_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_environments_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_sync_config_output() :: %{
        optional("serviceSyncConfig") => service_sync_config()
      }
      
  """
  @type create_service_sync_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_template_version_input() :: %{
        "majorVersion" => String.t(),
        "minorVersion" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type delete_environment_template_version_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        optional("nextToken") => [String.t()],
        required("tags") => list(tag()())
      }
      
  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component_summary() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "deploymentStatus" => String.t(),
        "deploymentStatusMessage" => String.t(),
        "environmentName" => String.t(),
        "lastAttemptedDeploymentId" => String.t(),
        "lastDeploymentAttemptedAt" => [non_neg_integer()],
        "lastDeploymentSucceededAt" => [non_neg_integer()],
        "lastModifiedAt" => [non_neg_integer()],
        "lastSucceededDeploymentId" => String.t(),
        "name" => String.t(),
        "serviceInstanceName" => String.t(),
        "serviceName" => String.t()
      }
      
  """
  @type component_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_template_output() :: %{
        optional("serviceTemplate") => service_template()
      }
      
  """
  @type delete_service_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_environment_deployment_output() :: %{
        required("environment") => environment()
      }
      
  """
  @type cancel_environment_deployment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_sync_definition() :: %{
        "branch" => String.t(),
        "directory" => [String.t()],
        "parent" => [String.t()],
        "target" => [String.t()]
      }
      
  """
  @type repository_sync_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_template_summary() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "displayName" => String.t(),
        "lastModifiedAt" => [non_neg_integer()],
        "name" => String.t(),
        "provisioning" => String.t(),
        "recommendedVersion" => String.t()
      }
      
  """
  @type environment_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_components_output() :: %{
        optional("nextToken") => String.t(),
        required("components") => list(component_summary()())
      }
      
  """
  @type list_components_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component_state() :: %{
        "serviceInstanceName" => String.t(),
        "serviceName" => String.t(),
        "serviceSpec" => String.t(),
        "templateFile" => String.t()
      }
      
  """
  @type component_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_component_output() :: %{
        required("component") => component()
      }
      
  """
  @type create_component_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_template_sync_config_input() :: %{
        optional("subdirectory") => String.t(),
        required("branch") => String.t(),
        required("repositoryName") => String.t(),
        required("repositoryProvider") => String.t(),
        required("templateName") => String.t(),
        required("templateType") => String.t()
      }
      
  """
  @type create_template_sync_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_environment_account_connection_input() :: %{
        "id" => String.t()
      }
      
  """
  @type reject_environment_account_connection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_output() :: %{
        required("environment") => environment()
      }
      
  """
  @type create_environment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_template_version() :: %{
        "arn" => String.t(),
        "compatibleEnvironmentTemplates" => list(compatible_environment_template()()),
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "lastModifiedAt" => [non_neg_integer()],
        "majorVersion" => String.t(),
        "minorVersion" => String.t(),
        "recommendedMinorVersion" => String.t(),
        "schema" => String.t(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "supportedComponentSources" => list(String.t()()),
        "templateName" => String.t()
      }
      
  """
  @type service_template_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_account_connection_input() :: %{
        "codebuildRoleArn" => String.t(),
        "componentRoleArn" => String.t(),
        "id" => String.t(),
        "roleArn" => String.t()
      }
      
  """
  @type update_environment_account_connection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_template_version_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("majorVersion") => String.t(),
        optional("supportedComponentSources") => list(String.t()()),
        optional("tags") => list(tag()()),
        required("compatibleEnvironmentTemplates") => list(compatible_environment_template_input()()),
        required("source") => list(),
        required("templateName") => String.t()
      }
      
  """
  @type create_service_template_version_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_repository_output() :: %{
        optional("repository") => repository()
      }
      
  """
  @type delete_repository_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_template_version_output() :: %{
        required("serviceTemplateVersion") => service_template_version()
      }
      
  """
  @type get_service_template_version_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_summary() :: %{
        "arn" => String.t(),
        "connectionArn" => String.t(),
        "name" => String.t(),
        "provider" => String.t()
      }
      
  """
  @type repository_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_account_connection_output() :: %{
        optional("environmentAccountConnection") => environment_account_connection()
      }
      
  """
  @type delete_environment_account_connection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_template_version_input() :: %{
        "majorVersion" => String.t(),
        "minorVersion" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type get_environment_template_version_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environment_outputs_output() :: %{
        optional("nextToken") => String.t(),
        required("outputs") => list(output()())
      }
      
  """
  @type list_environment_outputs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_template_input() :: %{
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("encryptionKey") => String.t(),
        optional("provisioning") => String.t(),
        optional("tags") => list(tag()()),
        required("name") => String.t()
      }
      
  """
  @type create_environment_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_sync_config_input() :: %{
        required("serviceName") => String.t()
      }
      
  """
  @type get_service_sync_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_template_output() :: %{
        required("environmentTemplate") => environment_template()
      }
      
  """
  @type update_environment_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notify_resource_deployment_status_change_input() :: %{
        optional("deploymentId") => String.t(),
        optional("outputs") => list(output()()),
        optional("status") => String.t(),
        optional("statusMessage") => String.t(),
        required("resourceArn") => String.t()
      }
      
  """
  @type notify_resource_deployment_status_change_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_output() :: %{
        required("environment") => environment()
      }
      
  """
  @type update_environment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_template_sync_config_output() :: %{
        optional("templateSyncConfig") => template_sync_config()
      }
      
  """
  @type delete_template_sync_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_account_connection() :: %{
        "arn" => String.t(),
        "codebuildRoleArn" => String.t(),
        "componentRoleArn" => String.t(),
        "environmentAccountId" => String.t(),
        "environmentName" => String.t(),
        "id" => String.t(),
        "lastModifiedAt" => [non_neg_integer()],
        "managementAccountId" => String.t(),
        "requestedAt" => [non_neg_integer()],
        "roleArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type environment_account_connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_instance_state() :: %{
        "lastSuccessfulComponentDeploymentIds" => list(String.t()()),
        "lastSuccessfulEnvironmentDeploymentId" => String.t(),
        "lastSuccessfulServicePipelineDeploymentId" => String.t(),
        "spec" => String.t(),
        "templateMajorVersion" => String.t(),
        "templateMinorVersion" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type service_instance_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_output() :: %{
        optional("service") => service()
      }
      
  """
  @type get_service_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_component_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("environmentName") => String.t(),
        optional("serviceInstanceName") => String.t(),
        optional("serviceName") => String.t(),
        optional("serviceSpec") => String.t(),
        optional("tags") => list(tag()()),
        required("manifest") => String.t(),
        required("name") => String.t(),
        required("templateFile") => String.t()
      }
      
  """
  @type create_component_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment() :: %{
        "arn" => String.t(),
        "codebuildRoleArn" => String.t(),
        "componentRoleArn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "deploymentStatus" => String.t(),
        "deploymentStatusMessage" => String.t(),
        "description" => String.t(),
        "environmentAccountConnectionId" => String.t(),
        "environmentAccountId" => String.t(),
        "lastAttemptedDeploymentId" => String.t(),
        "lastDeploymentAttemptedAt" => [non_neg_integer()],
        "lastDeploymentSucceededAt" => [non_neg_integer()],
        "lastSucceededDeploymentId" => String.t(),
        "name" => String.t(),
        "protonServiceRoleArn" => String.t(),
        "provisioning" => String.t(),
        "provisioningRepository" => repository_branch(),
        "spec" => String.t(),
        "templateMajorVersion" => String.t(),
        "templateMinorVersion" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_settings_input() :: %{}
      
  """
  @type get_account_settings_input() :: %{}

  @typedoc """

  ## Example:
      
      list_component_outputs_input() :: %{
        optional("deploymentId") => String.t(),
        optional("nextToken") => String.t(),
        required("componentName") => String.t()
      }
      
  """
  @type list_component_outputs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository() :: %{
        "arn" => String.t(),
        "connectionArn" => String.t(),
        "encryptionKey" => String.t(),
        "name" => String.t(),
        "provider" => String.t()
      }
      
  """
  @type repository() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_template_sync_status_input() :: %{
        required("templateName") => String.t(),
        required("templateType") => String.t(),
        required("templateVersion") => String.t()
      }
      
  """
  @type get_template_sync_status_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_summary() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "lastModifiedAt" => [non_neg_integer()],
        "name" => String.t(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type service_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_instance() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "deploymentStatus" => String.t(),
        "deploymentStatusMessage" => String.t(),
        "environmentName" => String.t(),
        "lastAttemptedDeploymentId" => String.t(),
        "lastClientRequestToken" => [String.t()],
        "lastDeploymentAttemptedAt" => [non_neg_integer()],
        "lastDeploymentSucceededAt" => [non_neg_integer()],
        "lastSucceededDeploymentId" => String.t(),
        "name" => String.t(),
        "serviceName" => String.t(),
        "spec" => String.t(),
        "templateMajorVersion" => String.t(),
        "templateMinorVersion" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type service_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_environment_deployment_input() :: %{
        "environmentName" => String.t()
      }
      
  """
  @type cancel_environment_deployment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      component() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "deploymentStatus" => String.t(),
        "deploymentStatusMessage" => String.t(),
        "description" => String.t(),
        "environmentName" => String.t(),
        "lastAttemptedDeploymentId" => String.t(),
        "lastClientRequestToken" => [String.t()],
        "lastDeploymentAttemptedAt" => [non_neg_integer()],
        "lastDeploymentSucceededAt" => [non_neg_integer()],
        "lastModifiedAt" => [non_neg_integer()],
        "lastSucceededDeploymentId" => String.t(),
        "name" => String.t(),
        "serviceInstanceName" => String.t(),
        "serviceName" => String.t(),
        "serviceSpec" => String.t()
      }
      
  """
  @type component() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_counts_summary() :: %{
        "behindMajor" => [integer()],
        "behindMinor" => [integer()],
        "failed" => [integer()],
        "total" => [integer()],
        "upToDate" => [integer()]
      }
      
  """
  @type resource_counts_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_pipeline() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "deploymentStatus" => String.t(),
        "deploymentStatusMessage" => String.t(),
        "lastAttemptedDeploymentId" => String.t(),
        "lastDeploymentAttemptedAt" => [non_neg_integer()],
        "lastDeploymentSucceededAt" => [non_neg_integer()],
        "lastSucceededDeploymentId" => String.t(),
        "spec" => String.t(),
        "templateMajorVersion" => String.t(),
        "templateMinorVersion" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type service_pipeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_pipeline_outputs_input() :: %{
        optional("deploymentId") => String.t(),
        optional("nextToken") => String.t(),
        required("serviceName") => String.t()
      }
      
  """
  @type list_service_pipeline_outputs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_components_input() :: %{
        optional("environmentName") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("serviceInstanceName") => String.t(),
        optional("serviceName") => String.t()
      }
      
  """
  @type list_components_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_input() :: %{
        "name" => String.t()
      }
      
  """
  @type get_environment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environments_output() :: %{
        optional("nextToken") => String.t(),
        required("environments") => list(environment_summary()())
      }
      
  """
  @type list_environments_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_input() :: %{
        "codebuildRoleArn" => String.t(),
        "componentRoleArn" => String.t(),
        "deploymentType" => String.t(),
        "description" => String.t(),
        "environmentAccountConnectionId" => String.t(),
        "name" => String.t(),
        "protonServiceRoleArn" => String.t(),
        "provisioningRepository" => repository_branch_input(),
        "spec" => String.t(),
        "templateMajorVersion" => String.t(),
        "templateMinorVersion" => String.t()
      }
      
  """
  @type update_environment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_repository_sync_status_output() :: %{
        optional("latestSync") => repository_sync_attempt()
      }
      
  """
  @type get_repository_sync_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_instance_outputs_output() :: %{
        optional("nextToken") => String.t(),
        required("outputs") => list(output()())
      }
      
  """
  @type list_service_instance_outputs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sync_blocker() :: %{
        "contexts" => list(sync_blocker_context()()),
        "createdAt" => [non_neg_integer()],
        "createdReason" => [String.t()],
        "id" => [String.t()],
        "resolvedAt" => [non_neg_integer()],
        "resolvedReason" => [String.t()],
        "status" => String.t(),
        "type" => String.t()
      }
      
  """
  @type sync_blocker() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_template_output() :: %{
        required("environmentTemplate") => environment_template()
      }
      
  """
  @type get_environment_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_state() :: %{
        "spec" => String.t(),
        "templateMajorVersion" => String.t(),
        "templateMinorVersion" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type environment_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      notify_resource_deployment_status_change_output() :: %{}
      
  """
  @type notify_resource_deployment_status_change_output() :: %{}

  @typedoc """

  ## Example:
      
      list_service_instances_output() :: %{
        optional("nextToken") => String.t(),
        required("serviceInstances") => list(service_instance_summary()())
      }
      
  """
  @type list_service_instances_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_account_connection_summary() :: %{
        "arn" => String.t(),
        "componentRoleArn" => String.t(),
        "environmentAccountId" => String.t(),
        "environmentName" => String.t(),
        "id" => String.t(),
        "lastModifiedAt" => [non_neg_integer()],
        "managementAccountId" => String.t(),
        "requestedAt" => [non_neg_integer()],
        "roleArn" => String.t(),
        "status" => String.t()
      }
      
  """
  @type environment_account_connection_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_sync_config_output() :: %{
        optional("serviceSyncConfig") => service_sync_config()
      }
      
  """
  @type delete_service_sync_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_component_provisioned_resources_output() :: %{
        optional("nextToken") => String.t(),
        required("provisionedResources") => list(provisioned_resource()())
      }
      
  """
  @type list_component_provisioned_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_template_output() :: %{
        required("environmentTemplate") => environment_template()
      }
      
  """
  @type create_environment_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_template_version_input() :: %{
        "majorVersion" => String.t(),
        "minorVersion" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type delete_service_template_version_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_template_output() :: %{
        required("serviceTemplate") => service_template()
      }
      
  """
  @type update_service_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_deployment_input() :: %{
        required("id") => String.t()
      }
      
  """
  @type delete_deployment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_instances_input() :: %{
        optional("filters") => list(list_service_instances_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("serviceName") => String.t(),
        optional("sortBy") => String.t(),
        optional("sortOrder") => String.t()
      }
      
  """
  @type list_service_instances_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      counts_summary() :: %{
        "components" => resource_counts_summary(),
        "environmentTemplates" => resource_counts_summary(),
        "environments" => resource_counts_summary(),
        "pipelines" => resource_counts_summary(),
        "serviceInstances" => resource_counts_summary(),
        "serviceTemplates" => resource_counts_summary(),
        "services" => resource_counts_summary()
      }
      
  """
  @type counts_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("resourceArn") => String.t(),
        required("tags") => list(tag()())
      }
      
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      template_sync_config() :: %{
        "branch" => String.t(),
        "repositoryName" => String.t(),
        "repositoryProvider" => String.t(),
        "subdirectory" => String.t(),
        "templateName" => String.t(),
        "templateType" => String.t()
      }
      
  """
  @type template_sync_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_output() :: %{
        optional("service") => service()
      }
      
  """
  @type delete_service_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_template_version_output() :: %{
        optional("environmentTemplateVersion") => environment_template_version()
      }
      
  """
  @type delete_environment_template_version_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_template_version() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "lastModifiedAt" => [non_neg_integer()],
        "majorVersion" => String.t(),
        "minorVersion" => String.t(),
        "recommendedMinorVersion" => String.t(),
        "schema" => String.t(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type environment_template_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_templates_output() :: %{
        optional("nextToken") => String.t(),
        required("templates") => list(service_template_summary()())
      }
      
  """
  @type list_service_templates_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environment_templates_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_environment_templates_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_repository_sync_definitions_input() :: %{
        optional("nextToken") => String.t(),
        required("repositoryName") => String.t(),
        required("repositoryProvider") => String.t(),
        required("syncType") => String.t()
      }
      
  """
  @type list_repository_sync_definitions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_service_instance_deployment_input() :: %{
        "serviceInstanceName" => String.t(),
        "serviceName" => String.t()
      }
      
  """
  @type cancel_service_instance_deployment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_template_version_output() :: %{
        required("serviceTemplateVersion") => service_template_version()
      }
      
  """
  @type update_service_template_version_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_output() :: %{}
      
  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      list_environment_outputs_input() :: %{
        optional("deploymentId") => String.t(),
        optional("nextToken") => String.t(),
        required("environmentName") => String.t()
      }
      
  """
  @type list_environment_outputs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_template_version_output() :: %{
        optional("serviceTemplateVersion") => service_template_version()
      }
      
  """
  @type delete_service_template_version_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_instance_outputs_input() :: %{
        optional("deploymentId") => String.t(),
        optional("nextToken") => String.t(),
        required("serviceInstanceName") => String.t(),
        required("serviceName") => String.t()
      }
      
  """
  @type list_service_instance_outputs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_output() :: %{
        optional("environment") => environment()
      }
      
  """
  @type delete_environment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_component_input() :: %{
        "name" => String.t()
      }
      
  """
  @type get_component_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_template_versions_input() :: %{
        optional("majorVersion") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("templateName") => String.t()
      }
      
  """
  @type list_service_template_versions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_sync_blocker_output() :: %{
        optional("serviceInstanceName") => String.t(),
        required("serviceName") => String.t(),
        required("serviceSyncBlocker") => sync_blocker()
      }
      
  """
  @type update_service_sync_blocker_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_account_settings_input() :: %{
        optional("deletePipelineProvisioningRepository") => [boolean()],
        optional("pipelineCodebuildRoleArn") => String.t(),
        optional("pipelineProvisioningRepository") => repository_branch_input(),
        optional("pipelineServiceRoleArn") => String.t()
      }
      
  """
  @type update_account_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_repository_input() :: %{
        "name" => String.t(),
        "provider" => String.t()
      }
      
  """
  @type delete_repository_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      provisioned_resource() :: %{
        "identifier" => String.t(),
        "name" => String.t(),
        "provisioningEngine" => String.t()
      }
      
  """
  @type provisioned_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_input() :: %{
        "name" => String.t()
      }
      
  """
  @type delete_service_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_account_settings_output() :: %{
        required("accountSettings") => account_settings()
      }
      
  """
  @type update_account_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_template_input() :: %{
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("encryptionKey") => String.t(),
        optional("pipelineProvisioning") => String.t(),
        optional("tags") => list(tag()()),
        required("name") => String.t()
      }
      
  """
  @type create_service_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environment_provisioned_resources_output() :: %{
        optional("nextToken") => String.t(),
        required("provisionedResources") => list(provisioned_resource()())
      }
      
  """
  @type list_environment_provisioned_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_template() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "displayName" => String.t(),
        "encryptionKey" => String.t(),
        "lastModifiedAt" => [non_neg_integer()],
        "name" => String.t(),
        "provisioning" => String.t(),
        "recommendedVersion" => String.t()
      }
      
  """
  @type environment_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("resourceArn") => String.t(),
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_instances_filter() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type list_service_instances_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_environment_account_connection_output() :: %{
        required("environmentAccountConnection") => environment_account_connection()
      }
      
  """
  @type get_environment_account_connection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resources_summary_input() :: %{}
      
  """
  @type get_resources_summary_input() :: %{}

  @typedoc """

  ## Example:
      
      delete_deployment_output() :: %{
        "deployment" => deployment()
      }
      
  """
  @type delete_deployment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_component_deployment_input() :: %{
        "componentName" => String.t()
      }
      
  """
  @type cancel_component_deployment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_template_versions_output() :: %{
        optional("nextToken") => String.t(),
        required("templateVersions") => list(service_template_version_summary()())
      }
      
  """
  @type list_service_template_versions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_environment_account_connection_input() :: %{
        "id" => String.t()
      }
      
  """
  @type delete_environment_account_connection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_sync_blocker_summary_input() :: %{
        optional("serviceInstanceName") => String.t(),
        required("serviceName") => String.t()
      }
      
  """
  @type get_service_sync_blocker_summary_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_output() :: %{
        required("service") => service()
      }
      
  """
  @type create_service_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_templates_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_service_templates_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_template_input() :: %{
        "name" => String.t()
      }
      
  """
  @type get_service_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_pipeline_provisioned_resources_input() :: %{
        optional("nextToken") => String.t(),
        required("serviceName") => String.t()
      }
      
  """
  @type list_service_pipeline_provisioned_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_settings() :: %{
        "pipelineCodebuildRoleArn" => String.t(),
        "pipelineProvisioningRepository" => repository_branch(),
        "pipelineServiceRoleArn" => String.t()
      }
      
  """
  @type account_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_pipeline_output() :: %{
        required("pipeline") => service_pipeline()
      }
      
  """
  @type update_service_pipeline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()],
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_component_output() :: %{
        required("component") => component()
      }
      
  """
  @type update_component_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_pipeline_outputs_output() :: %{
        optional("nextToken") => String.t(),
        required("outputs") => list(output()())
      }
      
  """
  @type list_service_pipeline_outputs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_sync_attempt() :: %{
        "events" => list(resource_sync_event()()),
        "initialRevision" => revision(),
        "startedAt" => [non_neg_integer()],
        "status" => String.t(),
        "target" => [String.t()],
        "targetRevision" => revision()
      }
      
  """
  @type resource_sync_attempt() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_template_version_output() :: %{
        required("serviceTemplateVersion") => service_template_version()
      }
      
  """
  @type create_service_template_version_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_output() :: %{}
      
  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      list_environment_account_connections_input() :: %{
        optional("environmentName") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("statuses") => list(String.t()()),
        required("requestedBy") => String.t()
      }
      
  """
  @type list_environment_account_connections_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_repositories_output() :: %{
        optional("nextToken") => String.t(),
        required("repositories") => list(repository_summary()())
      }
      
  """
  @type list_repositories_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_template_sync_config_input() :: %{
        required("templateName") => String.t(),
        required("templateType") => String.t()
      }
      
  """
  @type get_template_sync_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_account_connection_input() :: %{
        optional("clientToken") => String.t(),
        optional("codebuildRoleArn") => String.t(),
        optional("componentRoleArn") => String.t(),
        optional("roleArn") => String.t(),
        optional("tags") => list(tag()()),
        required("environmentName") => String.t(),
        required("managementAccountId") => String.t()
      }
      
  """
  @type create_environment_account_connection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_template_version_output() :: %{
        required("environmentTemplateVersion") => environment_template_version()
      }
      
  """
  @type create_environment_template_version_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_settings_output() :: %{
        optional("accountSettings") => account_settings()
      }
      
  """
  @type get_account_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_repository_sync_status_input() :: %{
        required("branch") => String.t(),
        required("repositoryName") => String.t(),
        required("repositoryProvider") => String.t(),
        required("syncType") => String.t()
      }
      
  """
  @type get_repository_sync_status_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_instance_summary() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "deploymentStatus" => String.t(),
        "deploymentStatusMessage" => String.t(),
        "environmentName" => String.t(),
        "lastAttemptedDeploymentId" => String.t(),
        "lastDeploymentAttemptedAt" => [non_neg_integer()],
        "lastDeploymentSucceededAt" => [non_neg_integer()],
        "lastSucceededDeploymentId" => String.t(),
        "name" => String.t(),
        "serviceName" => String.t(),
        "templateMajorVersion" => String.t(),
        "templateMinorVersion" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type service_instance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_template_version_summary() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "lastModifiedAt" => [non_neg_integer()],
        "majorVersion" => String.t(),
        "minorVersion" => String.t(),
        "recommendedMinorVersion" => String.t(),
        "status" => String.t(),
        "statusMessage" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type service_template_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_repository_sync_definitions_output() :: %{
        optional("nextToken") => String.t(),
        required("syncDefinitions") => list(repository_sync_definition()())
      }
      
  """
  @type list_repository_sync_definitions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_template_version_input() :: %{
        "majorVersion" => String.t(),
        "minorVersion" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type get_service_template_version_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_account_connection_output() :: %{
        required("environmentAccountConnection") => environment_account_connection()
      }
      
  """
  @type update_environment_account_connection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_sync_blocker_summary_output() :: %{
        optional("serviceSyncBlockerSummary") => service_sync_blocker_summary()
      }
      
  """
  @type get_service_sync_blocker_summary_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_environment_template_input() :: %{
        "description" => String.t(),
        "displayName" => String.t(),
        "name" => String.t()
      }
      
  """
  @type update_environment_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environment_provisioned_resources_input() :: %{
        optional("nextToken") => String.t(),
        required("environmentName") => String.t()
      }
      
  """
  @type list_environment_provisioned_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_service_instance_deployment_output() :: %{
        required("serviceInstance") => service_instance()
      }
      
  """
  @type cancel_service_instance_deployment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_template_input() :: %{
        "name" => String.t()
      }
      
  """
  @type delete_service_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resources_summary_output() :: %{
        required("counts") => counts_summary()
      }
      
  """
  @type get_resources_summary_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_deployments_output() :: %{
        "deployments" => list(deployment_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_deployments_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_input() :: %{
        optional("branchName") => String.t(),
        optional("description") => String.t(),
        optional("repositoryConnectionArn") => String.t(),
        optional("repositoryId") => String.t(),
        optional("tags") => list(tag()()),
        optional("templateMinorVersion") => String.t(),
        required("name") => String.t(),
        required("spec") => String.t(),
        required("templateMajorVersion") => String.t(),
        required("templateName") => String.t()
      }
      
  """
  @type create_service_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_deployments_input() :: %{
        optional("componentName") => String.t(),
        optional("environmentName") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("serviceInstanceName") => String.t(),
        optional("serviceName") => String.t()
      }
      
  """
  @type list_deployments_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_repository_input() :: %{
        optional("encryptionKey") => String.t(),
        optional("tags") => list(tag()()),
        required("connectionArn") => String.t(),
        required("name") => String.t(),
        required("provider") => String.t()
      }
      
  """
  @type create_repository_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_component_input() :: %{
        "name" => String.t()
      }
      
  """
  @type delete_component_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_pipeline_input() :: %{
        "deploymentType" => String.t(),
        "serviceName" => String.t(),
        "spec" => String.t(),
        "templateMajorVersion" => String.t(),
        "templateMinorVersion" => String.t()
      }
      
  """
  @type update_service_pipeline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_template_output() :: %{
        required("serviceTemplate") => service_template()
      }
      
  """
  @type get_service_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_component_deployment_output() :: %{
        required("component") => component()
      }
      
  """
  @type cancel_component_deployment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_component_outputs_output() :: %{
        optional("nextToken") => String.t(),
        required("outputs") => list(output()())
      }
      
  """
  @type list_component_outputs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_template_sync_status_output() :: %{
        optional("desiredState") => revision(),
        optional("latestSuccessfulSync") => resource_sync_attempt(),
        optional("latestSync") => resource_sync_attempt()
      }
      
  """
  @type get_template_sync_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_sync_config_input() :: %{
        required("branch") => String.t(),
        required("filePath") => String.t(),
        required("repositoryName") => String.t(),
        required("repositoryProvider") => String.t(),
        required("serviceName") => String.t()
      }
      
  """
  @type update_service_sync_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_input() :: %{
        "description" => String.t(),
        "name" => String.t(),
        "spec" => String.t()
      }
      
  """
  @type update_service_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_sync_event() :: %{
        "event" => [String.t()],
        "externalId" => [String.t()],
        "time" => [non_neg_integer()],
        "type" => [String.t()]
      }
      
  """
  @type resource_sync_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_template_summary() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "displayName" => String.t(),
        "lastModifiedAt" => [non_neg_integer()],
        "name" => String.t(),
        "pipelineProvisioning" => String.t(),
        "recommendedVersion" => String.t()
      }
      
  """
  @type service_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_environment_template_version_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("majorVersion") => String.t(),
        optional("tags") => list(tag()()),
        required("source") => list(),
        required("templateName") => String.t()
      }
      
  """
  @type create_environment_template_version_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_sync_event() :: %{
        "event" => [String.t()],
        "externalId" => [String.t()],
        "time" => [non_neg_integer()],
        "type" => [String.t()]
      }
      
  """
  @type repository_sync_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_instance_input() :: %{
        "name" => String.t(),
        "serviceName" => String.t()
      }
      
  """
  @type get_service_instance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      revision() :: %{
        "branch" => String.t(),
        "directory" => [String.t()],
        "repositoryName" => String.t(),
        "repositoryProvider" => String.t(),
        "sha" => String.t()
      }
      
  """
  @type revision() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compatible_environment_template() :: %{
        "majorVersion" => String.t(),
        "templateName" => String.t()
      }
      
  """
  @type compatible_environment_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_services_output() :: %{
        optional("nextToken") => String.t(),
        required("services") => list(service_summary()())
      }
      
  """
  @type list_services_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_service_pipeline_deployment_output() :: %{
        required("pipeline") => service_pipeline()
      }
      
  """
  @type cancel_service_pipeline_deployment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_template_sync_config_input() :: %{
        required("templateName") => String.t(),
        required("templateType") => String.t()
      }
      
  """
  @type delete_template_sync_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_template() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t(),
        "displayName" => String.t(),
        "encryptionKey" => String.t(),
        "lastModifiedAt" => [non_neg_integer()],
        "name" => String.t(),
        "pipelineProvisioning" => String.t(),
        "recommendedVersion" => String.t()
      }
      
  """
  @type service_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_environment_account_connection_output() :: %{
        required("environmentAccountConnection") => environment_account_connection()
      }
      
  """
  @type reject_environment_account_connection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_template_sync_config_output() :: %{
        optional("templateSyncConfig") => template_sync_config()
      }
      
  """
  @type create_template_sync_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output() :: %{
        "key" => String.t(),
        "valueString" => String.t()
      }
      
  """
  @type output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_template_input() :: %{
        "description" => String.t(),
        "displayName" => String.t(),
        "name" => String.t()
      }
      
  """
  @type update_service_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_environment_account_connections_output() :: %{
        optional("nextToken") => String.t(),
        required("environmentAccountConnections") => list(environment_account_connection_summary()())
      }
      
  """
  @type list_environment_account_connections_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_services_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_services_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_sync_blocker_summary() :: %{
        "latestBlockers" => list(sync_blocker()()),
        "serviceInstanceName" => [String.t()],
        "serviceName" => [String.t()]
      }
      
  """
  @type service_sync_blocker_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_template_sync_config_output() :: %{
        optional("templateSyncConfig") => template_sync_config()
      }
      
  """
  @type get_template_sync_config_output() :: %{String.t() => any()}

  @type accept_environment_account_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_component_deployment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_environment_deployment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_service_instance_deployment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_service_pipeline_deployment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_environment_account_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_environment_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_environment_template_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_repository_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_service_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_service_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_service_sync_config_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_service_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_service_template_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_template_sync_config_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_deployment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_environment_account_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_environment_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_environment_template_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_repository_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_service_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_service_sync_config_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_service_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_service_template_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_template_sync_config_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_account_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_deployment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_account_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_template_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_repository_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_repository_sync_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_resources_summary_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_service_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_service_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_service_instance_sync_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_service_sync_blocker_summary_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_service_sync_config_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_service_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_service_template_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_template_sync_config_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_template_sync_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_component_outputs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_component_provisioned_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_components_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_deployments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_environment_account_connections_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_environment_outputs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_environment_provisioned_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_environment_template_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_environment_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_environments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_repositories_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_repository_sync_definitions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_service_instance_outputs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_service_instance_provisioned_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_service_instances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_service_pipeline_outputs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_service_pipeline_provisioned_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_service_template_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_service_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_services_errors() ::
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

  @type notify_resource_deployment_status_change_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type reject_environment_account_connection_errors() ::
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
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_account_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type update_component_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_environment_account_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_environment_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_environment_template_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_service_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_service_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_service_pipeline_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_service_sync_blocker_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_service_sync_config_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_service_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_service_template_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_template_sync_config_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-07-20",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "proton",
      global?: false,
      protocol: "json",
      service_id: "Proton",
      signature_version: "v4",
      signing_name: "proton",
      target_prefix: "AwsProton20200720"
    }
  end

  @doc """
  In a management account, an environment account connection request is accepted.

  When the environment account connection request is accepted, Proton
  can use the associated IAM role to provision environment infrastructure
  resources in the associated environment account.

  For more information, see [Environment account connections](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
  in the *Proton User guide*.
  """
  @spec accept_environment_account_connection(
          map(),
          accept_environment_account_connection_input(),
          list()
        ) ::
          {:ok, accept_environment_account_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accept_environment_account_connection_errors()}
  def accept_environment_account_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptEnvironmentAccountConnection", input, options)
  end

  @doc """
  Attempts to cancel a component deployment (for a component that is in the
  `IN_PROGRESS` deployment status).

  For more information about components, see
  [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the
  *Proton User Guide*.
  """
  @spec cancel_component_deployment(map(), cancel_component_deployment_input(), list()) ::
          {:ok, cancel_component_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_component_deployment_errors()}
  def cancel_component_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelComponentDeployment", input, options)
  end

  @doc """
  Attempts to cancel an environment deployment on an `UpdateEnvironment` action,
  if the deployment is `IN_PROGRESS`.

  For more
  information, see [Update an environment](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-update.html)
  in the *Proton
  User guide*.

  The following list includes potential cancellation scenarios.

    *
  If the cancellation attempt succeeds, the resulting deployment state is
  `CANCELLED`.

    *
  If the cancellation attempt fails, the resulting deployment state is `FAILED`.

    *
  If the current `UpdateEnvironment` action succeeds before the cancellation
  attempt starts, the resulting deployment state is
  `SUCCEEDED` and the cancellation attempt has no effect.
  """
  @spec cancel_environment_deployment(map(), cancel_environment_deployment_input(), list()) ::
          {:ok, cancel_environment_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_environment_deployment_errors()}
  def cancel_environment_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelEnvironmentDeployment", input, options)
  end

  @doc """
  Attempts to cancel a service instance deployment on an `UpdateServiceInstance`
  action, if the deployment is `IN_PROGRESS`.

  For
  more information, see [Update a service instance](https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-instance-update.html)
  in the *Proton User guide*.

  The following list includes potential cancellation scenarios.

    *
  If the cancellation attempt succeeds, the resulting deployment state is
  `CANCELLED`.

    *
  If the cancellation attempt fails, the resulting deployment state is
  `FAILED`.

    *
  If the current `UpdateServiceInstance` action succeeds before the
  cancellation attempt starts, the resulting deployment state is `SUCCEEDED` and
  the cancellation attempt has no effect.
  """
  @spec cancel_service_instance_deployment(
          map(),
          cancel_service_instance_deployment_input(),
          list()
        ) ::
          {:ok, cancel_service_instance_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_service_instance_deployment_errors()}
  def cancel_service_instance_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelServiceInstanceDeployment", input, options)
  end

  @doc """
  Attempts to cancel a service pipeline deployment on an `UpdateServicePipeline`
  action, if the deployment is `IN_PROGRESS`.

  For
  more information, see [Update a service pipeline](https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-pipeline-update.html)
  in the *Proton User guide*.

  The following list includes potential cancellation scenarios.

    *
  If the cancellation attempt succeeds, the resulting deployment state is
  `CANCELLED`.

    *
  If the cancellation attempt fails, the resulting deployment state is
  `FAILED`.

    *
  If the current `UpdateServicePipeline` action succeeds before the
  cancellation attempt starts, the resulting deployment state is `SUCCEEDED` and
  the cancellation attempt has no effect.
  """
  @spec cancel_service_pipeline_deployment(
          map(),
          cancel_service_pipeline_deployment_input(),
          list()
        ) ::
          {:ok, cancel_service_pipeline_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_service_pipeline_deployment_errors()}
  def cancel_service_pipeline_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelServicePipelineDeployment", input, options)
  end

  @doc """
  Create an Proton component.

  A component is an infrastructure extension for a service instance.

  For more information about components, see
  [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the
  *Proton User Guide*.
  """
  @spec create_component(map(), create_component_input(), list()) ::
          {:ok, create_component_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_component_errors()}
  def create_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateComponent", input, options)
  end

  @doc """
  Deploy a new environment.

  An Proton environment is created from an environment template that defines
  infrastructure and resources that can be
  shared across services.

  ## You can provision environments using the following methods:

    *
  Amazon Web Services-managed provisioning: Proton makes direct calls to provision
  your resources.

    *
  Self-managed provisioning: Proton makes pull requests on your repository to
  provide compiled infrastructure as code (IaC) files that your IaC
  engine uses to provision resources.

  For more information, see
  [Environments](https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html) and [Provisioning
  methods](https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html)
  in the *Proton User
  Guide*.
  """
  @spec create_environment(map(), create_environment_input(), list()) ::
          {:ok, create_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_environment_errors()}
  def create_environment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEnvironment", input, options)
  end

  @doc """
  Create an environment account connection in an environment account so that
  environment infrastructure resources can be provisioned in the environment
  account from a management account.

  An environment account connection is a secure bi-directional connection between
  a *management account* and an *environment
  account* that maintains authorization and permissions. For more information, see
  [Environment account connections](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
  in the *Proton User
  guide*.
  """
  @spec create_environment_account_connection(
          map(),
          create_environment_account_connection_input(),
          list()
        ) ::
          {:ok, create_environment_account_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_environment_account_connection_errors()}
  def create_environment_account_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEnvironmentAccountConnection", input, options)
  end

  @doc """
  Create an environment template for Proton.

  For more information, see [Environment Templates](https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html)
  in the *Proton User Guide*.

  You can create an environment template in one of the two following ways:

    *
  Register and publish a *standard* environment template that instructs Proton to
  deploy and manage environment
  infrastructure.

    *
  Register and publish a *customer managed* environment template that connects
  Proton to your existing provisioned
  infrastructure that you manage. Proton *doesn't* manage your existing
  provisioned infrastructure. To create an environment
  template for customer provisioned and managed infrastructure, include the
  `provisioning` parameter and set the value to
  `CUSTOMER_MANAGED`. For more information, see [Register and publish an environment
  template](https://docs.aws.amazon.com/proton/latest/userguide/template-create.html)
  in the *Proton User Guide*.
  """
  @spec create_environment_template(map(), create_environment_template_input(), list()) ::
          {:ok, create_environment_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_environment_template_errors()}
  def create_environment_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEnvironmentTemplate", input, options)
  end

  @doc """
  Create a new major or minor version of an environment template.

  A major version of an environment template is a version that
  *isn't* backwards compatible. A minor version of an environment template is a
  version that's backwards compatible within its major
  version.
  """
  @spec create_environment_template_version(
          map(),
          create_environment_template_version_input(),
          list()
        ) ::
          {:ok, create_environment_template_version_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_environment_template_version_errors()}
  def create_environment_template_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEnvironmentTemplateVersion", input, options)
  end

  @doc """
  Create and register a link to a repository.

  Proton uses the link to repeatedly access the repository, to either push to it
  (self-managed
  provisioning) or pull from it (template sync). You can share a linked repository
  across multiple resources (like environments using self-managed
  provisioning, or synced templates). When you create a repository link, Proton
  creates a [service-linked role](https://docs.aws.amazon.com/proton/latest/userguide/using-service-linked-roles.html)
  for you.

  For more information, see [Self-managed provisioning](https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self),
  [Template bundles](https://docs.aws.amazon.com/proton/latest/userguide/ag-template-authoring.html#ag-template-bundles),
  and
  [Template sync configurations](https://docs.aws.amazon.com/proton/latest/userguide/ag-template-sync-configs.html)
  in the *Proton
  User Guide*.
  """
  @spec create_repository(map(), create_repository_input(), list()) ::
          {:ok, create_repository_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_repository_errors()}
  def create_repository(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRepository", input, options)
  end

  @doc """
  Create an Proton service.

  An Proton service is an instantiation of a service
  template and often includes several service instances and pipeline. For more
  information, see
  [Services](https://docs.aws.amazon.com/proton/latest/userguide/ag-services.html)

  in the *Proton User Guide*.
  """
  @spec create_service(map(), create_service_input(), list()) ::
          {:ok, create_service_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_errors()}
  def create_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateService", input, options)
  end

  @doc """
  Create a service instance.
  """
  @spec create_service_instance(map(), create_service_instance_input(), list()) ::
          {:ok, create_service_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_instance_errors()}
  def create_service_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateServiceInstance", input, options)
  end

  @doc """
  Create the Proton Ops configuration file.
  """
  @spec create_service_sync_config(map(), create_service_sync_config_input(), list()) ::
          {:ok, create_service_sync_config_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_sync_config_errors()}
  def create_service_sync_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateServiceSyncConfig", input, options)
  end

  @doc """
  Create a service template.

  The administrator creates a service template to define
  standardized infrastructure and an optional CI/CD service pipeline. Developers,
  in turn,
  select the service template from Proton. If the selected service template
  includes a
  service pipeline definition, they provide a link to their source code
  repository. Proton
  then deploys and manages the infrastructure defined by the selected service
  template. For more
  information, see [Proton templates](https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html)
  in the *Proton User Guide*.
  """
  @spec create_service_template(map(), create_service_template_input(), list()) ::
          {:ok, create_service_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_template_errors()}
  def create_service_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateServiceTemplate", input, options)
  end

  @doc """
  Create a new major or minor version of a service template.

  A major version of a service
  template is a version that *isn't* backward compatible. A minor version of
  a service template is a version that's backward compatible within its major
  version.
  """
  @spec create_service_template_version(map(), create_service_template_version_input(), list()) ::
          {:ok, create_service_template_version_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_template_version_errors()}
  def create_service_template_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateServiceTemplateVersion", input, options)
  end

  @doc """
  Set up a template to create new template versions automatically by tracking a
  linked repository.

  A linked repository is a repository that has
  been registered with Proton. For more information, see `CreateRepository`.

  When a commit is pushed to your linked repository, Proton checks for changes to
  your repository template bundles. If it detects a template
  bundle change, a new major or minor version of its template is created, if the
  version doesn’t already exist. For more information, see [Template sync configurations](https://docs.aws.amazon.com/proton/latest/userguide/ag-template-sync-configs.html)
  in the *Proton
  User Guide*.
  """
  @spec create_template_sync_config(map(), create_template_sync_config_input(), list()) ::
          {:ok, create_template_sync_config_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_template_sync_config_errors()}
  def create_template_sync_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTemplateSyncConfig", input, options)
  end

  @doc """
  Delete an Proton component resource.

  For more information about components, see
  [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the
  *Proton User Guide*.
  """
  @spec delete_component(map(), delete_component_input(), list()) ::
          {:ok, delete_component_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_component_errors()}
  def delete_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteComponent", input, options)
  end

  @doc """
  Delete the deployment.
  """
  @spec delete_deployment(map(), delete_deployment_input(), list()) ::
          {:ok, delete_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_deployment_errors()}
  def delete_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDeployment", input, options)
  end

  @doc """
  Delete an environment.
  """
  @spec delete_environment(map(), delete_environment_input(), list()) ::
          {:ok, delete_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_errors()}
  def delete_environment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEnvironment", input, options)
  end

  @doc """
  In an environment account, delete an environment account connection.

  After you delete an environment account connection that’s in use by an Proton
  environment, Proton *can’t* manage the
  environment infrastructure resources until a new environment account connection
  is accepted for the environment account and associated environment. You're
  responsible for cleaning up provisioned resources that remain without an
  environment connection.

  For more information, see [Environment account connections](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
  in the *Proton User guide*.
  """
  @spec delete_environment_account_connection(
          map(),
          delete_environment_account_connection_input(),
          list()
        ) ::
          {:ok, delete_environment_account_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_account_connection_errors()}
  def delete_environment_account_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEnvironmentAccountConnection", input, options)
  end

  @doc """
  If no other major or minor versions of an environment template exist, delete the
  environment template.
  """
  @spec delete_environment_template(map(), delete_environment_template_input(), list()) ::
          {:ok, delete_environment_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_template_errors()}
  def delete_environment_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEnvironmentTemplate", input, options)
  end

  @doc """
  If no other minor versions of an environment template exist, delete a major
  version of the environment template if it's not the
  `Recommended` version.

  Delete the `Recommended` version of the environment template if no other major
  versions or minor versions
  of the environment template exist. A major version of an environment template is
  a version that's not backward compatible.

  Delete a minor version of an environment template if it *isn't* the
  `Recommended` version. Delete a
  `Recommended` minor version of the environment template if no other minor
  versions of the environment template exist. A minor version of an
  environment template is a version that's backward compatible.
  """
  @spec delete_environment_template_version(
          map(),
          delete_environment_template_version_input(),
          list()
        ) ::
          {:ok, delete_environment_template_version_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_template_version_errors()}
  def delete_environment_template_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEnvironmentTemplateVersion", input, options)
  end

  @doc """
  De-register and unlink your repository.
  """
  @spec delete_repository(map(), delete_repository_input(), list()) ::
          {:ok, delete_repository_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_repository_errors()}
  def delete_repository(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRepository", input, options)
  end

  @doc """
  Delete a service, with its instances and pipeline.

  You can't delete a service if it has any service instances that have components
  attached
  to them.

  For more information about components, see
  [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the
  *Proton User Guide*.
  """
  @spec delete_service(map(), delete_service_input(), list()) ::
          {:ok, delete_service_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_errors()}
  def delete_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteService", input, options)
  end

  @doc """
  Delete the Proton Ops file.
  """
  @spec delete_service_sync_config(map(), delete_service_sync_config_input(), list()) ::
          {:ok, delete_service_sync_config_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_sync_config_errors()}
  def delete_service_sync_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteServiceSyncConfig", input, options)
  end

  @doc """
  If no other major or minor versions of the service template exist, delete the
  service
  template.
  """
  @spec delete_service_template(map(), delete_service_template_input(), list()) ::
          {:ok, delete_service_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_template_errors()}
  def delete_service_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteServiceTemplate", input, options)
  end

  @doc """
  If no other minor versions of a service template exist, delete a major version
  of the
  service template if it's not the `Recommended` version.

  Delete the
  `Recommended` version of the service template if no other major versions or
  minor
  versions of the service template exist. A major version of a service template is
  a version
  that *isn't* backwards compatible.

  Delete a minor version of a service template if it's not the `Recommended`
  version. Delete a `Recommended` minor version of the service template if no
  other
  minor versions of the service template exist. A minor version of a service
  template is a
  version that's backwards compatible.
  """
  @spec delete_service_template_version(map(), delete_service_template_version_input(), list()) ::
          {:ok, delete_service_template_version_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_template_version_errors()}
  def delete_service_template_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteServiceTemplateVersion", input, options)
  end

  @doc """
  Delete a template sync configuration.
  """
  @spec delete_template_sync_config(map(), delete_template_sync_config_input(), list()) ::
          {:ok, delete_template_sync_config_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_template_sync_config_errors()}
  def delete_template_sync_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTemplateSyncConfig", input, options)
  end

  @doc """
  Get detail data for Proton account-wide settings.
  """
  @spec get_account_settings(map(), get_account_settings_input(), list()) ::
          {:ok, get_account_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_settings_errors()}
  def get_account_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAccountSettings", input, options)
  end

  @doc """
  Get detailed data for a component.

  For more information about components, see
  [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the
  *Proton User Guide*.
  """
  @spec get_component(map(), get_component_input(), list()) ::
          {:ok, get_component_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_component_errors()}
  def get_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetComponent", input, options)
  end

  @doc """
  Get detailed data for a deployment.
  """
  @spec get_deployment(map(), get_deployment_input(), list()) ::
          {:ok, get_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_deployment_errors()}
  def get_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDeployment", input, options)
  end

  @doc """
  Get detailed data for an environment.
  """
  @spec get_environment(map(), get_environment_input(), list()) ::
          {:ok, get_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_environment_errors()}
  def get_environment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEnvironment", input, options)
  end

  @doc """
  In an environment account, get the detailed data for an environment account
  connection.

  For more information, see [Environment account connections](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
  in the *Proton User guide*.
  """
  @spec get_environment_account_connection(
          map(),
          get_environment_account_connection_input(),
          list()
        ) ::
          {:ok, get_environment_account_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_environment_account_connection_errors()}
  def get_environment_account_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEnvironmentAccountConnection", input, options)
  end

  @doc """
  Get detailed data for an environment template.
  """
  @spec get_environment_template(map(), get_environment_template_input(), list()) ::
          {:ok, get_environment_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_environment_template_errors()}
  def get_environment_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEnvironmentTemplate", input, options)
  end

  @doc """
  Get detailed data for a major or minor version of an environment template.
  """
  @spec get_environment_template_version(map(), get_environment_template_version_input(), list()) ::
          {:ok, get_environment_template_version_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_environment_template_version_errors()}
  def get_environment_template_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEnvironmentTemplateVersion", input, options)
  end

  @doc """
  Get detail data for a linked repository.
  """
  @spec get_repository(map(), get_repository_input(), list()) ::
          {:ok, get_repository_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_repository_errors()}
  def get_repository(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRepository", input, options)
  end

  @doc """
  Get the sync status of a repository used for Proton template sync.

  For more information about template sync, see .

  A repository sync status isn't tied to the Proton Repository resource (or any
  other Proton resource). Therefore, tags on an Proton Repository resource
  have no effect on this action. Specifically, you can't use these tags to control
  access to this action using Attribute-based access control
  (ABAC).

  For more information about ABAC, see
  [ABAC](https://docs.aws.amazon.com/proton/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-tags)
  in the *Proton User
  Guide*.
  """
  @spec get_repository_sync_status(map(), get_repository_sync_status_input(), list()) ::
          {:ok, get_repository_sync_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_repository_sync_status_errors()}
  def get_repository_sync_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRepositorySyncStatus", input, options)
  end

  @doc """
  Get counts of Proton resources.

  For infrastructure-provisioning resources (environments, services, service
  instances, pipelines), the action returns staleness counts. A
  resource is stale when it's behind the recommended version of the Proton
  template that it uses and it needs an update to become current.

  The action returns staleness counts (counts of resources that are up-to-date,
  behind a template major version, or behind a template minor
  version), the total number of resources, and the number of resources that are in
  a failed state, grouped by resource type. Components,
  environments, and service templates return less information - see the
  `components`, `environments`, and
  `serviceTemplates` field descriptions.

  For context, the action also returns the total number of each type of Proton
  template in the Amazon Web Services account.

  For more information, see [Proton dashboard](https://docs.aws.amazon.com/proton/latest/userguide/monitoring-dashboard.html)
  in the
  *Proton User Guide*.
  """
  @spec get_resources_summary(map(), get_resources_summary_input(), list()) ::
          {:ok, get_resources_summary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resources_summary_errors()}
  def get_resources_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourcesSummary", input, options)
  end

  @doc """
  Get detailed data for a service.
  """
  @spec get_service(map(), get_service_input(), list()) ::
          {:ok, get_service_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_errors()}
  def get_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetService", input, options)
  end

  @doc """
  Get detailed data for a service instance.

  A service instance is an instantiation of
  service template and it runs in a specific environment.
  """
  @spec get_service_instance(map(), get_service_instance_input(), list()) ::
          {:ok, get_service_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_instance_errors()}
  def get_service_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServiceInstance", input, options)
  end

  @doc """
  Get the status of the synced service instance.
  """
  @spec get_service_instance_sync_status(map(), get_service_instance_sync_status_input(), list()) ::
          {:ok, get_service_instance_sync_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_instance_sync_status_errors()}
  def get_service_instance_sync_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServiceInstanceSyncStatus", input, options)
  end

  @doc """
  Get detailed data for the service sync blocker summary.
  """
  @spec get_service_sync_blocker_summary(map(), get_service_sync_blocker_summary_input(), list()) ::
          {:ok, get_service_sync_blocker_summary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_sync_blocker_summary_errors()}
  def get_service_sync_blocker_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServiceSyncBlockerSummary", input, options)
  end

  @doc """
  Get detailed information for the service sync configuration.
  """
  @spec get_service_sync_config(map(), get_service_sync_config_input(), list()) ::
          {:ok, get_service_sync_config_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_sync_config_errors()}
  def get_service_sync_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServiceSyncConfig", input, options)
  end

  @doc """
  Get detailed data for a service template.
  """
  @spec get_service_template(map(), get_service_template_input(), list()) ::
          {:ok, get_service_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_template_errors()}
  def get_service_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServiceTemplate", input, options)
  end

  @doc """
  Get detailed data for a major or minor version of a service template.
  """
  @spec get_service_template_version(map(), get_service_template_version_input(), list()) ::
          {:ok, get_service_template_version_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_template_version_errors()}
  def get_service_template_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServiceTemplateVersion", input, options)
  end

  @doc """
  Get detail data for a template sync configuration.
  """
  @spec get_template_sync_config(map(), get_template_sync_config_input(), list()) ::
          {:ok, get_template_sync_config_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_template_sync_config_errors()}
  def get_template_sync_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTemplateSyncConfig", input, options)
  end

  @doc """
  Get the status of a template sync.
  """
  @spec get_template_sync_status(map(), get_template_sync_status_input(), list()) ::
          {:ok, get_template_sync_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_template_sync_status_errors()}
  def get_template_sync_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTemplateSyncStatus", input, options)
  end

  @doc """
  Get a list of component Infrastructure as Code (IaC) outputs.

  For more information about components, see
  [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the
  *Proton User Guide*.
  """
  @spec list_component_outputs(map(), list_component_outputs_input(), list()) ::
          {:ok, list_component_outputs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_component_outputs_errors()}
  def list_component_outputs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListComponentOutputs", input, options)
  end

  @doc """
  List provisioned resources for a component with details.

  For more information about components, see
  [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the
  *Proton User Guide*.
  """
  @spec list_component_provisioned_resources(
          map(),
          list_component_provisioned_resources_input(),
          list()
        ) ::
          {:ok, list_component_provisioned_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_component_provisioned_resources_errors()}
  def list_component_provisioned_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListComponentProvisionedResources", input, options)
  end

  @doc """
  List components with summary data.

  You can filter the result list by environment, service, or a single service
  instance.

  For more information about components, see
  [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the
  *Proton User Guide*.
  """
  @spec list_components(map(), list_components_input(), list()) ::
          {:ok, list_components_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_components_errors()}
  def list_components(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListComponents", input, options)
  end

  @doc """
  List deployments.

  You can filter the result list by environment, service, or a single service
  instance.
  """
  @spec list_deployments(map(), list_deployments_input(), list()) ::
          {:ok, list_deployments_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_deployments_errors()}
  def list_deployments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDeployments", input, options)
  end

  @doc """
  View a list of environment account connections.

  For more information, see [Environment account connections](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
  in the *Proton User guide*.
  """
  @spec list_environment_account_connections(
          map(),
          list_environment_account_connections_input(),
          list()
        ) ::
          {:ok, list_environment_account_connections_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environment_account_connections_errors()}
  def list_environment_account_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnvironmentAccountConnections", input, options)
  end

  @doc """
  List the infrastructure as code outputs for your environment.
  """
  @spec list_environment_outputs(map(), list_environment_outputs_input(), list()) ::
          {:ok, list_environment_outputs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environment_outputs_errors()}
  def list_environment_outputs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnvironmentOutputs", input, options)
  end

  @doc """
  List the provisioned resources for your environment.
  """
  @spec list_environment_provisioned_resources(
          map(),
          list_environment_provisioned_resources_input(),
          list()
        ) ::
          {:ok, list_environment_provisioned_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environment_provisioned_resources_errors()}
  def list_environment_provisioned_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnvironmentProvisionedResources", input, options)
  end

  @doc """
  List major or minor versions of an environment template with detail data.
  """
  @spec list_environment_template_versions(
          map(),
          list_environment_template_versions_input(),
          list()
        ) ::
          {:ok, list_environment_template_versions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environment_template_versions_errors()}
  def list_environment_template_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnvironmentTemplateVersions", input, options)
  end

  @doc """
  List environment templates.
  """
  @spec list_environment_templates(map(), list_environment_templates_input(), list()) ::
          {:ok, list_environment_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environment_templates_errors()}
  def list_environment_templates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnvironmentTemplates", input, options)
  end

  @doc """
  List environments with detail data summaries.
  """
  @spec list_environments(map(), list_environments_input(), list()) ::
          {:ok, list_environments_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environments_errors()}
  def list_environments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnvironments", input, options)
  end

  @doc """
  List linked repositories with detail data.
  """
  @spec list_repositories(map(), list_repositories_input(), list()) ::
          {:ok, list_repositories_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_repositories_errors()}
  def list_repositories(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRepositories", input, options)
  end

  @doc """
  List repository sync definitions with detail data.
  """
  @spec list_repository_sync_definitions(map(), list_repository_sync_definitions_input(), list()) ::
          {:ok, list_repository_sync_definitions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_repository_sync_definitions_errors()}
  def list_repository_sync_definitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRepositorySyncDefinitions", input, options)
  end

  @doc """
  Get a list service of instance Infrastructure as Code (IaC) outputs.
  """
  @spec list_service_instance_outputs(map(), list_service_instance_outputs_input(), list()) ::
          {:ok, list_service_instance_outputs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_instance_outputs_errors()}
  def list_service_instance_outputs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServiceInstanceOutputs", input, options)
  end

  @doc """
  List provisioned resources for a service instance with details.
  """
  @spec list_service_instance_provisioned_resources(
          map(),
          list_service_instance_provisioned_resources_input(),
          list()
        ) ::
          {:ok, list_service_instance_provisioned_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_instance_provisioned_resources_errors()}
  def list_service_instance_provisioned_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServiceInstanceProvisionedResources", input, options)
  end

  @doc """
  List service instances with summary data.

  This action lists service instances of all
  services in the Amazon Web Services account.
  """
  @spec list_service_instances(map(), list_service_instances_input(), list()) ::
          {:ok, list_service_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_instances_errors()}
  def list_service_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServiceInstances", input, options)
  end

  @doc """
  Get a list of service pipeline Infrastructure as Code (IaC) outputs.
  """
  @spec list_service_pipeline_outputs(map(), list_service_pipeline_outputs_input(), list()) ::
          {:ok, list_service_pipeline_outputs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_pipeline_outputs_errors()}
  def list_service_pipeline_outputs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServicePipelineOutputs", input, options)
  end

  @doc """
  List provisioned resources for a service and pipeline with details.
  """
  @spec list_service_pipeline_provisioned_resources(
          map(),
          list_service_pipeline_provisioned_resources_input(),
          list()
        ) ::
          {:ok, list_service_pipeline_provisioned_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_pipeline_provisioned_resources_errors()}
  def list_service_pipeline_provisioned_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServicePipelineProvisionedResources", input, options)
  end

  @doc """
  List major or minor versions of a service template with detail data.
  """
  @spec list_service_template_versions(map(), list_service_template_versions_input(), list()) ::
          {:ok, list_service_template_versions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_template_versions_errors()}
  def list_service_template_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServiceTemplateVersions", input, options)
  end

  @doc """
  List service templates with detail data.
  """
  @spec list_service_templates(map(), list_service_templates_input(), list()) ::
          {:ok, list_service_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_service_templates_errors()}
  def list_service_templates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServiceTemplates", input, options)
  end

  @doc """
  List services with summaries of detail data.
  """
  @spec list_services(map(), list_services_input(), list()) ::
          {:ok, list_services_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_services_errors()}
  def list_services(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServices", input, options)
  end

  @doc """
  List tags for a resource.

  For more information, see [Proton resources and
  tagging](https://docs.aws.amazon.com/proton/latest/userguide/resources.html) in
  the *Proton User Guide*.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_input(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Notify Proton of status changes to a provisioned resource when you use
  self-managed provisioning.

  For more information, see [Self-managed provisioning](https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self)
  in the *Proton User Guide*.
  """
  @spec notify_resource_deployment_status_change(
          map(),
          notify_resource_deployment_status_change_input(),
          list()
        ) ::
          {:ok, notify_resource_deployment_status_change_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, notify_resource_deployment_status_change_errors()}
  def notify_resource_deployment_status_change(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "NotifyResourceDeploymentStatusChange", input, options)
  end

  @doc """
  In a management account, reject an environment account connection from another
  environment account.

  After you reject an environment account connection request, you *can't* accept
  or use the rejected environment account
  connection.

  You *can’t* reject an environment account connection that's connected to an
  environment.

  For more information, see [Environment account connections](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
  in the *Proton User guide*.
  """
  @spec reject_environment_account_connection(
          map(),
          reject_environment_account_connection_input(),
          list()
        ) ::
          {:ok, reject_environment_account_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_environment_account_connection_errors()}
  def reject_environment_account_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RejectEnvironmentAccountConnection", input, options)
  end

  @doc """
  Tag a resource.

  A tag is a key-value pair of metadata that you associate with an Proton
  resource.

  For more information, see [Proton resources and tagging](https://docs.aws.amazon.com/proton/latest/userguide/resources.html) in
  the *Proton User Guide*.
  """
  @spec tag_resource(map(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Remove a customer tag from a resource.

  A tag is a key-value pair of metadata associated with an Proton resource.

  For more information, see [Proton resources and tagging](https://docs.aws.amazon.com/proton/latest/userguide/resources.html) in
  the *Proton User Guide*.
  """
  @spec untag_resource(map(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Update Proton settings that are used for multiple services in the Amazon Web
  Services account.
  """
  @spec update_account_settings(map(), update_account_settings_input(), list()) ::
          {:ok, update_account_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_account_settings_errors()}
  def update_account_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAccountSettings", input, options)
  end

  @doc """
  Update a component.

  There are a few modes for updating a component. The `deploymentType` field
  defines the mode.

  You can't update a component while its deployment status, or the deployment
  status of a service instance attached to it, is
  `IN_PROGRESS`.

  For more information about components, see
  [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the
  *Proton User Guide*.
  """
  @spec update_component(map(), update_component_input(), list()) ::
          {:ok, update_component_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_component_errors()}
  def update_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateComponent", input, options)
  end

  @doc """
  Update an environment.

  If the environment is associated with an environment account connection, *don't*
  update or include the
  `protonServiceRoleArn` and `provisioningRepository` parameter to update or
  connect to an environment account connection.

  You can only update to a new environment account connection if that connection
  was created in the same environment account that the current
  environment account connection was created in. The account connection must also
  be associated with the current environment.

  If the environment *isn't* associated with an environment account connection,
  *don't* update or include the
  `environmentAccountConnectionId` parameter. You *can't* update or connect the
  environment to an environment account
  connection if it *isn't* already associated with an environment connection.

  You can update either the `environmentAccountConnectionId` or
  `protonServiceRoleArn` parameter and value. You can’t update
  both.

  If the environment was configured for Amazon Web Services-managed provisioning,
  omit the `provisioningRepository` parameter.

  If the environment was configured for self-managed provisioning, specify the
  `provisioningRepository` parameter and omit the
  `protonServiceRoleArn` and `environmentAccountConnectionId` parameters.

  For more information, see
  [Environments](https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html) and [Provisioning
  methods](https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html)
  in the *Proton User
  Guide*.

  There are four modes for updating an environment. The `deploymentType` field
  defines the mode.

  ## Definitions

  ###

  `NONE`

  In this mode, a deployment *doesn't* occur. Only the requested metadata
  parameters are updated.

  ###

  `CURRENT_VERSION`

  In this mode, the environment is deployed and updated with the new spec that you
  provide. Only requested parameters are updated.
  *Don’t* include minor or major version parameters when you use this
  `deployment-type`.

  ###

  `MINOR_VERSION`

  In this mode, the environment is deployed and updated with the published,
  recommended (latest) minor version of the current major version in
  use, by default. You can also specify a different minor version of the current
  major version in use.

  ###

  `MAJOR_VERSION`

  In this mode, the environment is deployed and updated with the published,
  recommended (latest) major and minor version of the current template,
  by default. You can also specify a different major version that's higher than
  the major version in use and a minor version.
  """
  @spec update_environment(map(), update_environment_input(), list()) ::
          {:ok, update_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_environment_errors()}
  def update_environment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEnvironment", input, options)
  end

  @doc """
  In an environment account, update an environment account connection to use a new
  IAM role.

  For more information, see [Environment account connections](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
  in the *Proton User guide*.
  """
  @spec update_environment_account_connection(
          map(),
          update_environment_account_connection_input(),
          list()
        ) ::
          {:ok, update_environment_account_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_environment_account_connection_errors()}
  def update_environment_account_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEnvironmentAccountConnection", input, options)
  end

  @doc """
  Update an environment template.
  """
  @spec update_environment_template(map(), update_environment_template_input(), list()) ::
          {:ok, update_environment_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_environment_template_errors()}
  def update_environment_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEnvironmentTemplate", input, options)
  end

  @doc """
  Update a major or minor version of an environment template.
  """
  @spec update_environment_template_version(
          map(),
          update_environment_template_version_input(),
          list()
        ) ::
          {:ok, update_environment_template_version_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_environment_template_version_errors()}
  def update_environment_template_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEnvironmentTemplateVersion", input, options)
  end

  @doc """
  Edit a service description or use a spec to add and delete service instances.

  Existing service instances and the service pipeline *can't* be edited
  using this API. They can only be deleted.

  Use the `description` parameter to modify the description.

  Edit the `spec` parameter to add or delete instances.

  You can't delete a service instance (remove it from the spec) if it has an
  attached
  component.

  For more information about components, see
  [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the
  *Proton User Guide*.
  """
  @spec update_service(map(), update_service_input(), list()) ::
          {:ok, update_service_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_errors()}
  def update_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateService", input, options)
  end

  @doc """
  Update a service instance.

  There are a few modes for updating a service instance. The `deploymentType`
  field defines the mode.

  You can't update a service instance while its deployment status, or the
  deployment
  status of a component attached to it, is `IN_PROGRESS`.

  For more information about components, see
  [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the
  *Proton User Guide*.
  """
  @spec update_service_instance(map(), update_service_instance_input(), list()) ::
          {:ok, update_service_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_instance_errors()}
  def update_service_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServiceInstance", input, options)
  end

  @doc """
  Update the service pipeline.

  There are four modes for updating a service pipeline. The `deploymentType`
  field defines the mode.

  ## Definitions

  ###

  `NONE`

  In this mode, a deployment *doesn't* occur. Only the requested
  metadata parameters are updated.

  ###

  `CURRENT_VERSION`

  In this mode, the service pipeline is deployed and updated with the new spec
  that
  you provide. Only requested parameters are updated. *Don’t* include
  major or minor version parameters when you use this `deployment-type`.

  ###

  `MINOR_VERSION`

  In this mode, the service pipeline is deployed and updated with the published,
  recommended (latest) minor version of the current major version in use, by
  default. You
  can specify a different minor version of the current major version in use.

  ###

  `MAJOR_VERSION`

  In this mode, the service pipeline is deployed and updated with the published,
  recommended (latest) major and minor version of the current template by default.
  You can
  specify a different major version that's higher than the major version in use
  and a
  minor version.
  """
  @spec update_service_pipeline(map(), update_service_pipeline_input(), list()) ::
          {:ok, update_service_pipeline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_pipeline_errors()}
  def update_service_pipeline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServicePipeline", input, options)
  end

  @doc """
  Update the service sync blocker by resolving it.
  """
  @spec update_service_sync_blocker(map(), update_service_sync_blocker_input(), list()) ::
          {:ok, update_service_sync_blocker_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_sync_blocker_errors()}
  def update_service_sync_blocker(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServiceSyncBlocker", input, options)
  end

  @doc """
  Update the Proton Ops config file.
  """
  @spec update_service_sync_config(map(), update_service_sync_config_input(), list()) ::
          {:ok, update_service_sync_config_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_sync_config_errors()}
  def update_service_sync_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServiceSyncConfig", input, options)
  end

  @doc """
  Update a service template.
  """
  @spec update_service_template(map(), update_service_template_input(), list()) ::
          {:ok, update_service_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_template_errors()}
  def update_service_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServiceTemplate", input, options)
  end

  @doc """
  Update a major or minor version of a service template.
  """
  @spec update_service_template_version(map(), update_service_template_version_input(), list()) ::
          {:ok, update_service_template_version_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_template_version_errors()}
  def update_service_template_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServiceTemplateVersion", input, options)
  end

  @doc """
  Update template sync configuration parameters, except for the `templateName` and
  `templateType`.

  Repository details
  (branch, name, and provider) should be of a linked repository. A linked
  repository is a repository that has been registered with Proton. For
  more information, see `CreateRepository`.
  """
  @spec update_template_sync_config(map(), update_template_sync_config_input(), list()) ::
          {:ok, update_template_sync_config_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_template_sync_config_errors()}
  def update_template_sync_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTemplateSyncConfig", input, options)
  end
end
