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

  def metadata do
    %{
      api_version: "2022-09-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codecatalyst",
      global?: true,
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
  def create_access_token(%Client{} = client, input, options \\ []) do
    url_path = "/v1/accessTokens"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 201)
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
  def create_dev_environment(%Client{} = client, project_name, space_name, input, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 201)
  end

  @doc """
  Creates a project in a specified space.
  """
  def create_project(%Client{} = client, space_name, input, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 201)
  end

  @doc """
  Creates an empty Git-based source repository in a specified project.

  The repository is
  created with an initial empty commit with a default branch named `main`.
  """
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
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 201)
  end

  @doc """
  Creates a branch in a specified source repository in Amazon CodeCatalyst.

  This API only creates a branch in a source repository hosted in Amazon
  CodeCatalyst. You cannot use this API to create a branch in a linked repository.
  """
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
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 201)
  end

  @doc """
  Deletes a specified personal access token (PAT).

  A personal access token can only be deleted by the user who created it.
  """
  def delete_access_token(%Client{} = client, id, input, options \\ []) do
    url_path = "/v1/accessTokens/#{AWS.Util.encode_uri(id)}"
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
  Deletes a Dev Environment.
  """
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
  Deletes a project in a space.
  """
  def delete_project(%Client{} = client, name, space_name, input, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(name)}"

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
  Deletes a source repository in Amazon CodeCatalyst.

  You cannot use this API to delete a linked repository. It can only be used to
  delete a Amazon CodeCatalyst source repository.
  """
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
  Deletes a space.

  Deleting a space cannot be undone. Additionally, since space names must be
  unique across Amazon CodeCatalyst, you cannot reuse names of deleted spaces.
  """
  def delete_space(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(name)}"
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
  Returns information about a Dev Environment for a source repository in a
  project.

  Dev Environments are specific to the user who creates them.
  """
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
  def list_access_tokens(%Client{} = client, input, options \\ []) do
    url_path = "/v1/accessTokens"
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
  Retrieves a list of active sessions for a Dev Environment in a project.
  """
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
  Retrieves a list of Dev Environments in a project.
  """
  def list_dev_environments(%Client{} = client, space_name, input, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/devEnvironments"
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
  def list_event_logs(%Client{} = client, space_name, input, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/eventLogs"
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
  Retrieves a list of projects.
  """
  def list_projects(%Client{} = client, space_name, input, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects"
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
  Retrieves a list of source repositories in a project.
  """
  def list_source_repositories(%Client{} = client, project_name, space_name, input, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/sourceRepositories"

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
  Retrieves a list of branches in a specified source repository.
  """
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
  Retrieves a list of spaces.
  """
  def list_spaces(%Client{} = client, input, options \\ []) do
    url_path = "/v1/spaces"
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
  Retrieves a list of workflow runs of a specified workflow.
  """
  def list_workflow_runs(%Client{} = client, project_name, space_name, input, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/workflowRuns"

    headers = []

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of workflows in a specified project.
  """
  def list_workflows(%Client{} = client, project_name, space_name, input, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/workflows"

    headers = []

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts a specified Dev Environment and puts it into an active state.
  """
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
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Starts a session for a specified Dev Environment.
  """
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
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Begins a run of a specified workflow.
  """
  def start_workflow_run(%Client{} = client, project_name, space_name, input, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/workflowRuns"

    headers = []

    {query_params, input} =
      [
        {"workflowId", "workflowId"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Pauses a specified Dev Environment and places it in a non-running state.

  Stopped Dev Environments do not consume compute minutes.
  """
  def stop_dev_environment(%Client{} = client, id, project_name, space_name, input, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(project_name)}/devEnvironments/#{AWS.Util.encode_uri(id)}/stop"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Stops a session for a specified Dev Environment.
  """
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
  Changes one or more values for a Dev Environment.

  Updating certain values of the Dev Environment will cause a restart.
  """
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
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Changes one or more values for a project.
  """
  def update_project(%Client{} = client, name, space_name, input, options \\ []) do
    url_path =
      "/v1/spaces/#{AWS.Util.encode_uri(space_name)}/projects/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Changes one or more values for a space.
  """
  def update_space(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/spaces/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
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
  def verify_session(%Client{} = client, options \\ []) do
    url_path = "/session"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end
end
