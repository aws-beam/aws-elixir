# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeBuild do
  @moduledoc """
  AWS CodeBuild

  AWS CodeBuild is a fully managed build service in the cloud.

  AWS CodeBuild compiles your source code, runs unit tests, and produces artifacts
  that are ready to deploy. AWS CodeBuild eliminates the need to provision,
  manage, and scale your own build servers. It provides prepackaged build
  environments for the most popular programming languages and build tools, such as
  Apache Maven, Gradle, and more. You can also fully customize build environments
  in AWS CodeBuild to use your own build tools. AWS CodeBuild scales automatically
  to meet peak build requests. You pay only for the build time you consume. For
  more information about AWS CodeBuild, see the * [AWS CodeBuild User Guide](https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html).*

  AWS CodeBuild supports these operations:

    * `BatchDeleteBuilds`: Deletes one or more builds.

    * `BatchGetBuilds`: Gets information about one or more builds.

    * `BatchGetProjects`: Gets information about one or more build
  projects. A *build project* defines how AWS CodeBuild runs a build. This
  includes information such as where to get the source code to build, the build
  environment to use, the build commands to run, and where to store the build
  output. A *build environment* is a representation of operating system,
  programming language runtime, and tools that AWS CodeBuild uses to run a build.
  You can add tags to build projects to help manage your resources and costs.

    * `BatchGetReportGroups`: Returns an array of report groups.

    * `BatchGetReports`: Returns an array of reports.

    * `CreateProject`: Creates a build project.

    * `CreateReportGroup`: Creates a report group. A report group
  contains a collection of reports.

    * `CreateWebhook`: For an existing AWS CodeBuild build project that
  has its source code stored in a GitHub or Bitbucket repository, enables AWS
  CodeBuild to start rebuilding the source code every time a code change is pushed
  to the repository.

    * `DeleteProject`: Deletes a build project.

    * `DeleteReport`: Deletes a report.

    * `DeleteReportGroup`: Deletes a report group.

    * `DeleteResourcePolicy`: Deletes a resource policy that is
  identified by its resource ARN.

    * `DeleteSourceCredentials`: Deletes a set of GitHub, GitHub
  Enterprise, or Bitbucket source credentials.

    * `DeleteWebhook`: For an existing AWS CodeBuild build project that
  has its source code stored in a GitHub or Bitbucket repository, stops AWS
  CodeBuild from rebuilding the source code every time a code change is pushed to
  the repository.

    * `DescribeTestCases`: Returns a list of details about test cases
  for a report.

    * `GetResourcePolicy`: Gets a resource policy that is identified by
  its resource ARN.

    * `ImportSourceCredentials`: Imports the source repository
  credentials for an AWS CodeBuild project that has its source code stored in a
  GitHub, GitHub Enterprise, or Bitbucket repository.

    * `InvalidateProjectCache`: Resets the cache for a project.

    * `ListBuilds`: Gets a list of build IDs, with each build ID
  representing a single build.

    * `ListBuildsForProject`: Gets a list of build IDs for the specified
  build project, with each build ID representing a single build.

    * `ListCuratedEnvironmentImages`: Gets information about Docker
  images that are managed by AWS CodeBuild.

    * `ListProjects`: Gets a list of build project names, with each
  build project name representing a single build project.

    * `ListReportGroups`: Gets a list ARNs for the report groups in the
  current AWS account.

    * `ListReports`: Gets a list ARNs for the reports in the current AWS
  account.

    * `ListReportsForReportGroup`: Returns a list of ARNs for the
  reports that belong to a `ReportGroup`.

    * `ListSharedProjects`: Gets a list of ARNs associated with projects
  shared with the current AWS account or user.

    * `ListSharedReportGroups`: Gets a list of ARNs associated with
  report groups shared with the current AWS account or user

    * `ListSourceCredentials`: Returns a list of `SourceCredentialsInfo`
  objects. Each `SourceCredentialsInfo` object includes the authentication type,
  token ARN, and type of source provider for one set of credentials.

    * `PutResourcePolicy`: Stores a resource policy for the ARN of a
  `Project` or `ReportGroup` object.

    * `StartBuild`: Starts running a build.

    * `StopBuild`: Attempts to stop running a build.

    * `UpdateProject`: Changes the settings of an existing build
  project.

    * `UpdateReportGroup`: Changes a report group.

    * `UpdateWebhook`: Changes the settings of an existing webhook.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2016-10-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codebuild",
      global?: false,
      protocol: "json",
      service_id: "CodeBuild",
      signature_version: "v4",
      signing_name: "codebuild",
      target_prefix: "CodeBuild_20161006"
    }
  end

  @doc """
  Deletes one or more builds.
  """
  def batch_delete_builds(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchDeleteBuilds", input, options)
  end

  @doc """
  Retrieves information about one or more batch builds.
  """
  def batch_get_build_batches(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchGetBuildBatches", input, options)
  end

  @doc """
  Gets information about one or more builds.
  """
  def batch_get_builds(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchGetBuilds", input, options)
  end

  @doc """
  Gets information about one or more build projects.
  """
  def batch_get_projects(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchGetProjects", input, options)
  end

  @doc """
  Returns an array of report groups.
  """
  def batch_get_report_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchGetReportGroups", input, options)
  end

  @doc """
  Returns an array of reports.
  """
  def batch_get_reports(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchGetReports", input, options)
  end

  @doc """
  Creates a build project.
  """
  def create_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateProject", input, options)
  end

  @doc """
  Creates a report group.

  A report group contains a collection of reports.
  """
  def create_report_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateReportGroup", input, options)
  end

  @doc """
  For an existing AWS CodeBuild build project that has its source code stored in a
  GitHub or Bitbucket repository, enables AWS CodeBuild to start rebuilding the
  source code every time a code change is pushed to the repository.

  If you enable webhooks for an AWS CodeBuild project, and the project is used as
  a build step in AWS CodePipeline, then two identical builds are created for each
  commit. One build is triggered through webhooks, and one through AWS
  CodePipeline. Because billing is on a per-build basis, you are billed for both
  builds. Therefore, if you are using AWS CodePipeline, we recommend that you
  disable webhooks in AWS CodeBuild. In the AWS CodeBuild console, clear the
  Webhook box. For more information, see step 5 in [Change a Build Project's Settings](https://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console).
  """
  def create_webhook(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateWebhook", input, options)
  end

  @doc """
  Deletes a batch build.
  """
  def delete_build_batch(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteBuildBatch", input, options)
  end

  @doc """
  Deletes a build project.

  When you delete a project, its builds are not deleted.
  """
  def delete_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteProject", input, options)
  end

  @doc """
  Deletes a report.
  """
  def delete_report(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteReport", input, options)
  end

  @doc """
  Deletes a report group.

  Before you delete a report group, you must delete its reports.
  """
  def delete_report_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteReportGroup", input, options)
  end

  @doc """
  Deletes a resource policy that is identified by its resource ARN.
  """
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials.
  """
  def delete_source_credentials(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteSourceCredentials", input, options)
  end

  @doc """
  For an existing AWS CodeBuild build project that has its source code stored in a
  GitHub or Bitbucket repository, stops AWS CodeBuild from rebuilding the source
  code every time a code change is pushed to the repository.
  """
  def delete_webhook(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteWebhook", input, options)
  end

  @doc """
  Retrieves one or more code coverage reports.
  """
  def describe_code_coverages(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCodeCoverages", input, options)
  end

  @doc """
  Returns a list of details about test cases for a report.
  """
  def describe_test_cases(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTestCases", input, options)
  end

  @doc """

  """
  def get_report_group_trend(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetReportGroupTrend", input, options)
  end

  @doc """
  Gets a resource policy that is identified by its resource ARN.
  """
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetResourcePolicy", input, options)
  end

  @doc """
  Imports the source repository credentials for an AWS CodeBuild project that has
  its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository.
  """
  def import_source_credentials(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ImportSourceCredentials", input, options)
  end

  @doc """
  Resets the cache for a project.
  """
  def invalidate_project_cache(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "InvalidateProjectCache", input, options)
  end

  @doc """
  Retrieves the identifiers of your build batches in the current region.
  """
  def list_build_batches(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListBuildBatches", input, options)
  end

  @doc """
  Retrieves the identifiers of the build batches for a specific project.
  """
  def list_build_batches_for_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListBuildBatchesForProject", input, options)
  end

  @doc """
  Gets a list of build IDs, with each build ID representing a single build.
  """
  def list_builds(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListBuilds", input, options)
  end

  @doc """
  Gets a list of build IDs for the specified build project, with each build ID
  representing a single build.
  """
  def list_builds_for_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListBuildsForProject", input, options)
  end

  @doc """
  Gets information about Docker images that are managed by AWS CodeBuild.
  """
  def list_curated_environment_images(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListCuratedEnvironmentImages", input, options)
  end

  @doc """
  Gets a list of build project names, with each build project name representing a
  single build project.
  """
  def list_projects(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListProjects", input, options)
  end

  @doc """
  Gets a list ARNs for the report groups in the current AWS account.
  """
  def list_report_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListReportGroups", input, options)
  end

  @doc """
  Returns a list of ARNs for the reports in the current AWS account.
  """
  def list_reports(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListReports", input, options)
  end

  @doc """
  Returns a list of ARNs for the reports that belong to a `ReportGroup`.
  """
  def list_reports_for_report_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListReportsForReportGroup", input, options)
  end

  @doc """
  Gets a list of projects that are shared with other AWS accounts or users.
  """
  def list_shared_projects(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSharedProjects", input, options)
  end

  @doc """
  Gets a list of report groups that are shared with other AWS accounts or users.
  """
  def list_shared_report_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSharedReportGroups", input, options)
  end

  @doc """
  Returns a list of `SourceCredentialsInfo` objects.
  """
  def list_source_credentials(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSourceCredentials", input, options)
  end

  @doc """
  Stores a resource policy for the ARN of a `Project` or `ReportGroup` object.
  """
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutResourcePolicy", input, options)
  end

  @doc """
  Restarts a build.
  """
  def retry_build(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RetryBuild", input, options)
  end

  @doc """
  Restarts a failed batch build.

  Only batch builds that have failed can be retried.
  """
  def retry_build_batch(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RetryBuildBatch", input, options)
  end

  @doc """
  Starts running a build.
  """
  def start_build(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartBuild", input, options)
  end

  @doc """
  Starts a batch build for a project.
  """
  def start_build_batch(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartBuildBatch", input, options)
  end

  @doc """
  Attempts to stop running a build.
  """
  def stop_build(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopBuild", input, options)
  end

  @doc """
  Stops a running batch build.
  """
  def stop_build_batch(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopBuildBatch", input, options)
  end

  @doc """
  Changes the settings of a build project.
  """
  def update_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateProject", input, options)
  end

  @doc """
  Updates a report group.
  """
  def update_report_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateReportGroup", input, options)
  end

  @doc """
  Updates the webhook associated with an AWS CodeBuild build project.

  If you use Bitbucket for your repository, `rotateSecret` is ignored.
  """
  def update_webhook(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateWebhook", input, options)
  end
end