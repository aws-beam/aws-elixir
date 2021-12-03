# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataBrew do
  @moduledoc """
  Glue DataBrew is a visual, cloud-scale data-preparation service.

  DataBrew simplifies data preparation tasks, targeting data issues that are hard
  to spot and time-consuming to fix. DataBrew empowers users of all technical
  levels to visualize the data and perform one-click data transformations, with no
  coding required.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "databrew",
      global?: false,
      protocol: "rest-json",
      service_id: "DataBrew",
      signature_version: "v4",
      signing_name: "databrew",
      target_prefix: nil
    }
  end

  @doc """
  Deletes one or more versions of a recipe at a time.

  The entire request will be rejected if:

    * The recipe does not exist.

    * There is an invalid version identifier in the list of versions.

    * The version list is empty.

    * The version list size exceeds 50.

    * The version list contains duplicate entries.

  The request will complete successfully, but with partial failures, if:

    * A version does not exist.

    * A version is being used by a job.

    * You specify `LATEST_WORKING`, but it's being used by a project.

    * The version fails to be deleted.

  The `LATEST_WORKING` version will only be deleted if the recipe has no other
  versions. If you try to delete `LATEST_WORKING` while other versions exist (or
  if they can't be deleted), then `LATEST_WORKING` will be listed as partial
  failure in the response.
  """
  def batch_delete_recipe_version(%Client{} = client, name, input, options \\ []) do
    url_path = "/recipes/#{AWS.Util.encode_uri(name)}/batchDeleteRecipeVersion"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a new DataBrew dataset.
  """
  def create_dataset(%Client{} = client, input, options \\ []) do
    url_path = "/datasets"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a new job to analyze a dataset and create its data profile.
  """
  def create_profile_job(%Client{} = client, input, options \\ []) do
    url_path = "/profileJobs"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a new DataBrew project.
  """
  def create_project(%Client{} = client, input, options \\ []) do
    url_path = "/projects"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a new DataBrew recipe.
  """
  def create_recipe(%Client{} = client, input, options \\ []) do
    url_path = "/recipes"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a new job to transform input data, using steps defined in an existing
  Glue DataBrew recipe
  """
  def create_recipe_job(%Client{} = client, input, options \\ []) do
    url_path = "/recipeJobs"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a new ruleset that can be used in a profile job to validate the data
  quality of a dataset.
  """
  def create_ruleset(%Client{} = client, input, options \\ []) do
    url_path = "/rulesets"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a new schedule for one or more DataBrew jobs.

  Jobs can be run at a specific date and time, or at regular intervals.
  """
  def create_schedule(%Client{} = client, input, options \\ []) do
    url_path = "/schedules"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a dataset from DataBrew.
  """
  def delete_dataset(%Client{} = client, name, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the specified DataBrew job.
  """
  def delete_job(%Client{} = client, name, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes an existing DataBrew project.
  """
  def delete_project(%Client{} = client, name, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a single version of a DataBrew recipe.
  """
  def delete_recipe_version(%Client{} = client, name, recipe_version, input, options \\ []) do
    url_path =
      "/recipes/#{AWS.Util.encode_uri(name)}/recipeVersion/#{AWS.Util.encode_uri(recipe_version)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a ruleset.
  """
  def delete_ruleset(%Client{} = client, name, input, options \\ []) do
    url_path = "/rulesets/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the specified DataBrew schedule.
  """
  def delete_schedule(%Client{} = client, name, input, options \\ []) do
    url_path = "/schedules/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns the definition of a specific DataBrew dataset.
  """
  def describe_dataset(%Client{} = client, name, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns the definition of a specific DataBrew job.
  """
  def describe_job(%Client{} = client, name, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Represents one run of a DataBrew job.
  """
  def describe_job_run(%Client{} = client, name, run_id, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(name)}/jobRun/#{AWS.Util.encode_uri(run_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns the definition of a specific DataBrew project.
  """
  def describe_project(%Client{} = client, name, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns the definition of a specific DataBrew recipe corresponding to a
  particular version.
  """
  def describe_recipe(%Client{} = client, name, recipe_version \\ nil, options \\ []) do
    url_path = "/recipes/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(recipe_version) do
        [{"recipeVersion", recipe_version} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Retrieves detailed information about the ruleset.
  """
  def describe_ruleset(%Client{} = client, name, options \\ []) do
    url_path = "/rulesets/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Returns the definition of a specific DataBrew schedule.
  """
  def describe_schedule(%Client{} = client, name, options \\ []) do
    url_path = "/schedules/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists all of the DataBrew datasets.
  """
  def list_datasets(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/datasets"
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists all of the previous runs of a particular DataBrew job.
  """
  def list_job_runs(
        %Client{} = client,
        name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/jobs/#{AWS.Util.encode_uri(name)}/jobRuns"
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists all of the DataBrew jobs that are defined.
  """
  def list_jobs(
        %Client{} = client,
        dataset_name \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        project_name \\ nil,
        options \\ []
      ) do
    url_path = "/jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(project_name) do
        [{"projectName", project_name} | query_params]
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
      if !is_nil(dataset_name) do
        [{"datasetName", dataset_name} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists all of the DataBrew projects that are defined.
  """
  def list_projects(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/projects"
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the versions of a particular DataBrew recipe, except for `LATEST_WORKING`.
  """
  def list_recipe_versions(
        %Client{} = client,
        max_results \\ nil,
        name,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/recipeVersions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists all of the DataBrew recipes that are defined.
  """
  def list_recipes(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        recipe_version \\ nil,
        options \\ []
      ) do
    url_path = "/recipes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(recipe_version) do
        [{"recipeVersion", recipe_version} | query_params]
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  List all rulesets available in the current account or rulesets associated with a
  specific resource (dataset).
  """
  def list_rulesets(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        target_arn \\ nil,
        options \\ []
      ) do
    url_path = "/rulesets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_arn) do
        [{"targetArn", target_arn} | query_params]
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists the DataBrew schedules that are defined.
  """
  def list_schedules(
        %Client{} = client,
        job_name \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/schedules"
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
      if !is_nil(job_name) do
        [{"jobName", job_name} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Lists all the tags for a DataBrew resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Publishes a new version of a DataBrew recipe.
  """
  def publish_recipe(%Client{} = client, name, input, options \\ []) do
    url_path = "/recipes/#{AWS.Util.encode_uri(name)}/publishRecipe"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Performs a recipe step within an interactive DataBrew session that's currently
  open.
  """
  def send_project_session_action(%Client{} = client, name, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(name)}/sendProjectSessionAction"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Runs a DataBrew job.
  """
  def start_job_run(%Client{} = client, name, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(name)}/startJobRun"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates an interactive session, enabling you to manipulate data in a DataBrew
  project.
  """
  def start_project_session(%Client{} = client, name, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(name)}/startProjectSession"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Stops a particular run of a job.
  """
  def stop_job_run(%Client{} = client, name, run_id, input, options \\ []) do
    url_path =
      "/jobs/#{AWS.Util.encode_uri(name)}/jobRun/#{AWS.Util.encode_uri(run_id)}/stopJobRun"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Adds metadata tags to a DataBrew resource, such as a dataset, project, recipe,
  job, or schedule.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes metadata tags from a DataBrew resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Modifies the definition of an existing DataBrew dataset.
  """
  def update_dataset(%Client{} = client, name, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Modifies the definition of an existing profile job.
  """
  def update_profile_job(%Client{} = client, name, input, options \\ []) do
    url_path = "/profileJobs/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Modifies the definition of an existing DataBrew project.
  """
  def update_project(%Client{} = client, name, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Modifies the definition of the `LATEST_WORKING` version of a DataBrew recipe.
  """
  def update_recipe(%Client{} = client, name, input, options \\ []) do
    url_path = "/recipes/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Modifies the definition of an existing DataBrew recipe job.
  """
  def update_recipe_job(%Client{} = client, name, input, options \\ []) do
    url_path = "/recipeJobs/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates specified ruleset.
  """
  def update_ruleset(%Client{} = client, name, input, options \\ []) do
    url_path = "/rulesets/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Modifies the definition of an existing DataBrew schedule.
  """
  def update_schedule(%Client{} = client, name, input, options \\ []) do
    url_path = "/schedules/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
