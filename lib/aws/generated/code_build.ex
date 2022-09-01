# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeBuild do
  @moduledoc """
  CodeBuild

  CodeBuild is a fully managed build service in the cloud.

  CodeBuild compiles your source code, runs unit tests, and produces artifacts
  that are ready to deploy. CodeBuild eliminates the need to provision, manage,
  and scale your own build servers. It provides prepackaged build environments for
  the most popular programming languages and build tools, such as Apache Maven,
  Gradle, and more. You can also fully customize build environments in CodeBuild
  to use your own build tools. CodeBuild scales automatically to meet peak build
  requests. You pay only for the build time you consume. For more information
  about CodeBuild, see the * [CodeBuild User Guide](https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html).*
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteBuilds", input, options)
  end

  @doc """
  Retrieves information about one or more batch builds.
  """
  def batch_get_build_batches(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetBuildBatches", input, options)
  end

  @doc """
  Gets information about one or more builds.
  """
  def batch_get_builds(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetBuilds", input, options)
  end

  @doc """
  Gets information about one or more build projects.
  """
  def batch_get_projects(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetProjects", input, options)
  end

  @doc """
  Returns an array of report groups.
  """
  def batch_get_report_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetReportGroups", input, options)
  end

  @doc """
  Returns an array of reports.
  """
  def batch_get_reports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetReports", input, options)
  end

  @doc """
  Creates a build project.
  """
  def create_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateProject", input, options)
  end

  @doc """
  Creates a report group.

  A report group contains a collection of reports.
  """
  def create_report_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateReportGroup", input, options)
  end

  @doc """
  For an existing CodeBuild build project that has its source code stored in a
  GitHub or Bitbucket repository, enables CodeBuild to start rebuilding the source
  code every time a code change is pushed to the repository.

  If you enable webhooks for an CodeBuild project, and the project is used as a
  build step in CodePipeline, then two identical builds are created for each
  commit. One build is triggered through webhooks, and one through CodePipeline.
  Because billing is on a per-build basis, you are billed for both builds.
  Therefore, if you are using CodePipeline, we recommend that you disable webhooks
  in CodeBuild. In the CodeBuild console, clear the Webhook box. For more
  information, see step 5 in [Change a Build Project's Settings](https://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console).
  """
  def create_webhook(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWebhook", input, options)
  end

  @doc """
  Deletes a batch build.
  """
  def delete_build_batch(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBuildBatch", input, options)
  end

  @doc """
  Deletes a build project.

  When you delete a project, its builds are not deleted.
  """
  def delete_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteProject", input, options)
  end

  @doc """
  Deletes a report.
  """
  def delete_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteReport", input, options)
  end

  @doc """
  Deletes a report group.

  Before you delete a report group, you must delete its reports.
  """
  def delete_report_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteReportGroup", input, options)
  end

  @doc """
  Deletes a resource policy that is identified by its resource ARN.
  """
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials.
  """
  def delete_source_credentials(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSourceCredentials", input, options)
  end

  @doc """
  For an existing CodeBuild build project that has its source code stored in a
  GitHub or Bitbucket repository, stops CodeBuild from rebuilding the source code
  every time a code change is pushed to the repository.
  """
  def delete_webhook(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWebhook", input, options)
  end

  @doc """
  Retrieves one or more code coverage reports.
  """
  def describe_code_coverages(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCodeCoverages", input, options)
  end

  @doc """
  Returns a list of details about test cases for a report.
  """
  def describe_test_cases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTestCases", input, options)
  end

  @doc """
  Analyzes and accumulates test report values for the specified test reports.
  """
  def get_report_group_trend(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetReportGroupTrend", input, options)
  end

  @doc """
  Gets a resource policy that is identified by its resource ARN.
  """
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourcePolicy", input, options)
  end

  @doc """
  Imports the source repository credentials for an CodeBuild project that has its
  source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository.
  """
  def import_source_credentials(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportSourceCredentials", input, options)
  end

  @doc """
  Resets the cache for a project.
  """
  def invalidate_project_cache(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "InvalidateProjectCache", input, options)
  end

  @doc """
  Retrieves the identifiers of your build batches in the current region.
  """
  def list_build_batches(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBuildBatches", input, options)
  end

  @doc """
  Retrieves the identifiers of the build batches for a specific project.
  """
  def list_build_batches_for_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBuildBatchesForProject", input, options)
  end

  @doc """
  Gets a list of build IDs, with each build ID representing a single build.
  """
  def list_builds(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBuilds", input, options)
  end

  @doc """
  Gets a list of build identifiers for the specified build project, with each
  build identifier representing a single build.
  """
  def list_builds_for_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBuildsForProject", input, options)
  end

  @doc """
  Gets information about Docker images that are managed by CodeBuild.
  """
  def list_curated_environment_images(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCuratedEnvironmentImages", input, options)
  end

  @doc """
  Gets a list of build project names, with each build project name representing a
  single build project.
  """
  def list_projects(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListProjects", input, options)
  end

  @doc """
  Gets a list ARNs for the report groups in the current Amazon Web Services
  account.
  """
  def list_report_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListReportGroups", input, options)
  end

  @doc """
  Returns a list of ARNs for the reports in the current Amazon Web Services
  account.
  """
  def list_reports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListReports", input, options)
  end

  @doc """
  Returns a list of ARNs for the reports that belong to a `ReportGroup`.
  """
  def list_reports_for_report_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListReportsForReportGroup", input, options)
  end

  @doc """
  Gets a list of projects that are shared with other Amazon Web Services accounts
  or users.
  """
  def list_shared_projects(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSharedProjects", input, options)
  end

  @doc """
  Gets a list of report groups that are shared with other Amazon Web Services
  accounts or users.
  """
  def list_shared_report_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSharedReportGroups", input, options)
  end

  @doc """
  Returns a list of `SourceCredentialsInfo` objects.
  """
  def list_source_credentials(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSourceCredentials", input, options)
  end

  @doc """
  Stores a resource policy for the ARN of a `Project` or `ReportGroup` object.
  """
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Restarts a build.
  """
  def retry_build(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RetryBuild", input, options)
  end

  @doc """
  Restarts a failed batch build.

  Only batch builds that have failed can be retried.
  """
  def retry_build_batch(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RetryBuildBatch", input, options)
  end

  @doc """
  Starts running a build.
  """
  def start_build(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartBuild", input, options)
  end

  @doc """
  Starts a batch build for a project.
  """
  def start_build_batch(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartBuildBatch", input, options)
  end

  @doc """
  Attempts to stop running a build.
  """
  def stop_build(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopBuild", input, options)
  end

  @doc """
  Stops a running batch build.
  """
  def stop_build_batch(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopBuildBatch", input, options)
  end

  @doc """
  Changes the settings of a build project.
  """
  def update_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateProject", input, options)
  end

  @doc """
  Changes the public visibility for a project.

  The project's build results, logs, and artifacts are available to the general
  public. For more information, see [Public build projects](https://docs.aws.amazon.com/codebuild/latest/userguide/public-builds.html)
  in the *CodeBuild User Guide*.

  The following should be kept in mind when making your projects public:

     All of a project's build results, logs, and artifacts, including
  builds that were run when the project was private, are available to the general
  public.

     All build logs and artifacts are available to the public.
  Environment variables, source code, and other sensitive information may have
  been output to the build logs and artifacts. You must be careful about what
  information is output to the build logs. Some best practice are:

       Do not store sensitive values, especially Amazon Web
  Services access key IDs and secret access keys, in environment variables. We
  recommend that you use an Amazon EC2 Systems Manager Parameter Store or Secrets
  Manager to store sensitive values.

       Follow [Best practices for using webhooks](https://docs.aws.amazon.com/codebuild/latest/userguide/webhooks.html#webhook-best-practices)
  in the *CodeBuild User Guide* to limit which entities can trigger a build, and
  do not store the buildspec in the project itself, to ensure that your webhooks
  are as secure as possible.

     A malicious user can use public builds to distribute malicious
  artifacts. We recommend that you review all pull requests to verify that the
  pull request is a legitimate change. We also recommend that you validate any
  artifacts with their checksums to make sure that the correct artifacts are being
  downloaded.
  """
  def update_project_visibility(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateProjectVisibility", input, options)
  end

  @doc """
  Updates a report group.
  """
  def update_report_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateReportGroup", input, options)
  end

  @doc """
  Updates the webhook associated with an CodeBuild build project.

  If you use Bitbucket for your repository, `rotateSecret` is ignored.
  """
  def update_webhook(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWebhook", input, options)
  end
end
