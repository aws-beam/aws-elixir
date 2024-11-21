# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeCatalyst do
  @moduledoc """
  Welcome to the Amazon CodeCatalyst API reference.

  This reference provides descriptions of operations and data types for Amazon
  CodeCatalyst. You can use the Amazon CodeCatalyst
  API to work with the following objects.

  Spaces, by calling the following:

    *

  `DeleteSpace`, which deletes a space.

    *

  `GetSpace`, which returns information about a space.

    *

  `GetSubscription`, which returns information about the Amazon Web Services
  account used for billing purposes
  and the billing plan for the space.

    *

  `ListSpaces`, which retrieves a list of spaces.

    *

  `UpdateSpace`, which changes one or more values for a space.

  Projects, by calling the following:

    *

  `CreateProject` which creates a project in a specified space.

    *

  `GetProject`, which returns information about a project.

    *

  `ListProjects`, which retrieves a list of projects in a space.

  Users, by calling the following:

    *

  `GetUserDetails`, which returns information about a user in Amazon CodeCatalyst.

  Source repositories, by calling the following:

    *

  `CreateSourceRepository`, which creates an empty Git-based source repository in
  a specified project.

    *

  `CreateSourceRepositoryBranch`, which creates a branch in a specified repository
  where you can work on code.

    *

  `DeleteSourceRepository`, which deletes a source repository.

    *

  `GetSourceRepository`, which returns information about a source repository.

    *

  `GetSourceRepositoryCloneUrls`, which returns information about the URLs that
  can be used with a Git client to clone a source
  repository.

    *

  `ListSourceRepositories`, which retrieves a list of source repositories in a
  project.

    *

  `ListSourceRepositoryBranches`, which retrieves a list of branches in a source
  repository.

  Dev Environments and the Amazon Web Services Toolkits, by calling the following:

    *

  `CreateDevEnvironment`, which creates a Dev Environment,
  where you can quickly work on the code stored in the source repositories of your
  project.

    *

  `DeleteDevEnvironment`, which deletes a Dev Environment.

    *

  `GetDevEnvironment`, which returns information about a Dev Environment.

    *

  `ListDevEnvironments`, which retrieves a list of Dev Environments in a project.

    *

  `ListDevEnvironmentSessions`, which retrieves a list of active Dev Environment
  sessions in a project.

    *

  `StartDevEnvironment`, which starts a specified Dev Environment and puts it into
  an active state.

    *

  `StartDevEnvironmentSession`, which starts a session to a specified Dev
  Environment.

    *

  `StopDevEnvironment`, which stops a specified Dev Environment and puts it into
  an stopped state.

    *

  `StopDevEnvironmentSession`, which stops a session for a specified Dev
  Environment.

    *

  `UpdateDevEnvironment`, which changes one or more values for a Dev Environment.

  Workflows, by calling the following:

    *

  `GetWorkflow`, which returns information about a workflow.

    *

  `GetWorkflowRun`, which returns information about a specified run of a workflow.

    *

  `ListWorkflowRuns`, which retrieves a list of runs of a specified workflow.

    *

  `ListWorkflows`, which retrieves a list of workflows in a specified project.

    *

  `StartWorkflowRun`, which starts a run of a specified workflow.

  Security, activity, and resource management in Amazon CodeCatalyst, by calling
  the following:

    *

  `CreateAccessToken`, which creates a personal access token (PAT) for the current
  user.

    *

  `DeleteAccessToken`, which deletes a specified personal access token (PAT).

    *

  `ListAccessTokens`, which lists all personal access tokens (PATs) associated
  with a user.

    *

  `ListEventLogs`, which retrieves a list of events that occurred during a
  specified time period in a space.

    *

  `VerifySession`, which verifies whether the calling user has a valid Amazon
  CodeCatalyst login and session.

  If you are using the Amazon CodeCatalyst APIs with an SDK or the CLI, you must
  configure your computer to work with Amazon CodeCatalyst and single sign-on
  (SSO).
  For more information, see [Setting up to use the CLI with Amazon CodeCatalyst](https://docs.aws.amazon.com/codecatalyst/latest/userguide/set-up-cli.html)
  and the SSO documentation for your SDK.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_source_repository_branches_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }

  """
  @type list_source_repository_branches_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_space_request() :: %{}

  """
  @type delete_space_request() :: %{}

  @typedoc """

  ## Example:

      project_information() :: %{
        "name" => [String.t()],
        "projectId" => [String.t()]
      }

  """
  @type project_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_access_token_response() :: %{
        "accessTokenId" => String.t(),
        "expiresTime" => non_neg_integer(),
        "name" => String.t(),
        "secret" => String.t()
      }

  """
  @type create_access_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ide_configuration() :: %{
        "name" => [String.t()],
        "runtime" => [String.t()]
      }

  """
  @type ide_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_space_response() :: %{
        "displayName" => [String.t()],
        "name" => String.t()
      }

  """
  @type delete_space_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_user_details_request() :: %{
        optional("id") => [String.t()],
        optional("userName") => [String.t()]
      }

  """
  @type get_user_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      project_summary() :: %{
        "description" => [String.t()],
        "displayName" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type project_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workflow_run_sort_criteria() :: %{}

  """
  @type workflow_run_sort_criteria() :: %{}

  @typedoc """

  ## Example:

      ide() :: %{
        "name" => [String.t()],
        "runtime" => [String.t()]
      }

  """
  @type ide() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_project_request() :: %{}

  """
  @type get_project_request() :: %{}

  @typedoc """

  ## Example:

      access_token_summary() :: %{
        "expiresTime" => non_neg_integer(),
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type access_token_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_source_repository_request() :: %{
        optional("description") => String.t()
      }

  """
  @type create_source_repository_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dev_environment_response() :: %{
        "alias" => [String.t()],
        "creatorId" => [String.t()],
        "id" => String.t(),
        "ides" => list(ide()()),
        "inactivityTimeoutMinutes" => integer(),
        "instanceType" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "persistentStorage" => persistent_storage(),
        "projectName" => String.t(),
        "repositories" => list(dev_environment_repository_summary()()),
        "spaceName" => String.t(),
        "status" => String.t(),
        "statusReason" => String.t(),
        "vpcConnectionName" => String.t()
      }

  """
  @type get_dev_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_dev_environment_request() :: %{}

  """
  @type stop_dev_environment_request() :: %{}

  @typedoc """

  ## Example:

      user_identity() :: %{
        "awsAccountId" => [String.t()],
        "principalId" => [String.t()],
        "userName" => [String.t()],
        "userType" => String.t()
      }

  """
  @type user_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dev_environment_access_details() :: %{
        "streamUrl" => String.t(),
        "tokenValue" => String.t()
      }

  """
  @type dev_environment_access_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_dev_environment_session_request() :: %{
        required("sessionConfiguration") => dev_environment_session_configuration()
      }

  """
  @type start_dev_environment_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_space_request() :: %{}

  """
  @type get_space_request() :: %{}

  @typedoc """

  ## Example:

      get_subscription_response() :: %{
        "awsAccountName" => String.t(),
        "pendingSubscriptionStartTime" => non_neg_integer(),
        "pendingSubscriptionType" => [String.t()],
        "subscriptionType" => [String.t()]
      }

  """
  @type get_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_project_response() :: %{
        "description" => [String.t()],
        "displayName" => [String.t()],
        "name" => String.t(),
        "spaceName" => String.t()
      }

  """
  @type update_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_source_repository_branch_request() :: %{
        optional("headCommitId") => [String.t()]
      }

  """
  @type create_source_repository_branch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      email_address() :: %{
        "email" => [String.t()],
        "verified" => [boolean()]
      }

  """
  @type email_address() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_log_entry() :: %{
        "errorCode" => [String.t()],
        "eventCategory" => [String.t()],
        "eventName" => [String.t()],
        "eventSource" => [String.t()],
        "eventTime" => non_neg_integer(),
        "eventType" => [String.t()],
        "id" => [String.t()],
        "operationType" => String.t(),
        "projectInformation" => project_information(),
        "requestId" => [String.t()],
        "requestPayload" => event_payload(),
        "responsePayload" => event_payload(),
        "sourceIpAddress" => [String.t()],
        "userAgent" => [String.t()],
        "userIdentity" => user_identity()
      }

  """
  @type event_log_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_source_repository_response() :: %{
        "name" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t()
      }

  """
  @type delete_source_repository_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_workflow_request() :: %{}

  """
  @type get_workflow_request() :: %{}

  @typedoc """

  ## Example:

      repository_input() :: %{
        "branchName" => String.t(),
        "repositoryName" => String.t()
      }

  """
  @type repository_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_user_details_response() :: %{
        "displayName" => [String.t()],
        "primaryEmail" => email_address(),
        "userId" => [String.t()],
        "userName" => [String.t()],
        "version" => [String.t()]
      }

  """
  @type get_user_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dev_environment_response() :: %{
        "alias" => [String.t()],
        "clientToken" => String.t(),
        "id" => String.t(),
        "ides" => list(ide_configuration()()),
        "inactivityTimeoutMinutes" => integer(),
        "instanceType" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t()
      }

  """
  @type update_dev_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dev_environment_sessions_response() :: %{
        "items" => list(dev_environment_session_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_dev_environment_sessions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_dev_environment_response() :: %{
        "id" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t(),
        "status" => String.t()
      }

  """
  @type start_dev_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_source_repository_request() :: %{}

  """
  @type get_source_repository_request() :: %{}

  @typedoc """

  ## Example:

      list_access_tokens_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }

  """
  @type list_access_tokens_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_response() :: %{
        "description" => [String.t()],
        "displayName" => [String.t()],
        "name" => String.t(),
        "spaceName" => String.t()
      }

  """
  @type create_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()]
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

      delete_dev_environment_request() :: %{}

  """
  @type delete_dev_environment_request() :: %{}

  @typedoc """

  ## Example:

      list_source_repositories_item() :: %{
        "createdTime" => non_neg_integer(),
        "description" => String.t(),
        "id" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "name" => String.t()
      }

  """
  @type list_source_repositories_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_workflow_run_request() :: %{
        optional("clientToken") => [String.t()],
        required("workflowId") => String.t()
      }

  """
  @type start_workflow_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dev_environment_summary() :: %{
        "alias" => [String.t()],
        "creatorId" => [String.t()],
        "id" => String.t(),
        "ides" => list(ide()()),
        "inactivityTimeoutMinutes" => integer(),
        "instanceType" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "persistentStorage" => persistent_storage(),
        "projectName" => String.t(),
        "repositories" => list(dev_environment_repository_summary()()),
        "spaceName" => String.t(),
        "status" => String.t(),
        "statusReason" => String.t(),
        "vpcConnectionName" => String.t()
      }

  """
  @type dev_environment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workflows_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("sortBy") => list(workflow_sort_criteria()())
      }

  """
  @type list_workflows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_projects_response() :: %{
        "items" => list(project_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_projects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_dev_environment_response() :: %{
        "id" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t(),
        "status" => String.t()
      }

  """
  @type stop_dev_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_project_response() :: %{
        "description" => [String.t()],
        "displayName" => [String.t()],
        "name" => [String.t()],
        "spaceName" => String.t()
      }

  """
  @type get_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dev_environment_request() :: %{
        optional("alias") => [String.t()],
        optional("clientToken") => String.t(),
        optional("ides") => list(ide_configuration()()),
        optional("inactivityTimeoutMinutes") => integer(),
        optional("instanceType") => String.t()
      }

  """
  @type update_dev_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_logs_request() :: %{
        optional("eventName") => [String.t()],
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        required("endTime") => non_neg_integer(),
        required("startTime") => non_neg_integer()
      }

  """
  @type list_event_logs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dev_environment_request() :: %{
        optional("alias") => [String.t()],
        optional("clientToken") => String.t(),
        optional("ides") => list(ide_configuration()()),
        optional("inactivityTimeoutMinutes") => integer(),
        optional("repositories") => list(repository_input()()),
        optional("vpcConnectionName") => String.t(),
        required("instanceType") => String.t(),
        required("persistentStorage") => persistent_storage_configuration()
      }

  """
  @type create_dev_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_workflow_run_response() :: %{
        "id" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t(),
        "workflowId" => String.t()
      }

  """
  @type start_workflow_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_space_response() :: %{
        "description" => [String.t()],
        "displayName" => [String.t()],
        "name" => String.t()
      }

  """
  @type update_space_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dev_environment_sessions_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }

  """
  @type list_dev_environment_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workflow_run_status_reason() :: %{}

  """
  @type workflow_run_status_reason() :: %{}

  @typedoc """

  ## Example:

      get_dev_environment_request() :: %{}

  """
  @type get_dev_environment_request() :: %{}

  @typedoc """

  ## Example:

      list_source_repository_branches_response() :: %{
        "items" => list(list_source_repository_branches_item()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_source_repository_branches_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "comparisonOperator" => [String.t()],
        "key" => [String.t()],
        "values" => list([String.t()]())
      }

  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workflow_runs_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("sortBy") => list(workflow_run_sort_criteria()()),
        optional("workflowId") => String.t()
      }

  """
  @type list_workflow_runs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_source_repository_clone_urls_request() :: %{}

  """
  @type get_source_repository_clone_urls_request() :: %{}

  @typedoc """

  ## Example:

      workflow_summary() :: %{
        "createdTime" => non_neg_integer(),
        "definition" => workflow_definition_summary(),
        "id" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "name" => [String.t()],
        "runMode" => String.t(),
        "sourceBranchName" => String.t(),
        "sourceRepositoryName" => String.t(),
        "status" => String.t()
      }

  """
  @type workflow_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_dev_environment_request() :: %{
        optional("ides") => list(ide_configuration()()),
        optional("inactivityTimeoutMinutes") => integer(),
        optional("instanceType") => String.t()
      }

  """
  @type start_dev_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_source_repository_request() :: %{}

  """
  @type delete_source_repository_request() :: %{}

  @typedoc """

  ## Example:

      get_subscription_request() :: %{}

  """
  @type get_subscription_request() :: %{}

  @typedoc """

  ## Example:

      start_dev_environment_session_response() :: %{
        "accessDetails" => dev_environment_access_details(),
        "id" => String.t(),
        "projectName" => String.t(),
        "sessionId" => [String.t()],
        "spaceName" => String.t()
      }

  """
  @type start_dev_environment_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workflow_definition_summary() :: %{
        "path" => [String.t()]
      }

  """
  @type workflow_definition_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_project_response() :: %{
        "displayName" => [String.t()],
        "name" => String.t(),
        "spaceName" => String.t()
      }

  """
  @type delete_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      persistent_storage_configuration() :: %{
        "sizeInGiB" => [integer()]
      }

  """
  @type persistent_storage_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_project_request() :: %{
        optional("description") => String.t()
      }

  """
  @type update_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dev_environment_session_summary() :: %{
        "devEnvironmentId" => String.t(),
        "id" => [String.t()],
        "projectName" => String.t(),
        "spaceName" => String.t(),
        "startedTime" => non_neg_integer()
      }

  """
  @type dev_environment_session_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_source_repository_response() :: %{
        "createdTime" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "name" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t()
      }

  """
  @type get_source_repository_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dev_environments_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()],
        optional("projectName") => String.t()
      }

  """
  @type list_dev_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      project_list_filter() :: %{
        "comparisonOperator" => String.t(),
        "key" => String.t(),
        "values" => list([String.t()]())
      }

  """
  @type project_list_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_dev_environment_session_response() :: %{
        "id" => String.t(),
        "projectName" => String.t(),
        "sessionId" => [String.t()],
        "spaceName" => String.t()
      }

  """
  @type stop_dev_environment_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_space_request() :: %{
        optional("description") => String.t()
      }

  """
  @type update_space_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workflow_runs_response() :: %{
        "items" => list(workflow_run_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_workflow_runs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dev_environment_response() :: %{
        "id" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t(),
        "vpcConnectionName" => String.t()
      }

  """
  @type create_dev_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_access_token_request() :: %{}

  """
  @type delete_access_token_request() :: %{}

  @typedoc """

  ## Example:

      list_event_logs_response() :: %{
        "items" => list(event_log_entry()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_event_logs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      verify_session_response() :: %{
        "identity" => [String.t()]
      }

  """
  @type verify_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      persistent_storage() :: %{
        "sizeInGiB" => [integer()]
      }

  """
  @type persistent_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_access_token_request() :: %{
        optional("expiresTime") => non_neg_integer(),
        required("name") => String.t()
      }

  """
  @type create_access_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_spaces_response() :: %{
        "items" => list(space_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_spaces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dev_environment_repository_summary() :: %{
        "branchName" => String.t(),
        "repositoryName" => String.t()
      }

  """
  @type dev_environment_repository_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_request() :: %{
        optional("description") => String.t(),
        required("displayName") => String.t()
      }

  """
  @type create_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dev_environments_response() :: %{
        "items" => list(dev_environment_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_dev_environments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_space_response() :: %{
        "description" => [String.t()],
        "displayName" => [String.t()],
        "name" => String.t(),
        "regionName" => String.t()
      }

  """
  @type get_space_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_projects_request() :: %{
        optional("filters") => list(project_list_filter()()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }

  """
  @type list_projects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_source_repository_branches_item() :: %{
        "headCommitId" => [String.t()],
        "lastUpdatedTime" => non_neg_integer(),
        "name" => String.t(),
        "ref" => String.t()
      }

  """
  @type list_source_repository_branches_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_dev_environment_session_request() :: %{}

  """
  @type stop_dev_environment_session_request() :: %{}

  @typedoc """

  ## Example:

      get_workflow_run_request() :: %{}

  """
  @type get_workflow_run_request() :: %{}

  @typedoc """

  ## Example:

      delete_access_token_response() :: %{}

  """
  @type delete_access_token_response() :: %{}

  @typedoc """

  ## Example:

      execute_command_session_configuration() :: %{
        "arguments" => list([String.t()]()),
        "command" => [String.t()]
      }

  """
  @type execute_command_session_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_dev_environment_response() :: %{
        "id" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t()
      }

  """
  @type delete_dev_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workflow_definition() :: %{
        "path" => [String.t()]
      }

  """
  @type workflow_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_project_request() :: %{}

  """
  @type delete_project_request() :: %{}

  @typedoc """

  ## Example:

      list_source_repositories_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t()]
      }

  """
  @type list_source_repositories_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_source_repository_response() :: %{
        "description" => String.t(),
        "name" => String.t(),
        "projectName" => String.t(),
        "spaceName" => String.t()
      }

  """
  @type create_source_repository_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_workflows_response() :: %{
        "items" => list(workflow_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_workflows_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_workflow_run_response() :: %{
        "endTime" => non_neg_integer(),
        "id" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "projectName" => String.t(),
        "spaceName" => String.t(),
        "startTime" => non_neg_integer(),
        "status" => String.t(),
        "statusReasons" => list(workflow_run_status_reason()()),
        "workflowId" => String.t()
      }

  """
  @type get_workflow_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workflow_sort_criteria() :: %{}

  """
  @type workflow_sort_criteria() :: %{}

  @typedoc """

  ## Example:

      list_source_repositories_response() :: %{
        "items" => list(list_source_repositories_item()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_source_repositories_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workflow_run_summary() :: %{
        "endTime" => non_neg_integer(),
        "id" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "startTime" => non_neg_integer(),
        "status" => String.t(),
        "statusReasons" => list(workflow_run_status_reason()()),
        "workflowId" => String.t(),
        "workflowName" => [String.t()]
      }

  """
  @type workflow_run_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dev_environment_session_configuration() :: %{
        "executeCommandSessionConfiguration" => execute_command_session_configuration(),
        "sessionType" => String.t()
      }

  """
  @type dev_environment_session_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_access_tokens_response() :: %{
        "items" => list(access_token_summary()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_access_tokens_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      space_summary() :: %{
        "description" => [String.t()],
        "displayName" => [String.t()],
        "name" => String.t(),
        "regionName" => String.t()
      }

  """
  @type space_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_source_repository_clone_urls_response() :: %{
        "https" => [String.t()]
      }

  """
  @type get_source_repository_clone_urls_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_spaces_request() :: %{
        optional("nextToken") => [String.t()]
      }

  """
  @type list_spaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_payload() :: %{
        "contentType" => [String.t()],
        "data" => [String.t()]
      }

  """
  @type event_payload() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_workflow_response() :: %{
        "createdTime" => non_neg_integer(),
        "definition" => workflow_definition(),
        "id" => String.t(),
        "lastUpdatedTime" => non_neg_integer(),
        "name" => [String.t()],
        "projectName" => String.t(),
        "runMode" => String.t(),
        "sourceBranchName" => String.t(),
        "sourceRepositoryName" => String.t(),
        "spaceName" => String.t(),
        "status" => String.t()
      }

  """
  @type get_workflow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_source_repository_branch_response() :: %{
        "headCommitId" => [String.t()],
        "lastUpdatedTime" => non_neg_integer(),
        "name" => String.t(),
        "ref" => String.t()
      }

  """
  @type create_source_repository_branch_response() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2022-09-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codecatalyst",
      global?: true,
      hostname: "codecatalyst.global.api.aws",
      protocol: "rest-json",
      service_id: "CodeCatalyst",
      signature_version: nil,
      signing_name: "codecatalyst",
      target_prefix: nil
    }
  end

  @doc """
  Creates a personal access token (PAT) for the current user.

  A personal access token (PAT) is similar to a password.
  It is associated with your user identity for use across all spaces and projects
  in Amazon CodeCatalyst. You use PATs to access CodeCatalyst
  from resources that include integrated development environments (IDEs) and
  Git-based source repositories.
  PATs represent you in Amazon CodeCatalyst and you can manage them in your user
  settings.For more information, see
  [Managing personal access tokens in Amazon CodeCatalyst](https://docs.aws.amazon.com/codecatalyst/latest/userguide/ipa-tokens-keys.html).
  """
  @spec create_access_token(map(), create_access_token_request(), list()) ::
          {:ok, create_access_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_access_token(%Client{} = client, input, options \\ []) do
    url_path = "/v1/accessTokens"
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
      201
    )
  end

  @doc """
  Creates a Dev Environment in Amazon CodeCatalyst, a cloud-based development
  environment that you can use to quickly work on the code stored
  in the source repositories of your project.

  When created in the Amazon CodeCatalyst console, by default a Dev Environment is
  configured to have a 2 core processor, 4GB of RAM, and 16GB of persistent
  storage. None of these
  defaults apply to a Dev Environment created programmatically.
  """
  @spec create_dev_environment(
          map(),
          String.t(),
          String.t(),
          create_dev_environment_request(),
          list()
        ) ::
          {:ok, create_dev_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_dev_environment(%Client{} = client, project_name, space_name, input, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments"

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
      201
    )
  end

  @doc """
  Creates a project in a specified space.
  """
  @spec create_project(map(), String.t(), create_project_request(), list()) ::
          {:ok, create_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_project(%Client{} = client, space_name, input, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects"
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
      201
    )
  end

  @doc """
  Creates an empty Git-based source repository in a specified project.

  The repository is
  created with an initial empty commit with a default branch named `main`.
  """
  @spec create_source_repository(
          map(),
          String.t(),
          String.t(),
          String.t(),
          create_source_repository_request(),
          list()
        ) ::
          {:ok, create_source_repository_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_source_repository(
        %Client{} = client,
        name,
        project_name,
        space_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/sourceRepositories/#{AWS.Util.encode_uri(name)}"

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
      201
    )
  end

  @doc """
  Creates a branch in a specified source repository in Amazon CodeCatalyst.

  This API only creates a branch in a source repository hosted in Amazon
  CodeCatalyst. You cannot use this API to create a branch in a linked repository.
  """
  @spec create_source_repository_branch(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          create_source_repository_branch_request(),
          list()
        ) ::
          {:ok, create_source_repository_branch_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def create_source_repository_branch(
        %Client{} = client,
        name,
        project_name,
        source_repository_name,
        space_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/sourceRepositories/#{AWS.Util.encode_uri(source_repository_name)}/branches/#{AWS.Util.encode_uri(name)}"

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
      201
    )
  end

  @doc """
  Deletes a specified personal access token (PAT).

  A personal access token can only be deleted by the user who created it.
  """
  @spec delete_access_token(map(), String.t(), delete_access_token_request(), list()) ::
          {:ok, delete_access_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def delete_access_token(%Client{} = client, id, input, options \\ []) do
    url_path = "/v1/accessTokens/#{AWS.Util.encode_uri(id)}"
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
      200
    )
  end

  @doc """
  Deletes a Dev Environment.
  """
  @spec delete_dev_environment(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_dev_environment_request(),
          list()
        ) ::
          {:ok, delete_dev_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def delete_dev_environment(
        %Client{} = client,
        id,
        project_name,
        space_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments/#{AWS.Util.encode_uri(id)}"

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
      200
    )
  end

  @doc """
  Deletes a project in a space.
  """
  @spec delete_project(map(), String.t(), String.t(), delete_project_request(), list()) ::
          {:ok, delete_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def delete_project(%Client{} = client, name, space_name, input, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(name)}"

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
      200
    )
  end

  @doc """
  Deletes a source repository in Amazon CodeCatalyst.

  You cannot use this API to delete a linked repository. It can only be used to
  delete a Amazon CodeCatalyst source repository.
  """
  @spec delete_source_repository(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_source_repository_request(),
          list()
        ) ::
          {:ok, delete_source_repository_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def delete_source_repository(
        %Client{} = client,
        name,
        project_name,
        space_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/sourceRepositories/#{AWS.Util.encode_uri(name)}"

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
      200
    )
  end

  @doc """
  Deletes a space.

  Deleting a space cannot be undone. Additionally, since space names must be
  unique across Amazon CodeCatalyst, you cannot reuse names of deleted spaces.
  """
  @spec delete_space(map(), String.t(), delete_space_request(), list()) ::
          {:ok, delete_space_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def delete_space(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(name)}"
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
      200
    )
  end

  @doc """
  Returns information about a Dev Environment for a source repository in a
  project.

  Dev Environments are specific to the user who creates them.
  """
  @spec get_dev_environment(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_dev_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_dev_environment(%Client{} = client, id, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a project.
  """
  @spec get_project(map(), String.t(), String.t(), list()) ::
          {:ok, get_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_project(%Client{} = client, name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a source repository.
  """
  @spec get_source_repository(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_source_repository_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_source_repository(%Client{} = client, name, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/sourceRepositories/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the URLs that can be used with a Git client to clone a
  source
  repository.
  """
  @spec get_source_repository_clone_urls(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_source_repository_clone_urls_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_source_repository_clone_urls(
        %Client{} = client,
        project_name,
        source_repository_name,
        space_name,
        options \\ []
      ) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/sourceRepositories/#{AWS.Util.encode_uri(source_repository_name)}/cloneUrls"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an space.
  """
  @spec get_space(map(), String.t(), list()) ::
          {:ok, get_space_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_space(%Client{} = client, name, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the Amazon Web Services account used for billing
  purposes
  and the billing plan for the space.
  """
  @spec get_subscription(map(), String.t(), list()) ::
          {:ok, get_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_subscription(%Client{} = client, space_name, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/subscription"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a user.
  """
  @spec get_user_details(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_user_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_user_details(%Client{} = client, id \\ nil, user_name \\ nil, options \\ []) do
    url_path = "/userDetails"
    headers = []
    query_params = []

    query_params =
      if !is_nil(user_name) do
        [{"userName", user_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(id) do
        [{"id", id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a workflow.
  """
  @spec get_workflow(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_workflow(%Client{} = client, id, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/workflows/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a specified run of a workflow.
  """
  @spec get_workflow_run(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_workflow_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def get_workflow_run(%Client{} = client, id, project_name, space_name, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/workflowRuns/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all personal access tokens (PATs) associated with the user who calls the
  API.

  You can only list PATs associated with your Amazon Web Services Builder ID.
  """
  @spec list_access_tokens(map(), list_access_tokens_request(), list()) ::
          {:ok, list_access_tokens_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_access_tokens(%Client{} = client, input, options \\ []) do
    url_path = "/v1/accessTokens"
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
  Retrieves a list of active sessions for a Dev Environment in a project.
  """
  @spec list_dev_environment_sessions(
          map(),
          String.t(),
          String.t(),
          String.t(),
          list_dev_environment_sessions_request(),
          list()
        ) ::
          {:ok, list_dev_environment_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_dev_environment_sessions(
        %Client{} = client,
        dev_environment_id,
        project_name,
        space_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments/#{AWS.Util.encode_uri(dev_environment_id)}/sessions"

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
  Retrieves a list of Dev Environments in a project.
  """
  @spec list_dev_environments(map(), String.t(), list_dev_environments_request(), list()) ::
          {:ok, list_dev_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_dev_environments(%Client{} = client, space_name, input, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/devEnvironments"
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
  Retrieves a list of events that occurred during a specific time in a space.

  You can
  use these events to audit user and system activity in a space. For more
  information, see
  [Monitoring](https://docs.aws.amazon.com/codecatalyst/latest/userguide/ipa-monitoring.html) in the *Amazon CodeCatalyst User Guide*.

  ListEventLogs guarantees events for the last 30 days in a given space. You can
  also
  view and retrieve a list of management events over the last 90 days for Amazon
  CodeCatalyst in the
  CloudTrail console by viewing Event history, or by creating a trail to create
  and maintain a record of events that extends past 90 days. For more information,
  see [Working with CloudTrail Event
  History](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events.html)
  and [Working with CloudTrail
  trails](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-getting-started.html).
  """
  @spec list_event_logs(map(), String.t(), list_event_logs_request(), list()) ::
          {:ok, list_event_logs_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_event_logs(%Client{} = client, space_name, input, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/eventLogs"
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
  Retrieves a list of projects.
  """
  @spec list_projects(map(), String.t(), list_projects_request(), list()) ::
          {:ok, list_projects_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_projects(%Client{} = client, space_name, input, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects"
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
  Retrieves a list of source repositories in a project.
  """
  @spec list_source_repositories(
          map(),
          String.t(),
          String.t(),
          list_source_repositories_request(),
          list()
        ) ::
          {:ok, list_source_repositories_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_source_repositories(%Client{} = client, project_name, space_name, input, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/sourceRepositories"

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
  Retrieves a list of branches in a specified source repository.
  """
  @spec list_source_repository_branches(
          map(),
          String.t(),
          String.t(),
          String.t(),
          list_source_repository_branches_request(),
          list()
        ) ::
          {:ok, list_source_repository_branches_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_source_repository_branches(
        %Client{} = client,
        project_name,
        source_repository_name,
        space_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/sourceRepositories/#{AWS.Util.encode_uri(source_repository_name)}/branches"

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
  Retrieves a list of spaces.
  """
  @spec list_spaces(map(), list_spaces_request(), list()) ::
          {:ok, list_spaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_spaces(%Client{} = client, input, options \\ []) do
    url_path = "/v1/spaces"
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
  Retrieves a list of workflow runs of a specified workflow.
  """
  @spec list_workflow_runs(map(), String.t(), String.t(), list_workflow_runs_request(), list()) ::
          {:ok, list_workflow_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_workflow_runs(%Client{} = client, project_name, space_name, input, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/workflowRuns"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"},
        {"workflowId", "workflowId"}
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
  Retrieves a list of workflows in a specified project.
  """
  @spec list_workflows(map(), String.t(), String.t(), list_workflows_request(), list()) ::
          {:ok, list_workflows_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_workflows(%Client{} = client, project_name, space_name, input, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/workflows"

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
  Starts a specified Dev Environment and puts it into an active state.
  """
  @spec start_dev_environment(
          map(),
          String.t(),
          String.t(),
          String.t(),
          start_dev_environment_request(),
          list()
        ) ::
          {:ok, start_dev_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def start_dev_environment(
        %Client{} = client,
        id,
        project_name,
        space_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments/#{AWS.Util.encode_uri(id)}/start"

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
  Starts a session for a specified Dev Environment.
  """
  @spec start_dev_environment_session(
          map(),
          String.t(),
          String.t(),
          String.t(),
          start_dev_environment_session_request(),
          list()
        ) ::
          {:ok, start_dev_environment_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def start_dev_environment_session(
        %Client{} = client,
        id,
        project_name,
        space_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments/#{AWS.Util.encode_uri(id)}/session"

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
  Begins a run of a specified workflow.
  """
  @spec start_workflow_run(map(), String.t(), String.t(), start_workflow_run_request(), list()) ::
          {:ok, start_workflow_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def start_workflow_run(%Client{} = client, project_name, space_name, input, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/workflowRuns"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"workflowId", "workflowId"}
      ]
      |> Request.build_params(input)

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
  Pauses a specified Dev Environment and places it in a non-running state.

  Stopped Dev Environments do not consume compute minutes.
  """
  @spec stop_dev_environment(
          map(),
          String.t(),
          String.t(),
          String.t(),
          stop_dev_environment_request(),
          list()
        ) ::
          {:ok, stop_dev_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def stop_dev_environment(%Client{} = client, id, project_name, space_name, input, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments/#{AWS.Util.encode_uri(id)}/stop"

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
  Stops a session for a specified Dev Environment.
  """
  @spec stop_dev_environment_session(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          stop_dev_environment_session_request(),
          list()
        ) ::
          {:ok, stop_dev_environment_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def stop_dev_environment_session(
        %Client{} = client,
        id,
        project_name,
        session_id,
        space_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments/#{AWS.Util.encode_uri(id)}/session/#{AWS.Util.encode_uri(session_id)}"

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
      200
    )
  end

  @doc """
  Changes one or more values for a Dev Environment.

  Updating certain values of the Dev Environment will cause a restart.
  """
  @spec update_dev_environment(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_dev_environment_request(),
          list()
        ) ::
          {:ok, update_dev_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def update_dev_environment(
        %Client{} = client,
        id,
        project_name,
        space_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments/#{AWS.Util.encode_uri(id)}"

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
  Changes one or more values for a project.
  """
  @spec update_project(map(), String.t(), String.t(), update_project_request(), list()) ::
          {:ok, update_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def update_project(%Client{} = client, name, space_name, input, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(name)}"

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
  Changes one or more values for a space.
  """
  @spec update_space(map(), String.t(), update_space_request(), list()) ::
          {:ok, update_space_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def update_space(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(name)}"
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
  Verifies whether the calling user has a valid Amazon CodeCatalyst login and
  session.

  If successful, this returns the ID of the user in Amazon CodeCatalyst.
  """
  @spec verify_session(map(), list()) ::
          {:ok, verify_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def verify_session(%Client{} = client, options \\ []) do
    url_path = "/session"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end
end
