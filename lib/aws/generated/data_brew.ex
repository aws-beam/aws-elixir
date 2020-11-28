# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataBrew do
  @moduledoc """
  AWS Glue DataBrew is a visual, cloud-scale data-preparation service.

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
  """
  def batch_delete_recipe_version(%Client{} = client, name, input, options \\ []) do
    url_path = "/recipes/#{URI.encode(name)}/batchDeleteRecipeVersion"
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
  Creates a new AWS Glue DataBrew dataset for this AWS account.
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
  Creates a new job to profile an AWS Glue DataBrew dataset that exists in the
  current AWS account.
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
  Creates a new AWS Glue DataBrew project in the current AWS account.
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
  Creates a new AWS Glue DataBrew recipe for the current AWS account.
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
  Creates a new job for an existing AWS Glue DataBrew recipe in the current AWS
  account.

  You can create a standalone job using either a project, or a combination of a
  recipe and a dataset.
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
  Creates a new schedule for one or more AWS Glue DataBrew jobs.

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
  Deletes a dataset from AWS Glue DataBrew.
  """
  def delete_dataset(%Client{} = client, name, input, options \\ []) do
    url_path = "/datasets/#{URI.encode(name)}"
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
  Deletes the specified AWS Glue DataBrew job from the current AWS account.

  The job can be for a recipe or for a profile.
  """
  def delete_job(%Client{} = client, name, input, options \\ []) do
    url_path = "/jobs/#{URI.encode(name)}"
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
  Deletes an existing AWS Glue DataBrew project from the current AWS account.
  """
  def delete_project(%Client{} = client, name, input, options \\ []) do
    url_path = "/projects/#{URI.encode(name)}"
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
  Deletes a single version of an AWS Glue DataBrew recipe.
  """
  def delete_recipe_version(%Client{} = client, name, recipe_version, input, options \\ []) do
    url_path = "/recipes/#{URI.encode(name)}/recipeVersion/#{URI.encode(recipe_version)}"
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
  Deletes the specified AWS Glue DataBrew schedule from the current AWS account.
  """
  def delete_schedule(%Client{} = client, name, input, options \\ []) do
    url_path = "/schedules/#{URI.encode(name)}"
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
  Returns the definition of a specific AWS Glue DataBrew dataset that is in the
  current AWS account.
  """
  def describe_dataset(%Client{} = client, name, options \\ []) do
    url_path = "/datasets/#{URI.encode(name)}"
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
  Returns the definition of a specific AWS Glue DataBrew job that is in the
  current AWS account.
  """
  def describe_job(%Client{} = client, name, options \\ []) do
    url_path = "/jobs/#{URI.encode(name)}"
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
  Returns the definition of a specific AWS Glue DataBrew project that is in the
  current AWS account.
  """
  def describe_project(%Client{} = client, name, options \\ []) do
    url_path = "/projects/#{URI.encode(name)}"
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
  Returns the definition of a specific AWS Glue DataBrew recipe that is in the
  current AWS account.
  """
  def describe_recipe(%Client{} = client, name, recipe_version \\ nil, options \\ []) do
    url_path = "/recipes/#{URI.encode(name)}"
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
  Returns the definition of a specific AWS Glue DataBrew schedule that is in the
  current AWS account.
  """
  def describe_schedule(%Client{} = client, name, options \\ []) do
    url_path = "/schedules/#{URI.encode(name)}"
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
  Lists all of the AWS Glue DataBrew datasets for the current AWS account.
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
  Lists all of the previous runs of a particular AWS Glue DataBrew job in the
  current AWS account.
  """
  def list_job_runs(
        %Client{} = client,
        name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/jobs/#{URI.encode(name)}/jobRuns"
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
  Lists the AWS Glue DataBrew jobs in the current AWS account.
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
  Lists all of the DataBrew projects in the current AWS account.
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
  Lists all of the versions of a particular AWS Glue DataBrew recipe in the
  current AWS account.
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
  Lists all of the AWS Glue DataBrew recipes in the current AWS account.
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
  Lists the AWS Glue DataBrew schedules in the current AWS account.
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
  Lists all the tags for an AWS Glue DataBrew resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  Publishes a new major version of an AWS Glue DataBrew recipe that exists in the
  current AWS account.
  """
  def publish_recipe(%Client{} = client, name, input, options \\ []) do
    url_path = "/recipes/#{URI.encode(name)}/publishRecipe"
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
  Performs a recipe step within an interactive AWS Glue DataBrew session that's
  currently open.
  """
  def send_project_session_action(%Client{} = client, name, input, options \\ []) do
    url_path = "/projects/#{URI.encode(name)}/sendProjectSessionAction"
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
  Runs an AWS Glue DataBrew job that exists in the current AWS account.
  """
  def start_job_run(%Client{} = client, name, input, options \\ []) do
    url_path = "/jobs/#{URI.encode(name)}/startJobRun"
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
  Creates an interactive session, enabling you to manipulate an AWS Glue DataBrew
  project.
  """
  def start_project_session(%Client{} = client, name, input, options \\ []) do
    url_path = "/projects/#{URI.encode(name)}/startProjectSession"
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
  Stops the specified job from running in the current AWS account.
  """
  def stop_job_run(%Client{} = client, name, run_id, input, options \\ []) do
    url_path = "/jobs/#{URI.encode(name)}/jobRun/#{URI.encode(run_id)}/stopJobRun"
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
  Adds metadata tags to an AWS Glue DataBrew resource, such as a dataset, job,
  project, or recipe.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  Removes metadata tags from an AWS Glue DataBrew resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  Modifies the definition of an existing AWS Glue DataBrew dataset in the current
  AWS account.
  """
  def update_dataset(%Client{} = client, name, input, options \\ []) do
    url_path = "/datasets/#{URI.encode(name)}"
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
  Modifies the definition of an existing AWS Glue DataBrew job in the current AWS
  account.
  """
  def update_profile_job(%Client{} = client, name, input, options \\ []) do
    url_path = "/profileJobs/#{URI.encode(name)}"
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
  Modifies the definition of an existing AWS Glue DataBrew project in the current
  AWS account.
  """
  def update_project(%Client{} = client, name, input, options \\ []) do
    url_path = "/projects/#{URI.encode(name)}"
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
  Modifies the definition of the latest working version of an AWS Glue DataBrew
  recipe in the current AWS account.
  """
  def update_recipe(%Client{} = client, name, input, options \\ []) do
    url_path = "/recipes/#{URI.encode(name)}"
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
  Modifies the definition of an existing AWS Glue DataBrew recipe job in the
  current AWS account.
  """
  def update_recipe_job(%Client{} = client, name, input, options \\ []) do
    url_path = "/recipeJobs/#{URI.encode(name)}"
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
  Modifies the definition of an existing AWS Glue DataBrew schedule in the current
  AWS account.
  """
  def update_schedule(%Client{} = client, name, input, options \\ []) do
    url_path = "/schedules/#{URI.encode(name)}"
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