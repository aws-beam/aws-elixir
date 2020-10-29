# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

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
  build time you consume. For more information about AWS CodeBuild, see the *
  [AWS CodeBuild User
  Guide](https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html).*

  AWS CodeBuild supports these operations:

  <ul> <li> `BatchDeleteBuilds`: Deletes one or more builds.

  </li> <li> `BatchGetBuilds`: Gets information about one or more builds.

  </li> <li> `BatchGetProjects`: Gets information about one or more build
  projects. A *build project* defines how AWS CodeBuild runs a build. This
  includes information such as where to get the source code to build, the
  build environment to use, the build commands to run, and where to store the
  build output. A *build environment* is a representation of operating
  system, programming language runtime, and tools that AWS CodeBuild uses to
  run a build. You can add tags to build projects to help manage your
  resources and costs.

  </li> <li> `BatchGetReportGroups`: Returns an array of report groups.

  </li> <li> `BatchGetReports`: Returns an array of reports.

  </li> <li> `CreateProject`: Creates a build project.

  </li> <li> `CreateReportGroup`: Creates a report group. A report group
  contains a collection of reports.

  </li> <li> `CreateWebhook`: For an existing AWS CodeBuild build project
  that has its source code stored in a GitHub or Bitbucket repository,
  enables AWS CodeBuild to start rebuilding the source code every time a code
  change is pushed to the repository.

  </li> <li> `DeleteProject`: Deletes a build project.

  </li> <li> `DeleteReport`: Deletes a report.

  </li> <li> `DeleteReportGroup`: Deletes a report group.

  </li> <li> `DeleteResourcePolicy`: Deletes a resource policy that is
  identified by its resource ARN.

  </li> <li> `DeleteSourceCredentials`: Deletes a set of GitHub, GitHub
  Enterprise, or Bitbucket source credentials.

  </li> <li> `DeleteWebhook`: For an existing AWS CodeBuild build project
  that has its source code stored in a GitHub or Bitbucket repository, stops
  AWS CodeBuild from rebuilding the source code every time a code change is
  pushed to the repository.

  </li> <li> `DescribeTestCases`: Returns a list of details about test cases
  for a report.

  </li> <li> `GetResourcePolicy`: Gets a resource policy that is identified
  by its resource ARN.

  </li> <li> `ImportSourceCredentials`: Imports the source repository
  credentials for an AWS CodeBuild project that has its source code stored in
  a GitHub, GitHub Enterprise, or Bitbucket repository.

  </li> <li> `InvalidateProjectCache`: Resets the cache for a project.

  </li> <li> `ListBuilds`: Gets a list of build IDs, with each build ID
  representing a single build.

  </li> <li> `ListBuildsForProject`: Gets a list of build IDs for the
  specified build project, with each build ID representing a single build.

  </li> <li> `ListCuratedEnvironmentImages`: Gets information about Docker
  images that are managed by AWS CodeBuild.

  </li> <li> `ListProjects`: Gets a list of build project names, with each
  build project name representing a single build project.

  </li> <li> `ListReportGroups`: Gets a list ARNs for the report groups in
  the current AWS account.

  </li> <li> `ListReports`: Gets a list ARNs for the reports in the current
  AWS account.

  </li> <li> `ListReportsForReportGroup`: Returns a list of ARNs for the
  reports that belong to a `ReportGroup`.

  </li> <li> `ListSharedProjects`: Gets a list of ARNs associated with
  projects shared with the current AWS account or user.

  </li> <li> `ListSharedReportGroups`: Gets a list of ARNs associated with
  report groups shared with the current AWS account or user

  </li> <li> `ListSourceCredentials`: Returns a list of
  `SourceCredentialsInfo` objects. Each `SourceCredentialsInfo` object
  includes the authentication type, token ARN, and type of source provider
  for one set of credentials.

  </li> <li> `PutResourcePolicy`: Stores a resource policy for the ARN of a
  `Project` or `ReportGroup` object.

  </li> <li> `StartBuild`: Starts running a build.

  </li> <li> `StopBuild`: Attempts to stop running a build.

  </li> <li> `UpdateProject`: Changes the settings of an existing build
  project.

  </li> <li> `UpdateReportGroup`: Changes a report group.

  </li> <li> `UpdateWebhook`: Changes the settings of an existing webhook.

  </li> </ul>
  """

  @doc """
  Deletes one or more builds.
  """
  def batch_delete_builds(client, input, options \\ []) do
    request(client, "BatchDeleteBuilds", input, options)
  end

  @doc """
  Retrieves information about one or more batch builds.
  """
  def batch_get_build_batches(client, input, options \\ []) do
    request(client, "BatchGetBuildBatches", input, options)
  end

  @doc """
  Gets information about one or more builds.
  """
  def batch_get_builds(client, input, options \\ []) do
    request(client, "BatchGetBuilds", input, options)
  end

  @doc """
  Gets information about one or more build projects.
  """
  def batch_get_projects(client, input, options \\ []) do
    request(client, "BatchGetProjects", input, options)
  end

  @doc """
  Returns an array of report groups.
  """
  def batch_get_report_groups(client, input, options \\ []) do
    request(client, "BatchGetReportGroups", input, options)
  end

  @doc """
  Returns an array of reports.
  """
  def batch_get_reports(client, input, options \\ []) do
    request(client, "BatchGetReports", input, options)
  end

  @doc """
  Creates a build project.
  """
  def create_project(client, input, options \\ []) do
    request(client, "CreateProject", input, options)
  end

  @doc """
  Creates a report group. A report group contains a collection of reports.
  """
  def create_report_group(client, input, options \\ []) do
    request(client, "CreateReportGroup", input, options)
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
  Deletes a batch build.
  """
  def delete_build_batch(client, input, options \\ []) do
    request(client, "DeleteBuildBatch", input, options)
  end

  @doc """
  Deletes a build project. When you delete a project, its builds are not
  deleted.
  """
  def delete_project(client, input, options \\ []) do
    request(client, "DeleteProject", input, options)
  end

  @doc """
  Deletes a report.
  """
  def delete_report(client, input, options \\ []) do
    request(client, "DeleteReport", input, options)
  end

  @doc """
  Deletes a report group. Before you delete a report group, you must delete
  its reports.
  """
  def delete_report_group(client, input, options \\ []) do
    request(client, "DeleteReportGroup", input, options)
  end

  @doc """
  Deletes a resource policy that is identified by its resource ARN.
  """
  def delete_resource_policy(client, input, options \\ []) do
    request(client, "DeleteResourcePolicy", input, options)
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
  Retrieves one or more code coverage reports.
  """
  def describe_code_coverages(client, input, options \\ []) do
    request(client, "DescribeCodeCoverages", input, options)
  end

  @doc """
  Returns a list of details about test cases for a report.
  """
  def describe_test_cases(client, input, options \\ []) do
    request(client, "DescribeTestCases", input, options)
  end

  @doc """
  Gets a resource policy that is identified by its resource ARN.
  """
  def get_resource_policy(client, input, options \\ []) do
    request(client, "GetResourcePolicy", input, options)
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
  Retrieves the identifiers of your build batches in the current region.
  """
  def list_build_batches(client, input, options \\ []) do
    request(client, "ListBuildBatches", input, options)
  end

  @doc """
  Retrieves the identifiers of the build batches for a specific project.
  """
  def list_build_batches_for_project(client, input, options \\ []) do
    request(client, "ListBuildBatchesForProject", input, options)
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
  Gets a list ARNs for the report groups in the current AWS account.
  """
  def list_report_groups(client, input, options \\ []) do
    request(client, "ListReportGroups", input, options)
  end

  @doc """
  Returns a list of ARNs for the reports in the current AWS account.
  """
  def list_reports(client, input, options \\ []) do
    request(client, "ListReports", input, options)
  end

  @doc """
  Returns a list of ARNs for the reports that belong to a `ReportGroup`.
  """
  def list_reports_for_report_group(client, input, options \\ []) do
    request(client, "ListReportsForReportGroup", input, options)
  end

  @doc """
  Gets a list of projects that are shared with other AWS accounts or users.
  """
  def list_shared_projects(client, input, options \\ []) do
    request(client, "ListSharedProjects", input, options)
  end

  @doc """
  Gets a list of report groups that are shared with other AWS accounts or
  users.
  """
  def list_shared_report_groups(client, input, options \\ []) do
    request(client, "ListSharedReportGroups", input, options)
  end

  @doc """
  Returns a list of `SourceCredentialsInfo` objects.
  """
  def list_source_credentials(client, input, options \\ []) do
    request(client, "ListSourceCredentials", input, options)
  end

  @doc """
  Stores a resource policy for the ARN of a `Project` or `ReportGroup`
  object.
  """
  def put_resource_policy(client, input, options \\ []) do
    request(client, "PutResourcePolicy", input, options)
  end

  @doc """
  Restarts a build.
  """
  def retry_build(client, input, options \\ []) do
    request(client, "RetryBuild", input, options)
  end

  @doc """
  Restarts a batch build.
  """
  def retry_build_batch(client, input, options \\ []) do
    request(client, "RetryBuildBatch", input, options)
  end

  @doc """
  Starts running a build.
  """
  def start_build(client, input, options \\ []) do
    request(client, "StartBuild", input, options)
  end

  @doc """
  Starts a batch build for a project.
  """
  def start_build_batch(client, input, options \\ []) do
    request(client, "StartBuildBatch", input, options)
  end

  @doc """
  Attempts to stop running a build.
  """
  def stop_build(client, input, options \\ []) do
    request(client, "StopBuild", input, options)
  end

  @doc """
  Stops a running batch build.
  """
  def stop_build_batch(client, input, options \\ []) do
    request(client, "StopBuildBatch", input, options)
  end

  @doc """
  Changes the settings of a build project.
  """
  def update_project(client, input, options \\ []) do
    request(client, "UpdateProject", input, options)
  end

  @doc """
  Updates a report group.
  """
  def update_report_group(client, input, options \\ []) do
    request(client, "UpdateReportGroup", input, options)
  end

  @doc """
  Updates the webhook associated with an AWS CodeBuild build project.

  <note> If you use Bitbucket for your repository, `rotateSecret` is ignored.

  </note>
  """
  def update_webhook(client, input, options \\ []) do
    request(client, "UpdateWebhook", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, map(), map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "codebuild"}
    host = build_host("codebuild", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "CodeBuild_20161006.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, %{body: body} = response} ->
        {:error, decode!(client, body), response}

      error = {:error, _reason} -> error
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
