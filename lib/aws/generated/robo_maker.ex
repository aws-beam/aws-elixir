# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RoboMaker do
  @moduledoc """
  This section provides documentation for the AWS RoboMaker API operations.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-06-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "robomaker",
      global?: false,
      protocol: "rest-json",
      service_id: "RoboMaker",
      signature_version: "v4",
      signing_name: "robomaker",
      target_prefix: nil
    }
  end

  @doc """
  Deletes one or more worlds in a batch operation.
  """
  def batch_delete_worlds(%Client{} = client, input, options \\ []) do
    url_path = "/batchDeleteWorlds"
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
  Describes one or more simulation jobs.
  """
  def batch_describe_simulation_job(%Client{} = client, input, options \\ []) do
    url_path = "/batchDescribeSimulationJob"
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
  Cancels the specified deployment job.
  """
  def cancel_deployment_job(%Client{} = client, input, options \\ []) do
    url_path = "/cancelDeploymentJob"
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
  Cancels the specified simulation job.
  """
  def cancel_simulation_job(%Client{} = client, input, options \\ []) do
    url_path = "/cancelSimulationJob"
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
  Cancels a simulation job batch.

  When you cancel a simulation job batch, you are also cancelling all of the
  active simulation jobs created as part of the batch.
  """
  def cancel_simulation_job_batch(%Client{} = client, input, options \\ []) do
    url_path = "/cancelSimulationJobBatch"
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
  Cancels the specified export job.
  """
  def cancel_world_export_job(%Client{} = client, input, options \\ []) do
    url_path = "/cancelWorldExportJob"
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
  Cancels the specified world generator job.
  """
  def cancel_world_generation_job(%Client{} = client, input, options \\ []) do
    url_path = "/cancelWorldGenerationJob"
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
  Deploys a specific version of a robot application to robots in a fleet.

  The robot application must have a numbered `applicationVersion` for consistency
  reasons. To create a new version, use `CreateRobotApplicationVersion` or see
  [Creating a Robot Application Version](https://docs.aws.amazon.com/robomaker/latest/dg/create-robot-application-version.html).

  After 90 days, deployment jobs expire and will be deleted. They will no longer
  be accessible.
  """
  def create_deployment_job(%Client{} = client, input, options \\ []) do
    url_path = "/createDeploymentJob"
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
  Creates a fleet, a logical group of robots running the same robot application.
  """
  def create_fleet(%Client{} = client, input, options \\ []) do
    url_path = "/createFleet"
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
  Creates a robot.
  """
  def create_robot(%Client{} = client, input, options \\ []) do
    url_path = "/createRobot"
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
  Creates a robot application.
  """
  def create_robot_application(%Client{} = client, input, options \\ []) do
    url_path = "/createRobotApplication"
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
  Creates a version of a robot application.
  """
  def create_robot_application_version(%Client{} = client, input, options \\ []) do
    url_path = "/createRobotApplicationVersion"
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
  Creates a simulation application.
  """
  def create_simulation_application(%Client{} = client, input, options \\ []) do
    url_path = "/createSimulationApplication"
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
  Creates a simulation application with a specific revision id.
  """
  def create_simulation_application_version(%Client{} = client, input, options \\ []) do
    url_path = "/createSimulationApplicationVersion"
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
  Creates a simulation job.

  After 90 days, simulation jobs expire and will be deleted. They will no longer
  be accessible.
  """
  def create_simulation_job(%Client{} = client, input, options \\ []) do
    url_path = "/createSimulationJob"
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
  Creates a world export job.
  """
  def create_world_export_job(%Client{} = client, input, options \\ []) do
    url_path = "/createWorldExportJob"
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
  Creates worlds using the specified template.
  """
  def create_world_generation_job(%Client{} = client, input, options \\ []) do
    url_path = "/createWorldGenerationJob"
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
  Creates a world template.
  """
  def create_world_template(%Client{} = client, input, options \\ []) do
    url_path = "/createWorldTemplate"
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
  Deletes a fleet.
  """
  def delete_fleet(%Client{} = client, input, options \\ []) do
    url_path = "/deleteFleet"
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
  Deletes a robot.
  """
  def delete_robot(%Client{} = client, input, options \\ []) do
    url_path = "/deleteRobot"
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
  Deletes a robot application.
  """
  def delete_robot_application(%Client{} = client, input, options \\ []) do
    url_path = "/deleteRobotApplication"
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
  Deletes a simulation application.
  """
  def delete_simulation_application(%Client{} = client, input, options \\ []) do
    url_path = "/deleteSimulationApplication"
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
  Deletes a world template.
  """
  def delete_world_template(%Client{} = client, input, options \\ []) do
    url_path = "/deleteWorldTemplate"
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
  Deregisters a robot.
  """
  def deregister_robot(%Client{} = client, input, options \\ []) do
    url_path = "/deregisterRobot"
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
  Describes a deployment job.
  """
  def describe_deployment_job(%Client{} = client, input, options \\ []) do
    url_path = "/describeDeploymentJob"
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
  Describes a fleet.
  """
  def describe_fleet(%Client{} = client, input, options \\ []) do
    url_path = "/describeFleet"
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
  Describes a robot.
  """
  def describe_robot(%Client{} = client, input, options \\ []) do
    url_path = "/describeRobot"
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
  Describes a robot application.
  """
  def describe_robot_application(%Client{} = client, input, options \\ []) do
    url_path = "/describeRobotApplication"
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
  Describes a simulation application.
  """
  def describe_simulation_application(%Client{} = client, input, options \\ []) do
    url_path = "/describeSimulationApplication"
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
  Describes a simulation job.
  """
  def describe_simulation_job(%Client{} = client, input, options \\ []) do
    url_path = "/describeSimulationJob"
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
  Describes a simulation job batch.
  """
  def describe_simulation_job_batch(%Client{} = client, input, options \\ []) do
    url_path = "/describeSimulationJobBatch"
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
  Describes a world.
  """
  def describe_world(%Client{} = client, input, options \\ []) do
    url_path = "/describeWorld"
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
  Describes a world export job.
  """
  def describe_world_export_job(%Client{} = client, input, options \\ []) do
    url_path = "/describeWorldExportJob"
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
  Describes a world generation job.
  """
  def describe_world_generation_job(%Client{} = client, input, options \\ []) do
    url_path = "/describeWorldGenerationJob"
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
  Describes a world template.
  """
  def describe_world_template(%Client{} = client, input, options \\ []) do
    url_path = "/describeWorldTemplate"
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
  Gets the world template body.
  """
  def get_world_template_body(%Client{} = client, input, options \\ []) do
    url_path = "/getWorldTemplateBody"
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
  Returns a list of deployment jobs for a fleet.

  You can optionally provide filters to retrieve specific deployment jobs.
  """
  def list_deployment_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/listDeploymentJobs"
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
  Returns a list of fleets.

  You can optionally provide filters to retrieve specific fleets.
  """
  def list_fleets(%Client{} = client, input, options \\ []) do
    url_path = "/listFleets"
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
  Returns a list of robot application.

  You can optionally provide filters to retrieve specific robot applications.
  """
  def list_robot_applications(%Client{} = client, input, options \\ []) do
    url_path = "/listRobotApplications"
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
  Returns a list of robots.

  You can optionally provide filters to retrieve specific robots.
  """
  def list_robots(%Client{} = client, input, options \\ []) do
    url_path = "/listRobots"
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
  Returns a list of simulation applications.

  You can optionally provide filters to retrieve specific simulation applications.
  """
  def list_simulation_applications(%Client{} = client, input, options \\ []) do
    url_path = "/listSimulationApplications"
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
  Returns a list simulation job batches.

  You can optionally provide filters to retrieve specific simulation batch jobs.
  """
  def list_simulation_job_batches(%Client{} = client, input, options \\ []) do
    url_path = "/listSimulationJobBatches"
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
  Returns a list of simulation jobs.

  You can optionally provide filters to retrieve specific simulation jobs.
  """
  def list_simulation_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/listSimulationJobs"
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
  Lists all tags on a AWS RoboMaker resource.
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
  Lists world export jobs.
  """
  def list_world_export_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/listWorldExportJobs"
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
  Lists world generator jobs.
  """
  def list_world_generation_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/listWorldGenerationJobs"
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
  Lists world templates.
  """
  def list_world_templates(%Client{} = client, input, options \\ []) do
    url_path = "/listWorldTemplates"
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
  Lists worlds.
  """
  def list_worlds(%Client{} = client, input, options \\ []) do
    url_path = "/listWorlds"
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
  Registers a robot with a fleet.
  """
  def register_robot(%Client{} = client, input, options \\ []) do
    url_path = "/registerRobot"
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
  Restarts a running simulation job.
  """
  def restart_simulation_job(%Client{} = client, input, options \\ []) do
    url_path = "/restartSimulationJob"
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
  Starts a new simulation job batch.

  The batch is defined using one or more `SimulationJobRequest` objects.
  """
  def start_simulation_job_batch(%Client{} = client, input, options \\ []) do
    url_path = "/startSimulationJobBatch"
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
  Syncrhonizes robots in a fleet to the latest deployment.

  This is helpful if robots were added after a deployment.
  """
  def sync_deployment_job(%Client{} = client, input, options \\ []) do
    url_path = "/syncDeploymentJob"
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
  Adds or edits tags for a AWS RoboMaker resource.

  Each tag consists of a tag key and a tag value. Tag keys and tag values are both
  required, but tag values can be empty strings.

  For information about the rules that apply to tag keys and tag values, see
  [User-Defined Tag Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
  in the *AWS Billing and Cost Management User Guide*.
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
  Removes the specified tags from the specified AWS RoboMaker resource.

  To remove a tag, specify the tag key. To change the tag value of an existing tag
  key, use [ `TagResource`
  ](https://docs.aws.amazon.com/robomaker/latest/dg/API_TagResource.html).
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
      nil
    )
  end

  @doc """
  Updates a robot application.
  """
  def update_robot_application(%Client{} = client, input, options \\ []) do
    url_path = "/updateRobotApplication"
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
  Updates a simulation application.
  """
  def update_simulation_application(%Client{} = client, input, options \\ []) do
    url_path = "/updateSimulationApplication"
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
  Updates a world template.
  """
  def update_world_template(%Client{} = client, input, options \\ []) do
    url_path = "/updateWorldTemplate"
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
end