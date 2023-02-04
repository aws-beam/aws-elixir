# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Proton do
  @moduledoc """
  This is the Proton Service API Reference.

  It provides descriptions, syntax and usage examples for each of the
  [actions](https://docs.aws.amazon.com/proton/latest/APIReference/API_Operations.html) and [data
  types](https://docs.aws.amazon.com/proton/latest/APIReference/API_Types.html)
  for the Proton service.

  The documentation for each action shows the Query API request parameters and the
  XML response.

  Alternatively, you can use the Amazon Web Services CLI to access an API. For
  more information, see the [Amazon Web Services Command Line Interface User Guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html).

  The Proton service is a two-pronged automation framework. Administrators create
  service templates to provide standardized infrastructure and deployment tooling
  for serverless and container based applications. Developers, in turn, select
  from the available service templates to automate their application or service
  deployments.

  Because administrators define the infrastructure and tooling that Proton deploys
  and manages, they need permissions to use all of the listed API operations.

  When developers select a specific infrastructure and tooling set, Proton deploys
  their applications. To monitor their applications that are running on Proton,
  developers need permissions to the service *create*, *list*, *update* and
  *delete* API operations and the service instance *list* and *update* API
  operations.

  To learn more about Proton, see the [Proton User Guide](https://docs.aws.amazon.com/proton/latest/userguide/Welcome.html).

  ## Ensuring Idempotency

  When you make a mutating API request, the request typically returns a result
  before the asynchronous workflows of the operation are complete. Operations
  might also time out or encounter other server issues before they're complete,
  even if the request already returned a result. This might make it difficult to
  determine whether the request succeeded. Moreover, you might need to retry the
  request multiple times to ensure that the operation completes successfully.
  However, if the original request and the subsequent retries are successful, the
  operation occurs multiple times. This means that you might create more resources
  than you intended.

  *Idempotency* ensures that an API request action completes no more than one
  time. With an idempotent request, if the original request action completes
  successfully, any subsequent retries complete successfully without performing
  any further actions. However, the result might contain updated information, such
  as the current creation status.

  The following lists of APIs are grouped according to methods that ensure
  idempotency.

  ## Idempotent create APIs with a client token

  The API actions in this list support idempotency with the use of a *client
  token*. The corresponding Amazon Web Services CLI commands also support
  idempotency using a client token. A client token is a unique, case-sensitive
  string of up to 64 ASCII characters. To make an idempotent API request using one
  of these actions, specify a client token in the request. We recommend that you
  *don't* reuse the same client token for other API requests. If you don’t provide
  a client token for these APIs, a default client token is automatically provided
  by SDKs.

  Given a request action that has succeeded:

  If you retry the request using the same client token and the same parameters,
  the retry succeeds without performing any further actions other than returning
  the original resource detail data in the response.

  If you retry the request using the same client token, but one or more of the
  parameters are different, the retry throws a `ValidationException` with an
  `IdempotentParameterMismatch` error.

  Client tokens expire eight hours after a request is made. If you retry the
  request with the expired token, a new resource is created.

  If the original resource is deleted and you retry the request, a new resource is
  created.

  Idempotent create APIs with a client token:

    * CreateEnvironmentTemplateVersion

    * CreateServiceTemplateVersion

    * CreateEnvironmentAccountConnection

  ## Idempotent create APIs

  Given a request action that has succeeded:

  If you retry the request with an API from this group, and the original resource
  *hasn't* been modified, the retry succeeds without performing any further
  actions other than returning the original resource detail data in the response.

  If the original resource has been modified, the retry throws a
  `ConflictException`.

  If you retry with different input parameters, the retry throws a
  `ValidationException` with an `IdempotentParameterMismatch` error.

  Idempotent create APIs:

    * CreateEnvironmentTemplate

    * CreateServiceTemplate

    * CreateEnvironment

    * CreateService

  ## Idempotent delete APIs

  Given a request action that has succeeded:

  When you retry the request with an API from this group and the resource was
  deleted, its metadata is returned in the response.

  If you retry and the resource doesn't exist, the response is empty.

  In both cases, the retry succeeds.

  Idempotent delete APIs:

    * DeleteEnvironmentTemplate

    * DeleteEnvironmentTemplateVersion

    * DeleteServiceTemplate

    * DeleteServiceTemplateVersion

    * DeleteEnvironmentAccountConnection

  ## Asynchronous idempotent delete APIs

  Given a request action that has succeeded:

  If you retry the request with an API from this group, if the original request
  delete operation status is `DELETE_IN_PROGRESS`, the retry returns the resource
  detail data in the response without performing any further actions.

  If the original request delete operation is complete, a retry returns an empty
  response.

  Asynchronous idempotent delete APIs:

    * DeleteEnvironment

    * DeleteService
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
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

  When the environment account connection request is accepted, Proton can use the
  associated IAM role to provision environment infrastructure resources in the
  associated environment account.

  For more information, see [Environment account connections](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
  in the *Proton User guide*.
  """
  def accept_environment_account_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptEnvironmentAccountConnection", input, options)
  end

  @doc """
  Attempts to cancel a component deployment (for a component that is in the
  `IN_PROGRESS` deployment status).

  For more information about components, see [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the *Proton User Guide*.
  """
  def cancel_component_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelComponentDeployment", input, options)
  end

  @doc """
  Attempts to cancel an environment deployment on an `UpdateEnvironment` action,
  if the deployment is `IN_PROGRESS`.

  For more information, see [Update an environment](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-update.html)
  in the *Proton User guide*.

  The following list includes potential cancellation scenarios.

    * If the cancellation attempt succeeds, the resulting deployment
  state is `CANCELLED`.

    * If the cancellation attempt fails, the resulting deployment state
  is `FAILED`.

    * If the current `UpdateEnvironment` action succeeds before the
  cancellation attempt starts, the resulting deployment state is `SUCCEEDED` and
  the cancellation attempt has no effect.
  """
  def cancel_environment_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelEnvironmentDeployment", input, options)
  end

  @doc """
  Attempts to cancel a service instance deployment on an `UpdateServiceInstance`
  action, if the deployment is `IN_PROGRESS`.

  For more information, see [Update a service instance](https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-instance-update.html)
  in the *Proton User guide*.

  The following list includes potential cancellation scenarios.

    * If the cancellation attempt succeeds, the resulting deployment
  state is `CANCELLED`.

    * If the cancellation attempt fails, the resulting deployment state
  is `FAILED`.

    * If the current `UpdateServiceInstance` action succeeds before the
  cancellation attempt starts, the resulting deployment state is `SUCCEEDED` and
  the cancellation attempt has no effect.
  """
  def cancel_service_instance_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelServiceInstanceDeployment", input, options)
  end

  @doc """
  Attempts to cancel a service pipeline deployment on an `UpdateServicePipeline`
  action, if the deployment is `IN_PROGRESS`.

  For more information, see [Update a service pipeline](https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-pipeline-update.html)
  in the *Proton User guide*.

  The following list includes potential cancellation scenarios.

    * If the cancellation attempt succeeds, the resulting deployment
  state is `CANCELLED`.

    * If the cancellation attempt fails, the resulting deployment state
  is `FAILED`.

    * If the current `UpdateServicePipeline` action succeeds before the
  cancellation attempt starts, the resulting deployment state is `SUCCEEDED` and
  the cancellation attempt has no effect.
  """
  def cancel_service_pipeline_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelServicePipelineDeployment", input, options)
  end

  @doc """
  Create an Proton component.

  A component is an infrastructure extension for a service instance.

  For more information about components, see [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the *Proton User Guide*.
  """
  def create_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateComponent", input, options)
  end

  @doc """
  Deploy a new environment.

  An Proton environment is created from an environment template that defines
  infrastructure and resources that can be shared across services.

  ## You can provision environments using the following methods:

    * Amazon Web Services-managed provisioning: Proton makes direct
  calls to provision your resources.

    * Self-managed provisioning: Proton makes pull requests on your
  repository to provide compiled infrastructure as code (IaC) files that your IaC
  engine uses to provision resources.

  For more information, see
  [Environments](https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html) and [Provisioning
  methods](https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html)
  in the *Proton User Guide*.
  """
  def create_environment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEnvironment", input, options)
  end

  @doc """
  Create an environment account connection in an environment account so that
  environment infrastructure resources can be provisioned in the environment
  account from a management account.

  An environment account connection is a secure bi-directional connection between
  a *management account* and an *environment account* that maintains authorization
  and permissions. For more information, see [Environment account connections](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
  in the *Proton User guide*.
  """
  def create_environment_account_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEnvironmentAccountConnection", input, options)
  end

  @doc """
  Create an environment template for Proton.

  For more information, see [Environment Templates](https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html)
  in the *Proton User Guide*.

  You can create an environment template in one of the two following ways:

    * Register and publish a *standard* environment template that
  instructs Proton to deploy and manage environment infrastructure.

    * Register and publish a *customer managed* environment template
  that connects Proton to your existing provisioned infrastructure that you
  manage. Proton *doesn't* manage your existing provisioned infrastructure. To
  create an environment template for customer provisioned and managed
  infrastructure, include the `provisioning` parameter and set the value to
  `CUSTOMER_MANAGED`. For more information, see [Register and publish an environment
  template](https://docs.aws.amazon.com/proton/latest/userguide/template-create.html)
  in the *Proton User Guide*.
  """
  def create_environment_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEnvironmentTemplate", input, options)
  end

  @doc """
  Create a new major or minor version of an environment template.

  A major version of an environment template is a version that *isn't* backwards
  compatible. A minor version of an environment template is a version that's
  backwards compatible within its major version.
  """
  def create_environment_template_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEnvironmentTemplateVersion", input, options)
  end

  @doc """
  Create and register a link to a repository.

  Proton uses the link to repeatedly access the repository, to either push to it
  (self-managed provisioning) or pull from it (template sync). You can share a
  linked repository across multiple resources (like environments using
  self-managed provisioning, or synced templates). When you create a repository
  link, Proton creates a [service-linked role](https://docs.aws.amazon.com/proton/latest/userguide/using-service-linked-roles.html)
  for you.

  For more information, see [Self-managed provisioning](https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self),
  [Template bundles](https://docs.aws.amazon.com/proton/latest/userguide/ag-template-authoring.html#ag-template-bundles),
  and [Template sync configurations](https://docs.aws.amazon.com/proton/latest/userguide/ag-template-sync-configs.html)
  in the *Proton User Guide*.
  """
  def create_repository(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRepository", input, options)
  end

  @doc """
  Create an Proton service.

  An Proton service is an instantiation of a service template and often includes
  several service instances and pipeline. For more information, see
  [Services](https://docs.aws.amazon.com/proton/latest/userguide/ag-services.html)
  in the *Proton User Guide*.
  """
  def create_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateService", input, options)
  end

  @doc """
  Create a service template.

  The administrator creates a service template to define standardized
  infrastructure and an optional CI/CD service pipeline. Developers, in turn,
  select the service template from Proton. If the selected service template
  includes a service pipeline definition, they provide a link to their source code
  repository. Proton then deploys and manages the infrastructure defined by the
  selected service template. For more information, see [Proton templates](https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html)
  in the *Proton User Guide*.
  """
  def create_service_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateServiceTemplate", input, options)
  end

  @doc """
  Create a new major or minor version of a service template.

  A major version of a service template is a version that *isn't* backward
  compatible. A minor version of a service template is a version that's backward
  compatible within its major version.
  """
  def create_service_template_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateServiceTemplateVersion", input, options)
  end

  @doc """
  Set up a template to create new template versions automatically by tracking a
  linked repository.

  A linked repository is a repository that has been registered with Proton. For
  more information, see `CreateRepository`.

  When a commit is pushed to your linked repository, Proton checks for changes to
  your repository template bundles. If it detects a template bundle change, a new
  major or minor version of its template is created, if the version doesn’t
  already exist. For more information, see [Template sync configurations](https://docs.aws.amazon.com/proton/latest/userguide/ag-template-sync-configs.html)
  in the *Proton User Guide*.
  """
  def create_template_sync_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTemplateSyncConfig", input, options)
  end

  @doc """
  Delete an Proton component resource.

  For more information about components, see [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the *Proton User Guide*.
  """
  def delete_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteComponent", input, options)
  end

  @doc """
  Delete an environment.
  """
  def delete_environment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEnvironment", input, options)
  end

  @doc """
  In an environment account, delete an environment account connection.

  After you delete an environment account connection that’s in use by an Proton
  environment, Proton *can’t* manage the environment infrastructure resources
  until a new environment account connection is accepted for the environment
  account and associated environment. You're responsible for cleaning up
  provisioned resources that remain without an environment connection.

  For more information, see [Environment account connections](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
  in the *Proton User guide*.
  """
  def delete_environment_account_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEnvironmentAccountConnection", input, options)
  end

  @doc """
  If no other major or minor versions of an environment template exist, delete the
  environment template.
  """
  def delete_environment_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEnvironmentTemplate", input, options)
  end

  @doc """
  If no other minor versions of an environment template exist, delete a major
  version of the environment template if it's not the `Recommended` version.

  Delete the `Recommended` version of the environment template if no other major
  versions or minor versions of the environment template exist. A major version of
  an environment template is a version that's not backward compatible.

  Delete a minor version of an environment template if it *isn't* the
  `Recommended` version. Delete a `Recommended` minor version of the environment
  template if no other minor versions of the environment template exist. A minor
  version of an environment template is a version that's backward compatible.
  """
  def delete_environment_template_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEnvironmentTemplateVersion", input, options)
  end

  @doc """
  De-register and unlink your repository.
  """
  def delete_repository(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRepository", input, options)
  end

  @doc """
  Delete a service, with its instances and pipeline.

  You can't delete a service if it has any service instances that have components
  attached to them.

  For more information about components, see [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the *Proton User Guide*.
  """
  def delete_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteService", input, options)
  end

  @doc """
  If no other major or minor versions of the service template exist, delete the
  service template.
  """
  def delete_service_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteServiceTemplate", input, options)
  end

  @doc """
  If no other minor versions of a service template exist, delete a major version
  of the service template if it's not the `Recommended` version.

  Delete the `Recommended` version of the service template if no other major
  versions or minor versions of the service template exist. A major version of a
  service template is a version that *isn't* backwards compatible.

  Delete a minor version of a service template if it's not the `Recommended`
  version. Delete a `Recommended` minor version of the service template if no
  other minor versions of the service template exist. A minor version of a service
  template is a version that's backwards compatible.
  """
  def delete_service_template_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteServiceTemplateVersion", input, options)
  end

  @doc """
  Delete a template sync configuration.
  """
  def delete_template_sync_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTemplateSyncConfig", input, options)
  end

  @doc """
  Get detail data for Proton account-wide settings.
  """
  def get_account_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAccountSettings", input, options)
  end

  @doc """
  Get detailed data for a component.

  For more information about components, see [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the *Proton User Guide*.
  """
  def get_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetComponent", input, options)
  end

  @doc """
  Get detailed data for an environment.
  """
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
  def get_environment_account_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEnvironmentAccountConnection", input, options)
  end

  @doc """
  Get detailed data for an environment template.
  """
  def get_environment_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEnvironmentTemplate", input, options)
  end

  @doc """
  Get detailed data for a major or minor version of an environment template.
  """
  def get_environment_template_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEnvironmentTemplateVersion", input, options)
  end

  @doc """
  Get detail data for a linked repository.
  """
  def get_repository(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRepository", input, options)
  end

  @doc """
  Get the sync status of a repository used for Proton template sync.

  For more information about template sync, see .

  A repository sync status isn't tied to the Proton Repository resource (or any
  other Proton resource). Therefore, tags on an Proton Repository resource have no
  effect on this action. Specifically, you can't use these tags to control access
  to this action using Attribute-based access control (ABAC).

  For more information about ABAC, see
  [ABAC](https://docs.aws.amazon.com/proton/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-tags)
  in the *Proton User Guide*.
  """
  def get_repository_sync_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRepositorySyncStatus", input, options)
  end

  @doc """
  Get counts of Proton resources.

  For infrastructure-provisioning resources (environments, services, service
  instances, pipelines), the action returns staleness counts. A resource is stale
  when it's behind the recommended version of the Proton template that it uses and
  it needs an update to become current.

  The action returns staleness counts (counts of resources that are up-to-date,
  behind a template major version, or behind a template minor version), the total
  number of resources, and the number of resources that are in a failed state,
  grouped by resource type. Components, environments, and service templates are
  exceptions—see the `components`, `environments`, and `serviceTemplates` field
  descriptions.

  For context, the action also returns the total number of each type of Proton
  template in the Amazon Web Services account.

  For more information, see [Proton dashboard](https://docs.aws.amazon.com/proton/latest/userguide/monitoring-dashboard.html)
  in the *Proton User Guide*.
  """
  def get_resources_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourcesSummary", input, options)
  end

  @doc """
  Get detailed data for a service.
  """
  def get_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetService", input, options)
  end

  @doc """
  Get detailed data for a service instance.

  A service instance is an instantiation of service template and it runs in a
  specific environment.
  """
  def get_service_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServiceInstance", input, options)
  end

  @doc """
  Get detailed data for a service template.
  """
  def get_service_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServiceTemplate", input, options)
  end

  @doc """
  Get detailed data for a major or minor version of a service template.
  """
  def get_service_template_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServiceTemplateVersion", input, options)
  end

  @doc """
  Get detail data for a template sync configuration.
  """
  def get_template_sync_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTemplateSyncConfig", input, options)
  end

  @doc """
  Get the status of a template sync.
  """
  def get_template_sync_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTemplateSyncStatus", input, options)
  end

  @doc """
  Get a list of component Infrastructure as Code (IaC) outputs.

  For more information about components, see [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the *Proton User Guide*.
  """
  def list_component_outputs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListComponentOutputs", input, options)
  end

  @doc """
  List provisioned resources for a component with details.

  For more information about components, see [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the *Proton User Guide*.
  """
  def list_component_provisioned_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListComponentProvisionedResources", input, options)
  end

  @doc """
  List components with summary data.

  You can filter the result list by environment, service, or a single service
  instance.

  For more information about components, see [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the *Proton User Guide*.
  """
  def list_components(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListComponents", input, options)
  end

  @doc """
  View a list of environment account connections.

  For more information, see [Environment account connections](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
  in the *Proton User guide*.
  """
  def list_environment_account_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnvironmentAccountConnections", input, options)
  end

  @doc """
  List the infrastructure as code outputs for your environment.
  """
  def list_environment_outputs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnvironmentOutputs", input, options)
  end

  @doc """
  List the provisioned resources for your environment.
  """
  def list_environment_provisioned_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnvironmentProvisionedResources", input, options)
  end

  @doc """
  List major or minor versions of an environment template with detail data.
  """
  def list_environment_template_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnvironmentTemplateVersions", input, options)
  end

  @doc """
  List environment templates.
  """
  def list_environment_templates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnvironmentTemplates", input, options)
  end

  @doc """
  List environments with detail data summaries.
  """
  def list_environments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnvironments", input, options)
  end

  @doc """
  List linked repositories with detail data.
  """
  def list_repositories(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRepositories", input, options)
  end

  @doc """
  List repository sync definitions with detail data.
  """
  def list_repository_sync_definitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRepositorySyncDefinitions", input, options)
  end

  @doc """
  Get a list service of instance Infrastructure as Code (IaC) outputs.
  """
  def list_service_instance_outputs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServiceInstanceOutputs", input, options)
  end

  @doc """
  List provisioned resources for a service instance with details.
  """
  def list_service_instance_provisioned_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServiceInstanceProvisionedResources", input, options)
  end

  @doc """
  List service instances with summary data.

  This action lists service instances of all services in the Amazon Web Services
  account.
  """
  def list_service_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServiceInstances", input, options)
  end

  @doc """
  Get a list of service pipeline Infrastructure as Code (IaC) outputs.
  """
  def list_service_pipeline_outputs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServicePipelineOutputs", input, options)
  end

  @doc """
  List provisioned resources for a service and pipeline with details.
  """
  def list_service_pipeline_provisioned_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServicePipelineProvisionedResources", input, options)
  end

  @doc """
  List major or minor versions of a service template with detail data.
  """
  def list_service_template_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServiceTemplateVersions", input, options)
  end

  @doc """
  List service templates with detail data.
  """
  def list_service_templates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServiceTemplates", input, options)
  end

  @doc """
  List services with summaries of detail data.
  """
  def list_services(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServices", input, options)
  end

  @doc """
  List tags for a resource.

  For more information, see [Proton resources and tagging](https://docs.aws.amazon.com/proton/latest/userguide/resources.html) in
  the *Proton User Guide*.
  """
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
  def notify_resource_deployment_status_change(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "NotifyResourceDeploymentStatusChange", input, options)
  end

  @doc """
  In a management account, reject an environment account connection from another
  environment account.

  After you reject an environment account connection request, you *can't* accept
  or use the rejected environment account connection.

  You *can’t* reject an environment account connection that's connected to an
  environment.

  For more information, see [Environment account connections](https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html)
  in the *Proton User guide*.
  """
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
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Update Proton settings that are used for multiple services in the Amazon Web
  Services account.
  """
  def update_account_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAccountSettings", input, options)
  end

  @doc """
  Update a component.

  There are a few modes for updating a component. The `deploymentType` field
  defines the mode.

  You can't update a component while its deployment status, or the deployment
  status of a service instance attached to it, is `IN_PROGRESS`.

  For more information about components, see [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the *Proton User Guide*.
  """
  def update_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateComponent", input, options)
  end

  @doc """
  Update an environment.

  If the environment is associated with an environment account connection, *don't*
  update or include the `protonServiceRoleArn` and `provisioningRepository`
  parameter to update or connect to an environment account connection.

  You can only update to a new environment account connection if that connection
  was created in the same environment account that the current environment account
  connection was created in. The account connection must also be associated with
  the current environment.

  If the environment *isn't* associated with an environment account connection,
  *don't* update or include the `environmentAccountConnectionId` parameter. You
  *can't* update or connect the environment to an environment account connection
  if it *isn't* already associated with an environment connection.

  You can update either the `environmentAccountConnectionId` or
  `protonServiceRoleArn` parameter and value. You can’t update both.

  If the environment was configured for Amazon Web Services-managed provisioning,
  omit the `provisioningRepository` parameter.

  If the environment was configured for self-managed provisioning, specify the
  `provisioningRepository` parameter and omit the `protonServiceRoleArn` and
  `environmentAccountConnectionId` parameters.

  For more information, see
  [Environments](https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html) and [Provisioning
  methods](https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html)
  in the *Proton User Guide*.

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
  provide. Only requested parameters are updated. *Don’t* include minor or major
  version parameters when you use this `deployment-type`.

  ###

  `MINOR_VERSION`

  In this mode, the environment is deployed and updated with the published,
  recommended (latest) minor version of the current major version in use, by
  default. You can also specify a different minor version of the current major
  version in use.

  ###

  `MAJOR_VERSION`

  In this mode, the environment is deployed and updated with the published,
  recommended (latest) major and minor version of the current template, by
  default. You can also specify a different major version that's higher than the
  major version in use and a minor version.
  """
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
  def update_environment_account_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEnvironmentAccountConnection", input, options)
  end

  @doc """
  Update an environment template.
  """
  def update_environment_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEnvironmentTemplate", input, options)
  end

  @doc """
  Update a major or minor version of an environment template.
  """
  def update_environment_template_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEnvironmentTemplateVersion", input, options)
  end

  @doc """
  Edit a service description or use a spec to add and delete service instances.

  Existing service instances and the service pipeline *can't* be edited using this
  API. They can only be deleted.

  Use the `description` parameter to modify the description.

  Edit the `spec` parameter to add or delete instances.

  You can't delete a service instance (remove it from the spec) if it has an
  attached component.

  For more information about components, see [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the *Proton User Guide*.
  """
  def update_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateService", input, options)
  end

  @doc """
  Update a service instance.

  There are a few modes for updating a service instance. The `deploymentType`
  field defines the mode.

  You can't update a service instance while its deployment status, or the
  deployment status of a component attached to it, is `IN_PROGRESS`.

  For more information about components, see [Proton components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
  in the *Proton User Guide*.
  """
  def update_service_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServiceInstance", input, options)
  end

  @doc """
  Update the service pipeline.

  There are four modes for updating a service pipeline. The `deploymentType` field
  defines the mode.

  ## Definitions

  ###

  `NONE`

  In this mode, a deployment *doesn't* occur. Only the requested metadata
  parameters are updated.

  ###

  `CURRENT_VERSION`

  In this mode, the service pipeline is deployed and updated with the new spec
  that you provide. Only requested parameters are updated. *Don’t* include major
  or minor version parameters when you use this `deployment-type`.

  ###

  `MINOR_VERSION`

  In this mode, the service pipeline is deployed and updated with the published,
  recommended (latest) minor version of the current major version in use, by
  default. You can specify a different minor version of the current major version
  in use.

  ###

  `MAJOR_VERSION`

  In this mode, the service pipeline is deployed and updated with the published,
  recommended (latest) major and minor version of the current template by default.
  You can specify a different major version that's higher than the major version
  in use and a minor version.
  """
  def update_service_pipeline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServicePipeline", input, options)
  end

  @doc """
  Update a service template.
  """
  def update_service_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServiceTemplate", input, options)
  end

  @doc """
  Update a major or minor version of a service template.
  """
  def update_service_template_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServiceTemplateVersion", input, options)
  end

  @doc """
  Update template sync configuration parameters, except for the `templateName` and
  `templateType`.

  Repository details (branch, name, and provider) should be of a linked
  repository. A linked repository is a repository that has been registered with
  Proton. For more information, see `CreateRepository`.
  """
  def update_template_sync_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTemplateSyncConfig", input, options)
  end
end
