# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.DataPipeline do
  @moduledoc """
  AWS Data Pipeline is a web service that configures and manages a
  data-driven workflow called a pipeline. AWS Data Pipeline handles the
  details of scheduling and ensuring that data dependencies are met so your
  application can focus on processing the data.

  The AWS Data Pipeline SDKs and CLI implements two main sets of
  functionality. The first set of actions configure the pipeline in the web
  service. You perform these actions to create a pipeline and define data
  sources, schedules, dependencies, and the transforms to be performed on the
  data.

  The second set of actions are used by a task runner application that calls
  the AWS Data Pipeline service to receive the next task ready for
  processing. The logic for performing the task, such as querying the data,
  running data analysis, or converting the data from one format to another,
  is contained within the task runner. The task runner performs the task
  assigned to it by the web service, reporting progress to the web service as
  it does so. When the task is done, the task runner reports the final
  success or failure of the task to the web service.

  AWS Data Pipeline provides a JAR implementation of a task runner called AWS
  Data Pipeline Task Runner. AWS Data Pipeline Task Runner provides logic for
  common data management scenarios, such as performing database queries and
  running data analysis using Amazon Elastic MapReduce (Amazon EMR). You can
  use AWS Data Pipeline Task Runner as your task runner, or you can write
  your own task runner to provide custom data management.
  """

  @doc """
  Validates a pipeline and initiates processing. If the pipeline does not
  pass validation, activation fails. You cannot perform this operation on
  FINISHED pipelines and attempting to do so will return an
  InvalidRequestException.

  Call this action to start processing pipeline tasks of a pipeline you've
  created using the `CreatePipeline` and `PutPipelineDefinition` actions. A
  pipeline cannot be modified after it has been successfully activated.
  """
  def activate_pipeline(client, input, options \\ []) do
    request(client, "ActivatePipeline", input, options)
  end

  @doc """
  Add or modify tags in an existing pipeline.
  """
  def add_tags(client, input, options \\ []) do
    request(client, "AddTags", input, options)
  end

  @doc """
  Creates a new empty pipeline. When this action succeeds, you can then use
  the `PutPipelineDefinition` action to populate the pipeline.
  """
  def create_pipeline(client, input, options \\ []) do
    request(client, "CreatePipeline", input, options)
  end

  @doc """
  Permanently deletes a pipeline, its pipeline definition and its run
  history. You cannot query or restore a deleted pipeline. AWS Data Pipeline
  will attempt to cancel instances associated with the pipeline that are
  currently being processed by task runners. Deleting a pipeline cannot be
  undone.

  To temporarily pause a pipeline instead of deleting it, call `SetStatus`
  with the status set to Pause on individual components. Components that are
  paused by `SetStatus` can be resumed.
  """
  def delete_pipeline(client, input, options \\ []) do
    request(client, "DeletePipeline", input, options)
  end

  @doc """
  Returns the object definitions for a set of objects associated with the
  pipeline. Object definitions are composed of a set of fields that define
  the properties of the object.
  """
  def describe_objects(client, input, options \\ []) do
    request(client, "DescribeObjects", input, options)
  end

  @doc """
  Retrieve metadata about one or more pipelines. The information retrieved
  includes the name of the pipeline, the pipeline identifier, its current
  state, and the user account that owns the pipeline. Using account
  credentials, you can retrieve metadata about pipelines that you or your IAM
  users have created. If you are using an IAM user account, you can retrieve
  metadata about only those pipelines you have read permission for.

  To retrieve the full pipeline definition instead of metadata about the
  pipeline, call the `GetPipelineDefinition` action.
  """
  def describe_pipelines(client, input, options \\ []) do
    request(client, "DescribePipelines", input, options)
  end

  @doc """
  Evaluates a string in the context of a specified object. A task runner can
  use this action to evaluate SQL queries stored in Amazon S3.
  """
  def evaluate_expression(client, input, options \\ []) do
    request(client, "EvaluateExpression", input, options)
  end

  @doc """
  Returns the definition of the specified pipeline. You can call
  `GetPipelineDefinition` to retrieve the pipeline definition you provided
  using `PutPipelineDefinition`.
  """
  def get_pipeline_definition(client, input, options \\ []) do
    request(client, "GetPipelineDefinition", input, options)
  end

  @doc """
  Returns a list of pipeline identifiers for all active pipelines.
  Identifiers are returned only for pipelines you have permission to access.
  """
  def list_pipelines(client, input, options \\ []) do
    request(client, "ListPipelines", input, options)
  end

  @doc """
  Task runners call this action to receive a task to perform from AWS Data
  Pipeline. The task runner specifies which tasks it can perform by setting a
  value for the workerGroup parameter of the `PollForTask` call. The task
  returned by `PollForTask` may come from any of the pipelines that match the
  workerGroup value passed in by the task runner and that was launched using
  the IAM user credentials specified by the task runner.

  If tasks are ready in the work queue, `PollForTask` returns a response
  immediately. If no tasks are available in the queue, `PollForTask` uses
  long-polling and holds on to a poll connection for up to a 90 seconds
  during which time the first newly scheduled task is handed to the task
  runner. To accomodate this, set the socket timeout in your task runner to
  90 seconds. The task runner should not call `PollForTask` again on the same
  `workerGroup` until it receives a response, and this may take up to 90
  seconds.
  """
  def poll_for_task(client, input, options \\ []) do
    request(client, "PollForTask", input, options)
  end

  @doc """
  Adds tasks, schedules, and preconditions that control the behavior of the
  pipeline. You can use PutPipelineDefinition to populate a new pipeline.

  `PutPipelineDefinition` also validates the configuration as it adds it to
  the pipeline. Changes to the pipeline are saved unless one of the following
  three validation errors exists in the pipeline. <ol> * An object is missing
  a name or identifier field. * A string or reference field is empty. * The
  number of objects in the pipeline exceeds the maximum allowed objects. *
  The pipeline is in a FINISHED state. </ol>

  Pipeline object definitions are passed to the `PutPipelineDefinition`
  action and returned by the `GetPipelineDefinition` action.
  """
  def put_pipeline_definition(client, input, options \\ []) do
    request(client, "PutPipelineDefinition", input, options)
  end

  @doc """
  Queries a pipeline for the names of objects that match a specified set of
  conditions.

  The objects returned by `QueryObjects` are paginated and then filtered by
  the value you set for query. This means the action may return an empty
  result set with a value set for marker. If `HasMoreResults` is set to
  `True`, you should continue to call `QueryObjects`, passing in the returned
  value for marker, until `HasMoreResults` returns `False`.
  """
  def query_objects(client, input, options \\ []) do
    request(client, "QueryObjects", input, options)
  end

  @doc """
  Remove existing tags from a pipeline.
  """
  def remove_tags(client, input, options \\ []) do
    request(client, "RemoveTags", input, options)
  end

  @doc """
  Updates the AWS Data Pipeline service on the progress of the calling task
  runner. When the task runner is assigned a task, it should call
  ReportTaskProgress to acknowledge that it has the task within 2 minutes. If
  the web service does not recieve this acknowledgement within the 2 minute
  window, it will assign the task in a subsequent `PollForTask` call. After
  this initial acknowledgement, the task runner only needs to report progress
  every 15 minutes to maintain its ownership of the task. You can change this
  reporting time from 15 minutes by specifying a `reportProgressTimeout`
  field in your pipeline. If a task runner does not report its status after 5
  minutes, AWS Data Pipeline will assume that the task runner is unable to
  process the task and will reassign the task in a subsequent response to
  `PollForTask`. task runners should call `ReportTaskProgress` every 60
  seconds.
  """
  def report_task_progress(client, input, options \\ []) do
    request(client, "ReportTaskProgress", input, options)
  end

  @doc """
  Task runners call `ReportTaskRunnerHeartbeat` every 15 minutes to indicate
  that they are operational. In the case of AWS Data Pipeline Task Runner
  launched on a resource managed by AWS Data Pipeline, the web service can
  use this call to detect when the task runner application has failed and
  restart a new instance.
  """
  def report_task_runner_heartbeat(client, input, options \\ []) do
    request(client, "ReportTaskRunnerHeartbeat", input, options)
  end

  @doc """
  Requests that the status of an array of physical or logical pipeline
  objects be updated in the pipeline. This update may not occur immediately,
  but is eventually consistent. The status that can be set depends on the
  type of object, e.g. DataNode or Activity. You cannot perform this
  operation on FINISHED pipelines and attempting to do so will return an
  InvalidRequestException.
  """
  def set_status(client, input, options \\ []) do
    request(client, "SetStatus", input, options)
  end

  @doc """
  Notifies AWS Data Pipeline that a task is completed and provides
  information about the final status. The task runner calls this action
  regardless of whether the task was sucessful. The task runner does not need
  to call `SetTaskStatus` for tasks that are canceled by the web service
  during a call to `ReportTaskProgress`.
  """
  def set_task_status(client, input, options \\ []) do
    request(client, "SetTaskStatus", input, options)
  end

  @doc """
  Tests the pipeline definition with a set of validation checks to ensure
  that it is well formed and can run without error.
  """
  def validate_pipeline_definition(client, input, options \\ []) do
    request(client, "ValidatePipelineDefinition", input, options)
  end

  defp request(client, action, input, options) do
    client = %{client | service: "datapipeline"}
    host = "datapipeline.#{client.region}.#{client.endpoint}"
    url = "https://#{host}/"
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "DataPipeline.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["__type"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end
end

