# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.M2 do
  @moduledoc """
  Amazon Web Services Mainframe Modernization provides tools and resources to help
  you plan and implement migration and modernization from mainframes to Amazon Web
  Services managed runtime environments.

  It provides tools for analyzing existing mainframe applications, developing or
  updating mainframe applications using COBOL or PL/I, and implementing an
  automated pipeline for continuous integration and continuous delivery (CI/CD) of
  the applications.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2021-04-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "m2",
      global?: false,
      protocol: "rest-json",
      service_id: "m2",
      signature_version: "v4",
      signing_name: "m2",
      target_prefix: nil
    }
  end

  @doc """
  Cancels the running of a specific batch job execution.
  """
  def cancel_batch_job_execution(
        %Client{} = client,
        application_id,
        execution_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job-executions/#{AWS.Util.encode_uri(execution_id)}/cancel"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CancelBatchJobExecution",
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
  Creates a new application with given parameters.

  Requires an existing environment and application definition file.
  """
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateApplication",
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
  Starts a data set import task for a specific application.
  """
  def create_data_set_import_task(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/dataset-import-task"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateDataSetImportTask",
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
  Creates and starts a deployment to deploy an application into an environment.
  """
  def create_deployment(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/deployments"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateDeployment",
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
  Creates a runtime environment for a given runtime engine.
  """
  def create_environment(%Client{} = client, input, options \\ []) do
    url_path = "/environments"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateEnvironment",
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
  Deletes a specific application.

  You cannot delete a running application.
  """
  def delete_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteApplication",
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
  Deletes a specific application from a specified environment where it has been
  previously deployed.

  You cannot delete an environment using DeleteEnvironment, if any application has
  ever been deployed to it. This API removes the association of the application
  with the environment so you can delete the environment smoothly.
  """
  def delete_application_from_environment(
        %Client{} = client,
        application_id,
        environment_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/environment/#{AWS.Util.encode_uri(environment_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteApplicationFromEnvironment",
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
  Deletes a specific environment.

  The environment cannot contain deployed applications. If it does, you must
  delete those applications before you delete the environment.
  """
  def delete_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteEnvironment",
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
  Describes the details of a specific application.
  """
  def get_application(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetApplication",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns details about a specific version of a specific application.
  """
  def get_application_version(
        %Client{} = client,
        application_id,
        application_version,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/versions/#{AWS.Util.encode_uri(application_version)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetApplicationVersion",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets the details of a specific batch job execution for a specific application.
  """
  def get_batch_job_execution(%Client{} = client, application_id, execution_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job-executions/#{AWS.Util.encode_uri(execution_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetBatchJobExecution",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets the details of a specific data set.
  """
  def get_data_set_details(%Client{} = client, application_id, data_set_name, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/datasets/#{AWS.Util.encode_uri(data_set_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetDataSetDetails",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets the status of a data set import task initiated with the
  `CreateDataSetImportTask` operation.
  """
  def get_data_set_import_task(%Client{} = client, application_id, task_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/dataset-import-tasks/#{AWS.Util.encode_uri(task_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetDataSetImportTask",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets details of a specific deployment with a given deployment identifier.
  """
  def get_deployment(%Client{} = client, application_id, deployment_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/deployments/#{AWS.Util.encode_uri(deployment_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetDeployment",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Describes a specific runtime environment.
  """
  def get_environment(%Client{} = client, environment_id, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetEnvironment",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a list of the application versions for a specific application.
  """
  def list_application_versions(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/versions"
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

    Request.request_rest(
      client,
      meta,
      "ListApplicationVersions",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Lists the applications associated with a specific Amazon Web Services account.

  You can provide the unique identifier of a specific environment in a query
  parameter to see all applications associated with that environment.
  """
  def list_applications(
        %Client{} = client,
        environment_id \\ nil,
        max_results \\ nil,
        names \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(names) do
        [{"names", names} | query_params]
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
      if !is_nil(environment_id) do
        [{"environmentId", environment_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListApplications",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Lists all the available batch job definitions based on the batch job resources
  uploaded during the application creation.

  The listed batch job definitions can then be used to start a batch job.
  """
  def list_batch_job_definitions(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        prefix \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job-definitions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(prefix) do
        [{"prefix", prefix} | query_params]
      else
        query_params
      end

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

    Request.request_rest(
      client,
      meta,
      "ListBatchJobDefinitions",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Lists historical, current, and scheduled batch job executions for a specific
  application.
  """
  def list_batch_job_executions(
        %Client{} = client,
        application_id,
        execution_ids \\ nil,
        job_name \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        started_after \\ nil,
        started_before \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job-executions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(started_before) do
        [{"startedBefore", started_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(started_after) do
        [{"startedAfter", started_after} | query_params]
      else
        query_params
      end

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
      if !is_nil(job_name) do
        [{"jobName", job_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(execution_ids) do
        [{"executionIds", execution_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListBatchJobExecutions",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Lists the data set imports for the specified application.
  """
  def list_data_set_import_history(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/dataset-import-tasks"
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

    Request.request_rest(
      client,
      meta,
      "ListDataSetImportHistory",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Lists the data sets imported for a specific application.

  In Amazon Web Services Mainframe Modernization, data sets are associated with
  applications deployed on environments. This is known as importing data sets.
  Currently, Amazon Web Services Mainframe Modernization can import data sets into
  catalogs using
  [CreateDataSetImportTask](https://docs.aws.amazon.com/m2/latest/APIReference/API_CreateDataSetImportTask.html).
  """
  def list_data_sets(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        prefix \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/datasets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(prefix) do
        [{"prefix", prefix} | query_params]
      else
        query_params
      end

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

    Request.request_rest(
      client,
      meta,
      "ListDataSets",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a list of all deployments of a specific application.

  A deployment is a combination of a specific application and a specific version
  of that application. Each deployment is mapped to a particular application
  version.
  """
  def list_deployments(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/deployments"
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

    Request.request_rest(
      client,
      meta,
      "ListDeployments",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Lists the available engine versions.
  """
  def list_engine_versions(
        %Client{} = client,
        engine_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/engine-versions"
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
      if !is_nil(engine_type) do
        [{"engineType", engine_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListEngineVersions",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Lists the runtime environments.
  """
  def list_environments(
        %Client{} = client,
        engine_type \\ nil,
        max_results \\ nil,
        names \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/environments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(names) do
        [{"names", names} | query_params]
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
      if !is_nil(engine_type) do
        [{"engineType", engine_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListEnvironments",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Lists the tags for the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListTagsForResource",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Starts an application that is currently stopped.
  """
  def start_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/start"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartApplication",
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
  Starts a batch job and returns the unique identifier of this execution of the
  batch job.

  The associated application must be running in order to start the batch job.
  """
  def start_batch_job(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/batch-job"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartBatchJob",
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
  Stops a running application.
  """
  def stop_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/stop"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StopApplication",
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
  Adds one or more tags to the specified resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "TagResource",
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
  Removes one or more tags from the specified resource.
  """
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
      "UntagResource",
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
  Updates an application and creates a new version.
  """
  def update_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateApplication",
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
  Updates the configuration details for a specific environment.
  """
  def update_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateEnvironment",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
