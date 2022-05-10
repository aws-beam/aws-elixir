# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Evidently do
  @moduledoc """
  You can use Amazon CloudWatch Evidently to safely validate new features by
  serving them to a specified percentage of your users while you roll out the
  feature.

  You can monitor the performance of the new feature to help you decide when to
  ramp up traffic to your users. This helps you reduce risk and identify
  unintended consequences before you fully launch the feature.

  You can also conduct A/B experiments to make feature design decisions based on
  evidence and data. An experiment can test as many as five variations at once.
  Evidently collects experiment data and analyzes it using statistical methods. It
  also provides clear recommendations about which variations perform better. You
  can test both user-facing features and backend features.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2021-02-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "evidently",
      global?: false,
      protocol: "rest-json",
      service_id: "Evidently",
      signature_version: "v4",
      signing_name: "evidently",
      target_prefix: nil
    }
  end

  @doc """
  This operation assigns feature variation to user sessions.

  For each user session, you pass in an `entityID` that represents the user.
  Evidently then checks the evaluation rules and assigns the variation.

  The first rules that are evaluated are the override rules. If the user's
  `entityID` matches an override rule, the user is served the variation specified
  by that rule.

  Next, if there is a launch of the feature, the user might be assigned to a
  variation in the launch. The chance of this depends on the percentage of users
  that are allocated to that launch. If the user is enrolled in the launch, the
  variation they are served depends on the allocation of the various feature
  variations used for the launch.

  If the user is not assigned to a launch, and there is an ongoing experiment for
  this feature, the user might be assigned to a variation in the experiment. The
  chance of this depends on the percentage of users that are allocated to that
  experiment. If the user is enrolled in the experiment, the variation they are
  served depends on the allocation of the various feature variations used for the
  experiment.

  If the user is not assigned to a launch or experiment, they are served the
  default variation.
  """
  def batch_evaluate_feature(%Client{} = client, project, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/evaluations"
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
      200
    )
  end

  @doc """
  Creates an Evidently *experiment*.

  Before you create an experiment, you must create the feature to use for the
  experiment.

  An experiment helps you make feature design decisions based on evidence and
  data. An experiment can test as many as five variations at once. Evidently
  collects experiment data and analyzes it by statistical methods, and provides
  clear recommendations about which variations perform better.

  Don't use this operation to update an existing experiment. Instead, use
  [UpdateExperiment](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateExperiment.html).
  """
  def create_experiment(%Client{} = client, project, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/experiments"
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
      200
    )
  end

  @doc """
  Creates an Evidently *feature* that you want to launch or test.

  You can define up to five variations of a feature, and use these variations in
  your launches and experiments. A feature must be created in a project. For
  information about creating a project, see
  [CreateProject](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateProject.html).  Don't use this operation to update an existing feature. Instead, use
  [UpdateFeature](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateFeature.html).
  """
  def create_feature(%Client{} = client, project, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/features"
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
      200
    )
  end

  @doc """
  Creates a *launch* of a given feature.

  Before you create a launch, you must create the feature to use for the launch.

  You can use a launch to safely validate new features by serving them to a
  specified percentage of your users while you roll out the feature. You can
  monitor the performance of the new feature to help you decide when to ramp up
  traffic to more users. This helps you reduce risk and identify unintended
  consequences before you fully launch the feature.

  Don't use this operation to update an existing launch. Instead, use
  [UpdateLaunch](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateLaunch.html).
  """
  def create_launch(%Client{} = client, project, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/launches"
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
      200
    )
  end

  @doc """
  Creates a project, which is the logical object in Evidently that can contain
  features, launches, and experiments.

  Use projects to group similar features together.

  To update an existing project, use
  [UpdateProject](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateProject.html).
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
      200
    )
  end

  @doc """
  Deletes an Evidently experiment.

  The feature used for the experiment is not deleted.

  To stop an experiment without deleting it, use
  [StopExperiment](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_StopExperiment.html).
  """
  def delete_experiment(%Client{} = client, experiment, project, input, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/experiments/#{AWS.Util.encode_uri(experiment)}"

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
      200
    )
  end

  @doc """
  Deletes an Evidently feature.
  """
  def delete_feature(%Client{} = client, feature, project, input, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/features/#{AWS.Util.encode_uri(feature)}"

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
      200
    )
  end

  @doc """
  Deletes an Evidently launch.

  The feature used for the launch is not deleted.

  To stop a launch without deleting it, use
  [StopLaunch](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_StopLaunch.html).
  """
  def delete_launch(%Client{} = client, launch, project, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/launches/#{AWS.Util.encode_uri(launch)}"
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
      200
    )
  end

  @doc """
  Deletes an Evidently project.

  Before you can delete a project, you must delete all the features that the
  project contains. To delete a feature, use
  [DeleteFeature](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_DeleteFeature.html).
  """
  def delete_project(%Client{} = client, project, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}"
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
      200
    )
  end

  @doc """
  This operation assigns a feature variation to one given user session.

  You pass in an `entityID` that represents the user. Evidently then checks the
  evaluation rules and assigns the variation.

  The first rules that are evaluated are the override rules. If the user's
  `entityID` matches an override rule, the user is served the variation specified
  by that rule.

  Next, if there is a launch of the feature, the user might be assigned to a
  variation in the launch. The chance of this depends on the percentage of users
  that are allocated to that launch. If the user is enrolled in the launch, the
  variation they are served depends on the allocation of the various feature
  variations used for the launch.

  If the user is not assigned to a launch, and there is an ongoing experiment for
  this feature, the user might be assigned to a variation in the experiment. The
  chance of this depends on the percentage of users that are allocated to that
  experiment. If the user is enrolled in the experiment, the variation they are
  served depends on the allocation of the various feature variations used for the
  experiment.

  If the user is not assigned to a launch or experiment, they are served the
  default variation.
  """
  def evaluate_feature(%Client{} = client, feature, project, input, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/evaluations/#{AWS.Util.encode_uri(feature)}"

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
      200
    )
  end

  @doc """
  Returns the details about one experiment.

  You must already know the experiment name. To retrieve a list of experiments in
  your account, use
  [ListExperiments](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListExperiments.html).
  """
  def get_experiment(%Client{} = client, experiment, project, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/experiments/#{AWS.Util.encode_uri(experiment)}"

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
      200
    )
  end

  @doc """
  Retrieves the results of a running or completed experiment.

  No results are available until there have been 100 events for each variation and
  at least 10 minutes have passed since the start of the experiment.

  Experiment results are available up to 63 days after the start of the
  experiment. They are not available after that because of CloudWatch data
  retention policies.
  """
  def get_experiment_results(%Client{} = client, experiment, project, input, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/experiments/#{AWS.Util.encode_uri(experiment)}/results"

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
      200
    )
  end

  @doc """
  Returns the details about one feature.

  You must already know the feature name. To retrieve a list of features in your
  account, use
  [ListFeatures](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListFeatures.html).
  """
  def get_feature(%Client{} = client, feature, project, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/features/#{AWS.Util.encode_uri(feature)}"

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
      200
    )
  end

  @doc """
  Returns the details about one launch.

  You must already know the launch name. To retrieve a list of launches in your
  account, use
  [ListLaunches](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListLaunches.html).
  """
  def get_launch(%Client{} = client, launch, project, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/launches/#{AWS.Util.encode_uri(launch)}"
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
      200
    )
  end

  @doc """
  Returns the details about one launch.

  You must already know the project name. To retrieve a list of projects in your
  account, use
  [ListProjects](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListProjects.html).
  """
  def get_project(%Client{} = client, project, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}"
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
      200
    )
  end

  @doc """
  Returns configuration details about all the experiments in the specified
  project.
  """
  def list_experiments(
        %Client{} = client,
        project,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/experiments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
      200
    )
  end

  @doc """
  Returns configuration details about all the features in the specified project.
  """
  def list_features(
        %Client{} = client,
        project,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/features"
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
      200
    )
  end

  @doc """
  Returns configuration details about all the launches in the specified project.
  """
  def list_launches(
        %Client{} = client,
        project,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/launches"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
      200
    )
  end

  @doc """
  Returns configuration details about all the projects in the current Region in
  your account.
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
      200
    )
  end

  @doc """
  Displays the tags associated with an Evidently resource.
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
      200
    )
  end

  @doc """
  Sends performance events to Evidently.

  These events can be used to evaluate a launch or an experiment.
  """
  def put_project_events(%Client{} = client, project, input, options \\ []) do
    url_path = "/events/projects/#{AWS.Util.encode_uri(project)}"
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
      200
    )
  end

  @doc """
  Starts an existing experiment.

  To create an experiment, use
  [CreateExperiment](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateExperiment.html).
  """
  def start_experiment(%Client{} = client, experiment, project, input, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/experiments/#{AWS.Util.encode_uri(experiment)}/start"

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
      200
    )
  end

  @doc """
  Starts an existing launch.

  To create a launch, use
  [CreateLaunch](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateLaunch.html).
  """
  def start_launch(%Client{} = client, launch, project, input, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/launches/#{AWS.Util.encode_uri(launch)}/start"

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
      200
    )
  end

  @doc """
  Stops an experiment that is currently running.

  If you stop an experiment, you can't resume it or restart it.
  """
  def stop_experiment(%Client{} = client, experiment, project, input, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/experiments/#{AWS.Util.encode_uri(experiment)}/cancel"

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
      200
    )
  end

  @doc """
  Stops a launch that is currently running.

  After you stop a launch, you will not be able to resume it or restart it. Also,
  it will not be evaluated as a rule for traffic allocation, and the traffic that
  was allocated to the launch will instead be available to the feature's
  experiment, if there is one. Otherwise, all traffic will be served the default
  variation after the launch is stopped.
  """
  def stop_launch(%Client{} = client, launch, project, input, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/launches/#{AWS.Util.encode_uri(launch)}/cancel"

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
      200
    )
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified CloudWatch Evidently
  resource.

  Projects, features, launches, and experiments can be tagged.

  Tags can help you organize and categorize your resources. You can also use them
  to scope user permissions by granting a user permission to access or change only
  resources with certain tag values.

  Tags don't have any semantic meaning to Amazon Web Services and are interpreted
  strictly as strings of characters.

  You can use the `TagResource` action with a resource that already has tags. If
  you specify a new tag key for the resource, this tag is appended to the list of
  tags associated with the alarm. If you specify a tag key that is already
  associated with the resource, the new tag value that you specify replaces the
  previous value for that tag.

  You can associate as many as 50 tags with a resource.

  For more information, see [Tagging Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).
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

    Request.request_rest(
      client,
      metadata(),
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
  Updates an Evidently experiment.

  Don't use this operation to update an experiment's tag. Instead, use
  [TagResource](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html).
  """
  def update_experiment(%Client{} = client, experiment, project, input, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/experiments/#{AWS.Util.encode_uri(experiment)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Updates an existing feature.

  You can't use this operation to update the tags of an existing feature. Instead,
  use
  [TagResource](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html).
  """
  def update_feature(%Client{} = client, feature, project, input, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project)}/features/#{AWS.Util.encode_uri(feature)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Updates a launch of a given feature.

  Don't use this operation to update the tags of an existing launch. Instead, use
  [TagResource](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html).
  """
  def update_launch(%Client{} = client, launch, project, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/launches/#{AWS.Util.encode_uri(launch)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Updates the description of an existing project.

  To create a new project, use
  [CreateProject](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateProject.html).  Don't use this operation to update the data storage options of a project.
  Instead, use
  [UpdateProjectDataDelivery](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateProjectDataDelivery.html).

  Don't use this operation to update the tags of a project. Instead, use
  [TagResource](https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html).
  """
  def update_project(%Client{} = client, project, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Updates the data storage options for this project.

  If you store evaluation events, you an keep them and analyze them on your own.
  If you choose not to store evaluation events, Evidently deletes them after using
  them to produce metrics and other experiment results that you can view.

  You can't specify both `cloudWatchLogs` and `s3Destination` in the same
  operation.
  """
  def update_project_data_delivery(%Client{} = client, project, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project)}/data-delivery"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
