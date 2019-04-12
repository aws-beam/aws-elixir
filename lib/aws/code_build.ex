# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.CodeBuild do
  @moduledoc """
  AWS CodeBuild

  AWS CodeBuild is a fully managed build service in the cloud. AWS CodeBuild
  compiles your source code, runs unit tests, and produces artifacts that are
  ready to deploy. AWS CodeBuild eliminates the need to provision, manage,
  and scale your own build servers. It provides prepackaged build
  environments for the most popular programming languages and build tools,
  such as Apache Maven, Gradle, and more. You can also fully customize build
  environments in AWS CodeBuild to use your own build tools. AWS CodeBuild
  scales automatically to meet peak build requests. You pay only for the
  build time you consume. For more information about AWS CodeBuild, see the
  *AWS CodeBuild User Guide*.

  AWS CodeBuild supports these operations:

  <ul> <li> `BatchDeleteBuilds`: Deletes one or more builds.

  </li> <li> `BatchGetProjects`: Gets information about one or more build
  projects. A *build project* defines how AWS CodeBuild runs a build. This
  includes information such as where to get the source code to build, the
  build environment to use, the build commands to run, and where to store the
  build output. A *build environment* is a representation of operating
  system, programming language runtime, and tools that AWS CodeBuild uses to
  run a build. You can add tags to build projects to help manage your
  resources and costs.

  </li> <li> `CreateProject`: Creates a build project.

  </li> <li> `CreateWebhook`: For an existing AWS CodeBuild build project
  that has its source code stored in a GitHub or Bitbucket repository,
  enables AWS CodeBuild to start rebuilding the source code every time a code
  change is pushed to the repository.

  </li> <li> `UpdateWebhook`: Changes the settings of an existing webhook.

  </li> <li> `DeleteProject`: Deletes a build project.

  </li> <li> `DeleteWebhook`: For an existing AWS CodeBuild build project
  that has its source code stored in a GitHub or Bitbucket repository, stops
  AWS CodeBuild from rebuilding the source code every time a code change is
  pushed to the repository.

  </li> <li> `ListProjects`: Gets a list of build project names, with each
  build project name representing a single build project.

  </li> <li> `UpdateProject`: Changes the settings of an existing build
  project.

  </li> <li> `BatchGetBuilds`: Gets information about one or more builds.

  </li> <li> `ListBuilds`: Gets a list of build IDs, with each build ID
  representing a single build.

  </li> <li> `ListBuildsForProject`: Gets a list of build IDs for the
  specified build project, with each build ID representing a single build.

  </li> <li> `StartBuild`: Starts running a build.

  </li> <li> `StopBuild`: Attempts to stop running a build.

  </li> <li> `ListCuratedEnvironmentImages`: Gets information about Docker
  images that are managed by AWS CodeBuild.

  </li> <li> `DeleteSourceCredentials`: Deletes a set of GitHub, GitHub
  Enterprise, or Bitbucket source credentials.

  </li> <li> `ImportSourceCredentials`: Imports the source repository
  credentials for an AWS CodeBuild project that has its source code stored in
  a GitHub, GitHub Enterprise, or Bitbucket repository.

  </li> <li> `ListSourceCredentials`: Returns a list of
  `SourceCredentialsInfo` objects. Each `SourceCredentialsInfo` object
  includes the authentication type, token ARN, and type of source provider
  for one set of credentials.

  </li> </ul>
  """

  @doc """
  Deletes one or more builds.
  """
  def batch_delete_builds(client, input, options \\ []) do
    request(client, "BatchDeleteBuilds", input, options)
  end

  @doc """
  Gets information about builds.
  """
  def batch_get_builds(client, input, options \\ []) do
    request(client, "BatchGetBuilds", input, options)
  end

  @doc """
  Gets information about build projects.
  """
  def batch_get_projects(client, input, options \\ []) do
    request(client, "BatchGetProjects", input, options)
  end

  @doc """
  Creates a build project.
  """
  def create_project(client, input, options \\ []) do
    request(client, "CreateProject", input, options)
  end

  @doc """
  For an existing AWS CodeBuild build project that has its source code stored
  in a GitHub or Bitbucket repository, enables AWS CodeBuild to start
  rebuilding the source code every time a code change is pushed to the
  repository.

  <important> If you enable webhooks for an AWS CodeBuild project, and the
  project is used as a build step in AWS CodePipeline, then two identical
  builds are created for each commit. One build is triggered through
  webhooks, and one through AWS CodePipeline. Because billing is on a
  per-build basis, you are billed for both builds. Therefore, if you are
  using AWS CodePipeline, we recommend that you disable webhooks in AWS
  CodeBuild. In the AWS CodeBuild console, clear the Webhook box. For more
  information, see step 5 in [Change a Build Project's
  Settings](https://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console).

  </important>
  """
  def create_webhook(client, input, options \\ []) do
    request(client, "CreateWebhook", input, options)
  end

  @doc """
  Deletes a build project.
  """
  def delete_project(client, input, options \\ []) do
    request(client, "DeleteProject", input, options)
  end

  @doc """
  Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source
  credentials.
  """
  def delete_source_credentials(client, input, options \\ []) do
    request(client, "DeleteSourceCredentials", input, options)
  end

  @doc """
  For an existing AWS CodeBuild build project that has its source code stored
  in a GitHub or Bitbucket repository, stops AWS CodeBuild from rebuilding
  the source code every time a code change is pushed to the repository.
  """
  def delete_webhook(client, input, options \\ []) do
    request(client, "DeleteWebhook", input, options)
  end

  @doc """
  Imports the source repository credentials for an AWS CodeBuild project that
  has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket
  repository.
  """
  def import_source_credentials(client, input, options \\ []) do
    request(client, "ImportSourceCredentials", input, options)
  end

  @doc """
  Resets the cache for a project.
  """
  def invalidate_project_cache(client, input, options \\ []) do
    request(client, "InvalidateProjectCache", input, options)
  end

  @doc """
  Gets a list of build IDs, with each build ID representing a single build.
  """
  def list_builds(client, input, options \\ []) do
    request(client, "ListBuilds", input, options)
  end

  @doc """
  Gets a list of build IDs for the specified build project, with each build
  ID representing a single build.
  """
  def list_builds_for_project(client, input, options \\ []) do
    request(client, "ListBuildsForProject", input, options)
  end

  @doc """
  Gets information about Docker images that are managed by AWS CodeBuild.
  """
  def list_curated_environment_images(client, input, options \\ []) do
    request(client, "ListCuratedEnvironmentImages", input, options)
  end

  @doc """
  Gets a list of build project names, with each build project name
  representing a single build project.
  """
  def list_projects(client, input, options \\ []) do
    request(client, "ListProjects", input, options)
  end

  @doc """
  Returns a list of `SourceCredentialsInfo` objects.
  """
  def list_source_credentials(client, input, options \\ []) do
    request(client, "ListSourceCredentials", input, options)
  end

  @doc """
  Starts running a build.
  """
  def start_build(client, input, options \\ []) do
    request(client, "StartBuild", input, options)
  end

  @doc """
  Attempts to stop running a build.
  """
  def stop_build(client, input, options \\ []) do
    request(client, "StopBuild", input, options)
  end

  @doc """
  Changes the settings of a build project.
  """
  def update_project(client, input, options \\ []) do
    request(client, "UpdateProject", input, options)
  end

  @doc """
  Updates the webhook associated with an AWS CodeBuild build project.

  <note> If you use Bitbucket for your repository, `rotateSecret` is ignored.

  </note>
  """
  def update_webhook(client, input, options \\ []) do
    request(client, "UpdateWebhook", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "codebuild"}
    host = get_host("codebuild", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "CodeBuild_20161006.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
