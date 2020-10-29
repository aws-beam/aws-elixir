# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Datapipeline do
  @moduledoc """
  AWS Data Pipeline configures and manages a data-driven workflow called a
  pipeline. AWS Data Pipeline handles the details of scheduling and ensuring
  that data dependencies are met so that your application can focus on
  processing the data.

  AWS Data Pipeline provides a JAR implementation of a task runner called AWS
  Data Pipeline Task Runner. AWS Data Pipeline Task Runner provides logic for
  common data management scenarios, such as performing database queries and
  running data analysis using Amazon Elastic MapReduce (Amazon EMR). You can
  use AWS Data Pipeline Task Runner as your task runner, or you can write
  your own task runner to provide custom data management.

  AWS Data Pipeline implements two main sets of functionality. Use the first
  set to create a pipeline and define data sources, schedules, dependencies,
  and the transforms to be performed on the data. Use the second set in your
  task runner application to receive the next task ready for processing. The
  logic for performing the task, such as querying the data, running data
  analysis, or converting the data from one format to another, is contained
  within the task runner. The task runner performs the task assigned to it by
  the web service, reporting progress to the web service as it does so. When
  the task is done, the task runner reports the final success or failure of
  the task to the web service.
  """

  @doc """
  Validates the specified pipeline and starts processing pipeline tasks. If
  the pipeline does not pass validation, activation fails.

  If you need to pause the pipeline to investigate an issue with a component,
  such as a data source or script, call `DeactivatePipeline`.

  To activate a finished pipeline, modify the end date for the pipeline and
  then activate it.
  """
  def activate_pipeline(client, input, options \\ []) do
    request(client, "ActivatePipeline", input, options)
  end

  @doc """
  Adds or modifies tags for the specified pipeline.
  """
  def add_tags(client, input, options \\ []) do
    request(client, "AddTags", input, options)
  end

  @doc """
  Creates a new, empty pipeline. Use `PutPipelineDefinition` to populate the
  pipeline.
  """
  def create_pipeline(client, input, options \\ []) do
    request(client, "CreatePipeline", input, options)
  end

  @doc """
  Deactivates the specified running pipeline. The pipeline is set to the
  `DEACTIVATING` state until the deactivation process completes.

  To resume a deactivated pipeline, use `ActivatePipeline`. By default, the
  pipeline resumes from the last completed execution. Optionally, you can
  specify the date and time to resume the pipeline.
  """
  def deactivate_pipeline(client, input, options \\ []) do
    request(client, "DeactivatePipeline", input, options)
  end

  @doc """
  Deletes a pipeline, its pipeline definition, and its run history. AWS Data
  Pipeline attempts to cancel instances associated with the pipeline that are
  currently being processed by task runners.

  Deleting a pipeline cannot be undone. You cannot query or restore a deleted
  pipeline. To temporarily pause a pipeline instead of deleting it, call
  `SetStatus` with the status set to `PAUSE` on individual components.
  Components that are paused by `SetStatus` can be resumed.
  """
  def delete_pipeline(client, input, options \\ []) do
    request(client, "DeletePipeline", input, options)
  end

  @doc """
  Gets the object definitions for a set of objects associated with the
  pipeline. Object definitions are composed of a set of fields that define
  the properties of the object.
  """
  def describe_objects(client, input, options \\ []) do
    request(client, "DescribeObjects", input, options)
  end

  @doc """
  Retrieves metadata about one or more pipelines. The information retrieved
  includes the name of the pipeline, the pipeline identifier, its current
  state, and the user account that owns the pipeline. Using account
  credentials, you can retrieve metadata about pipelines that you or your IAM
  users have created. If you are using an IAM user account, you can retrieve
  metadata about only those pipelines for which you have read permissions.

  To retrieve the full pipeline definition instead of metadata about the
  pipeline, call `GetPipelineDefinition`.
  """
  def describe_pipelines(client, input, options \\ []) do
    request(client, "DescribePipelines", input, options)
  end

  @doc """
  Task runners call `EvaluateExpression` to evaluate a string in the context
  of the specified object. For example, a task runner can evaluate SQL
  queries stored in Amazon S3.
  """
  def evaluate_expression(client, input, options \\ []) do
    request(client, "EvaluateExpression", input, options)
  end

  @doc """
  Gets the definition of the specified pipeline. You can call
  `GetPipelineDefinition` to retrieve the pipeline definition that you
  provided using `PutPipelineDefinition`.
  """
  def get_pipeline_definition(client, input, options \\ []) do
    request(client, "GetPipelineDefinition", input, options)
  end

  @doc """
  Lists the pipeline identifiers for all active pipelines that you have
  permission to access.
  """
  def list_pipelines(client, input, options \\ []) do
    request(client, "ListPipelines", input, options)
  end

  @doc """
  Task runners call `PollForTask` to receive a task to perform from AWS Data
  Pipeline. The task runner specifies which tasks it can perform by setting a
  value for the `workerGroup` parameter. The task returned can come from any
  of the pipelines that match the `workerGroup` value passed in by the task
  runner and that was launched using the IAM user credentials specified by
  the task runner.

  If tasks are ready in the work queue, `PollForTask` returns a response
  immediately. If no tasks are available in the queue, `PollForTask` uses
  long-polling and holds on to a poll connection for up to a 90 seconds,
  during which time the first newly scheduled task is handed to the task
  runner. To accomodate this, set the socket timeout in your task runner to
  90 seconds. The task runner should not call `PollForTask` again on the same
  `workerGroup` until it receives a response, and this can take up to 90
  seconds.
  """
  def poll_for_task(client, input, options \\ []) do
    request(client, "PollForTask", input, options)
  end

  @doc """
  Adds tasks, schedules, and preconditions to the specified pipeline. You can
  use `PutPipelineDefinition` to populate a new pipeline.

  `PutPipelineDefinition` also validates the configuration as it adds it to
  the pipeline. Changes to the pipeline are saved unless one of the following
  three validation errors exists in the pipeline.

  <ol> <li>An object is missing a name or identifier field.</li> <li>A string
  or reference field is empty.</li> <li>The number of objects in the pipeline
  exceeds the maximum allowed objects.</li> <li>The pipeline is in a FINISHED
  state.</li> </ol> Pipeline object definitions are passed to the
  `PutPipelineDefinition` action and returned by the `GetPipelineDefinition`
  action.
  """
  def put_pipeline_definition(client, input, options \\ []) do
    request(client, "PutPipelineDefinition", input, options)
  end

  @doc """
  Queries the specified pipeline for the names of objects that match the
  specified set of conditions.
  """
  def query_objects(client, input, options \\ []) do
    request(client, "QueryObjects", input, options)
  end

  @doc """
  Removes existing tags from the specified pipeline.
  """
  def remove_tags(client, input, options \\ []) do
    request(client, "RemoveTags", input, options)
  end

  @doc """
  Task runners call `ReportTaskProgress` when assigned a task to acknowledge
  that it has the task. If the web service does not receive this
  acknowledgement within 2 minutes, it assigns the task in a subsequent
  `PollForTask` call. After this initial acknowledgement, the task runner
  only needs to report progress every 15 minutes to maintain its ownership of
  the task. You can change this reporting time from 15 minutes by specifying
  a `reportProgressTimeout` field in your pipeline.

  If a task runner does not report its status after 5 minutes, AWS Data
  Pipeline assumes that the task runner is unable to process the task and
  reassigns the task in a subsequent response to `PollForTask`. Task runners
  should call `ReportTaskProgress` every 60 seconds.
  """
  def report_task_progress(client, input, options \\ []) do
    request(client, "ReportTaskProgress", input, options)
  end

  @doc """
  Task runners call `ReportTaskRunnerHeartbeat` every 15 minutes to indicate
  that they are operational. If the AWS Data Pipeline Task Runner is launched
  on a resource managed by AWS Data Pipeline, the web service can use this
  call to detect when the task runner application has failed and restart a
  new instance.
  """
  def report_task_runner_heartbeat(client, input, options \\ []) do
    request(client, "ReportTaskRunnerHeartbeat", input, options)
  end

  @doc """
  Requests that the status of the specified physical or logical pipeline
  objects be updated in the specified pipeline. This update might not occur
  immediately, but is eventually consistent. The status that can be set
  depends on the type of object (for example, DataNode or Activity). You
  cannot perform this operation on `FINISHED` pipelines and attempting to do
  so returns `InvalidRequestException`.
  """
  def set_status(client, input, options \\ []) do
    request(client, "SetStatus", input, options)
  end

  @doc """
  Task runners call `SetTaskStatus` to notify AWS Data Pipeline that a task
  is completed and provide information about the final status. A task runner
  makes this call regardless of whether the task was sucessful. A task runner
  does not need to call `SetTaskStatus` for tasks that are canceled by the
  web service during a call to `ReportTaskProgress`.
  """
  def set_task_status(client, input, options \\ []) do
    request(client, "SetTaskStatus", input, options)
  end

  @doc """
  Validates the specified pipeline definition to ensure that it is well
  formed and can be run without error.
  """
  def validate_pipeline_definition(client, input, options \\ []) do
    request(client, "ValidatePipelineDefinition", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "datapipeline"}
    host = build_host("datapipeline", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "DataPipeline.#{action}"}
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

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

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
