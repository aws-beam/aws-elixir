# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataPipeline do
  @moduledoc """
  AWS Data Pipeline configures and manages a data-driven workflow called a
  pipeline.

  AWS Data Pipeline
  handles the details of scheduling and ensuring that data dependencies are met so
  that your application
  can focus on processing the data.

  AWS Data Pipeline provides a JAR implementation of a task runner called AWS Data
  Pipeline Task Runner.
  AWS Data Pipeline Task Runner provides logic for common data management
  scenarios, such as performing
  database queries and running data analysis using Amazon Elastic MapReduce
  (Amazon EMR). You can use
  AWS Data Pipeline Task Runner as your task runner, or you can write your own
  task runner to provide
  custom data management.

  AWS Data Pipeline implements two main sets of functionality. Use the first set
  to create a pipeline
  and define data sources, schedules, dependencies, and the transforms to be
  performed on the data.
  Use the second set in your task runner application to receive the next task
  ready for processing.
  The logic for performing the task, such as querying the data, running data
  analysis, or converting
  the data from one format to another, is contained within the task runner. The
  task runner performs
  the task assigned to it by the web service, reporting progress to the web
  service as it does so.
  When the task is done, the task runner reports the final success or failure of
  the task to the web service.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  set_status_input() :: %{
    required("objectIds") => list(String.t()()),
    required("pipelineId") => String.t(),
    required("status") => String.t()
  }
  """
  @type set_status_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deactivate_pipeline_input() :: %{
    optional("cancelActive") => boolean(),
    required("pipelineId") => String.t()
  }
  """
  @type deactivate_pipeline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  query_objects_input() :: %{
    optional("limit") => integer(),
    optional("marker") => String.t(),
    optional("query") => query(),
    required("pipelineId") => String.t(),
    required("sphere") => String.t()
  }
  """
  @type query_objects_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  pipeline_deleted_exception() :: %{
    "message" => String.t()
  }
  """
  @type pipeline_deleted_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_pipeline_output() :: %{
    "pipelineId" => String.t()
  }
  """
  @type create_pipeline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validate_pipeline_definition_output() :: %{
    "errored" => boolean(),
    "validationErrors" => list(validation_error()()),
    "validationWarnings" => list(validation_warning()())
  }
  """
  @type validate_pipeline_definition_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  pipeline_object() :: %{
    "fields" => list(field()()),
    "id" => String.t(),
    "name" => String.t()
  }
  """
  @type pipeline_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  evaluate_expression_input() :: %{
    required("expression") => String.t(),
    required("objectId") => String.t(),
    required("pipelineId") => String.t()
  }
  """
  @type evaluate_expression_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validate_pipeline_definition_input() :: %{
    optional("parameterObjects") => list(parameter_object()()),
    optional("parameterValues") => list(parameter_value()()),
    required("pipelineId") => String.t(),
    required("pipelineObjects") => list(pipeline_object()())
  }
  """
  @type validate_pipeline_definition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  poll_for_task_input() :: %{
    optional("hostname") => String.t(),
    optional("instanceIdentity") => instance_identity(),
    required("workerGroup") => String.t()
  }
  """
  @type poll_for_task_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_tags_output() :: %{

  }
  """
  @type add_tags_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  selector() :: %{
    "fieldName" => String.t(),
    "operator" => operator()
  }
  """
  @type selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  report_task_progress_output() :: %{
    "canceled" => boolean()
  }
  """
  @type report_task_progress_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  set_task_status_input() :: %{
    optional("errorId") => String.t(),
    optional("errorMessage") => String.t(),
    optional("errorStackTrace") => String.t(),
    required("taskId") => String.t(),
    required("taskStatus") => list(any())
  }
  """
  @type set_task_status_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_tags_input() :: %{
    required("pipelineId") => String.t(),
    required("tags") => list(tag()())
  }
  """
  @type add_tags_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_pipeline_definition_output() :: %{
    "parameterObjects" => list(parameter_object()()),
    "parameterValues" => list(parameter_value()()),
    "pipelineObjects" => list(pipeline_object()())
  }
  """
  @type get_pipeline_definition_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_pipelines_input() :: %{
    required("pipelineIds") => list(String.t()())
  }
  """
  @type describe_pipelines_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remove_tags_output() :: %{

  }
  """
  @type remove_tags_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  operator() :: %{
    "type" => list(any()),
    "values" => list(String.t()())
  }
  """
  @type operator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_pipeline_input() :: %{
    required("pipelineId") => String.t()
  }
  """
  @type delete_pipeline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  parameter_value() :: %{
    "id" => String.t(),
    "stringValue" => String.t()
  }
  """
  @type parameter_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_pipeline_input() :: %{
    optional("description") => String.t(),
    optional("tags") => list(tag()()),
    required("name") => String.t(),
    required("uniqueId") => String.t()
  }
  """
  @type create_pipeline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  set_task_status_output() :: %{

  }
  """
  @type set_task_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag() :: %{
    "key" => String.t(),
    "value" => String.t()
  }
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_request_exception() :: %{
    "message" => String.t()
  }
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_pipelines_input() :: %{
    optional("marker") => String.t()
  }
  """
  @type list_pipelines_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  report_task_runner_heartbeat_output() :: %{
    "terminate" => boolean()
  }
  """
  @type report_task_runner_heartbeat_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_pipelines_output() :: %{
    "pipelineDescriptionList" => list(pipeline_description()())
  }
  """
  @type describe_pipelines_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  field() :: %{
    "key" => String.t(),
    "refValue" => String.t(),
    "stringValue" => String.t()
  }
  """
  @type field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_error() :: %{
    "errors" => list(String.t()()),
    "id" => String.t()
  }
  """
  @type validation_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  report_task_runner_heartbeat_input() :: %{
    optional("hostname") => String.t(),
    optional("workerGroup") => String.t(),
    required("taskrunnerId") => String.t()
  }
  """
  @type report_task_runner_heartbeat_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  evaluate_expression_output() :: %{
    "evaluatedExpression" => String.t()
  }
  """
  @type evaluate_expression_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  task_object() :: %{
    "attemptId" => String.t(),
    "objects" => map(),
    "pipelineId" => String.t(),
    "taskId" => String.t()
  }
  """
  @type task_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_objects_output() :: %{
    "hasMoreResults" => boolean(),
    "marker" => String.t(),
    "pipelineObjects" => list(pipeline_object()())
  }
  """
  @type describe_objects_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_pipeline_definition_input() :: %{
    optional("version") => String.t(),
    required("pipelineId") => String.t()
  }
  """
  @type get_pipeline_definition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  query_objects_output() :: %{
    "hasMoreResults" => boolean(),
    "ids" => list(String.t()()),
    "marker" => String.t()
  }
  """
  @type query_objects_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_warning() :: %{
    "id" => String.t(),
    "warnings" => list(String.t()())
  }
  """
  @type validation_warning() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  pipeline_description() :: %{
    "description" => String.t(),
    "fields" => list(field()()),
    "name" => String.t(),
    "pipelineId" => String.t(),
    "tags" => list(tag()())
  }
  """
  @type pipeline_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_service_error() :: %{
    "message" => String.t()
  }
  """
  @type internal_service_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deactivate_pipeline_output() :: %{

  }
  """
  @type deactivate_pipeline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  poll_for_task_output() :: %{
    "taskObject" => task_object()
  }
  """
  @type poll_for_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  activate_pipeline_input() :: %{
    optional("parameterValues") => list(parameter_value()()),
    optional("startTimestamp") => non_neg_integer(),
    required("pipelineId") => String.t()
  }
  """
  @type activate_pipeline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  pipeline_not_found_exception() :: %{
    "message" => String.t()
  }
  """
  @type pipeline_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_pipelines_output() :: %{
    "hasMoreResults" => boolean(),
    "marker" => String.t(),
    "pipelineIdList" => list(pipeline_id_name()())
  }
  """
  @type list_pipelines_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  task_not_found_exception() :: %{
    "message" => String.t()
  }
  """
  @type task_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_pipeline_definition_output() :: %{
    "errored" => boolean(),
    "validationErrors" => list(validation_error()()),
    "validationWarnings" => list(validation_warning()())
  }
  """
  @type put_pipeline_definition_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_pipeline_definition_input() :: %{
    optional("parameterObjects") => list(parameter_object()()),
    optional("parameterValues") => list(parameter_value()()),
    required("pipelineId") => String.t(),
    required("pipelineObjects") => list(pipeline_object()())
  }
  """
  @type put_pipeline_definition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  query() :: %{
    "selectors" => list(selector()())
  }
  """
  @type query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remove_tags_input() :: %{
    required("pipelineId") => String.t(),
    required("tagKeys") => list(String.t()())
  }
  """
  @type remove_tags_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_objects_input() :: %{
    optional("evaluateExpressions") => boolean(),
    optional("marker") => String.t(),
    required("objectIds") => list(String.t()()),
    required("pipelineId") => String.t()
  }
  """
  @type describe_objects_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  report_task_progress_input() :: %{
    optional("fields") => list(field()()),
    required("taskId") => String.t()
  }
  """
  @type report_task_progress_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  instance_identity() :: %{
    "document" => String.t(),
    "signature" => String.t()
  }
  """
  @type instance_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  parameter_attribute() :: %{
    "key" => String.t(),
    "stringValue" => String.t()
  }
  """
  @type parameter_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  activate_pipeline_output() :: %{

  }
  """
  @type activate_pipeline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  parameter_object() :: %{
    "attributes" => list(parameter_attribute()()),
    "id" => String.t()
  }
  """
  @type parameter_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  pipeline_id_name() :: %{
    "id" => String.t(),
    "name" => String.t()
  }
  """
  @type pipeline_id_name() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2012-10-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "datapipeline",
      global?: false,
      protocol: "json",
      service_id: "Data Pipeline",
      signature_version: "v4",
      signing_name: "datapipeline",
      target_prefix: "DataPipeline"
    }
  end

  @doc """
  Validates the specified pipeline and starts processing pipeline tasks.

  If the pipeline does not pass validation,
  activation fails.

  If you need to pause the pipeline to investigate an issue with a component, such
  as a data source or script,
  call `DeactivatePipeline`.

  To activate a finished pipeline, modify the end date for the pipeline and then
  activate it.

  <examples>
  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.ActivatePipeline
  Content-Length: 39
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {"pipelineId": "df-06372391ZG65EXAMPLE"}

  </request>
  <response>

  HTTP/1.1 200
  x-amzn-RequestId: ee19d5bf-074e-11e2-af6f-6bc7a6be60d9
  Content-Type: application/x-amz-json-1.1
  Content-Length: 2
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  {}

  </response>
  </examples>
  """
  @spec activate_pipeline(map(), activate_pipeline_input(), list()) ::
          {:ok, activate_pipeline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
          | {:error, pipeline_deleted_exception()}
          | {:error, pipeline_not_found_exception()}
  def activate_pipeline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ActivatePipeline", input, options)
  end

  @doc """
  Adds or modifies tags for the specified pipeline.
  """
  @spec add_tags(map(), add_tags_input(), list()) ::
          {:ok, add_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
          | {:error, pipeline_deleted_exception()}
          | {:error, pipeline_not_found_exception()}
  def add_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddTags", input, options)
  end

  @doc """
  Creates a new, empty pipeline.

  Use `PutPipelineDefinition` to populate the pipeline.

  <examples>
  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.CreatePipeline
  Content-Length: 91
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {"name": "myPipeline",
  "uniqueId": "123456789",
  "description": "This is my first pipeline"}

  </request>

  <response>

  HTTP/1.1 200
  x-amzn-RequestId: b16911ce-0774-11e2-af6f-6bc7a6be60d9
  Content-Type: application/x-amz-json-1.1
  Content-Length: 40
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  {"pipelineId": "df-06372391ZG65EXAMPLE"}

  </response>
  </examples>
  """
  @spec create_pipeline(map(), create_pipeline_input(), list()) ::
          {:ok, create_pipeline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
  def create_pipeline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePipeline", input, options)
  end

  @doc """
  Deactivates the specified running pipeline.

  The pipeline is set to the `DEACTIVATING`
  state until the deactivation process completes.

  To resume a deactivated pipeline, use `ActivatePipeline`. By default, the
  pipeline resumes from the last completed execution.
  Optionally, you can specify the date and time to resume the pipeline.
  """
  @spec deactivate_pipeline(map(), deactivate_pipeline_input(), list()) ::
          {:ok, deactivate_pipeline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
          | {:error, pipeline_deleted_exception()}
          | {:error, pipeline_not_found_exception()}
  def deactivate_pipeline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeactivatePipeline", input, options)
  end

  @doc """
  Deletes a pipeline, its pipeline definition, and its run history.

  AWS Data Pipeline attempts to cancel instances associated with the pipeline that
  are currently being processed by task runners.

  Deleting a pipeline cannot be undone. You cannot query or restore a deleted
  pipeline.
  To temporarily pause a pipeline instead of deleting it, call `SetStatus` with
  the status set to `PAUSE` on individual components.
  Components that are paused by `SetStatus` can be resumed.

  <examples>
  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.DeletePipeline
  Content-Length: 50
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {"pipelineId": "df-06372391ZG65EXAMPLE"}

  </request>

  <response>

  x-amzn-RequestId: b7a88c81-0754-11e2-af6f-6bc7a6be60d9
  Content-Type: application/x-amz-json-1.1
  Content-Length: 0
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  Unexpected response: 200, OK, undefined

  </response>
  </examples>
  """
  @spec delete_pipeline(map(), delete_pipeline_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
          | {:error, pipeline_not_found_exception()}
  def delete_pipeline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePipeline", input, options)
  end

  @doc """
  Gets the object definitions for a set of objects associated with the pipeline.

  Object definitions are composed of
  a set of fields that define the properties of the object.

  <examples>
  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.DescribeObjects
  Content-Length: 98
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {"pipelineId": "df-06372391ZG65EXAMPLE",
  "objectIds":
  ["Schedule"], "evaluateExpressions": true}

  </request>

  <response>

  x-amzn-RequestId: 4c18ea5d-0777-11e2-8a14-21bb8a1f50ef
  Content-Type: application/x-amz-json-1.1
  Content-Length: 1488
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  {"hasMoreResults": false,
  "pipelineObjects":
  [
  {"fields":
  [
  {"key": "startDateTime",
  "stringValue": "2012-12-12T00:00:00"},
  {"key": "parent",
  "refValue": "Default"},
  {"key": "@sphere",
  "stringValue": "COMPONENT"},
  {"key": "type",
  "stringValue": "Schedule"},
  {"key": "period",
  "stringValue": "1 hour"},
  {"key": "endDateTime",
  "stringValue": "2012-12-21T18:00:00"},
  {"key": "@version",
  "stringValue": "1"},
  {"key": "@status",
  "stringValue": "PENDING"},
  {"key": "@pipelineId",
  "stringValue": "df-06372391ZG65EXAMPLE"}
  ],
  "id": "Schedule",
  "name": "Schedule"}
  ]
  }

  </response>
  </examples>
  """
  @spec describe_objects(map(), describe_objects_input(), list()) ::
          {:ok, describe_objects_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
          | {:error, pipeline_deleted_exception()}
          | {:error, pipeline_not_found_exception()}
  def describe_objects(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeObjects", input, options)
  end

  @doc """
  Retrieves metadata about one or more pipelines.

  The information retrieved includes the name of the pipeline, the pipeline
  identifier,
  its current state, and the user account that owns the pipeline. Using account
  credentials, you can retrieve metadata about pipelines
  that you or your IAM users have created. If you are using an IAM user account,
  you can retrieve metadata about only those pipelines
  for which you have read permissions.

  To retrieve the full pipeline definition instead of metadata about the pipeline,
  call `GetPipelineDefinition`.

  <examples>
  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.DescribePipelines
  Content-Length: 70
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {"pipelineIds":
  ["df-08785951KAKJEXAMPLE"] }

  </request>

  <response>

  x-amzn-RequestId: 02870eb7-0736-11e2-af6f-6bc7a6be60d9
  Content-Type: application/x-amz-json-1.1
  Content-Length: 767
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  {"pipelineDescriptionList":
  [
  {"description": "This is my first pipeline",
  "fields":
  [
  {"key": "@pipelineState",
  "stringValue": "SCHEDULED"},
  {"key": "description",
  "stringValue": "This is my first pipeline"},
  {"key": "name",
  "stringValue": "myPipeline"},
  {"key": "@creationTime",
  "stringValue": "2012-12-13T01:24:06"},
  {"key": "@id",
  "stringValue": "df-0937003356ZJEXAMPLE"},
  {"key": "@sphere",
  "stringValue": "PIPELINE"},
  {"key": "@version",
  "stringValue": "1"},
  {"key": "@userId",
  "stringValue": "924374875933"},
  {"key": "@accountId",
  "stringValue": "924374875933"},
  {"key": "uniqueId",
  "stringValue": "1234567890"}
  ],
  "name": "myPipeline",
  "pipelineId": "df-0937003356ZJEXAMPLE"}
  ]
  }
  </response>
  </examples>
  """
  @spec describe_pipelines(map(), describe_pipelines_input(), list()) ::
          {:ok, describe_pipelines_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
          | {:error, pipeline_deleted_exception()}
          | {:error, pipeline_not_found_exception()}
  def describe_pipelines(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePipelines", input, options)
  end

  @doc """
  Task runners call `EvaluateExpression` to evaluate a string in the context of
  the specified object.

  For example, a task runner can evaluate SQL queries stored in Amazon S3.

  <examples>
  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.DescribePipelines
  Content-Length: 164
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {"pipelineId": "df-08785951KAKJEXAMPLE",
  "objectId": "Schedule",
  "expression": "Transform started at startDateTime and finished at
  endDateTime"}

  </request>

  <response>

  x-amzn-RequestId: 02870eb7-0736-11e2-af6f-6bc7a6be60d9
  Content-Type: application/x-amz-json-1.1
  Content-Length: 103
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  {"evaluatedExpression": "Transform started at 2012-12-12T00:00:00 and finished
  at 2012-12-21T18:00:00"}
  </response>
  </examples>
  """
  @spec evaluate_expression(map(), evaluate_expression_input(), list()) ::
          {:ok, evaluate_expression_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
          | {:error, pipeline_deleted_exception()}
          | {:error, pipeline_not_found_exception()}
          | {:error, task_not_found_exception()}
  def evaluate_expression(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EvaluateExpression", input, options)
  end

  @doc """
  Gets the definition of the specified pipeline.

  You can call `GetPipelineDefinition` to retrieve
  the pipeline definition that you provided using `PutPipelineDefinition`.

  <examples>
  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.GetPipelineDefinition
  Content-Length: 40
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {"pipelineId": "df-06372391ZG65EXAMPLE"}

  </request>
  <response>

  x-amzn-RequestId: e28309e5-0776-11e2-8a14-21bb8a1f50ef
  Content-Type: application/x-amz-json-1.1
  Content-Length: 890
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  {"pipelineObjects":
  [
  {"fields":
  [
  {"key": "workerGroup",
  "stringValue": "workerGroup"}
  ],
  "id": "Default",
  "name": "Default"},
  {"fields":
  [
  {"key": "startDateTime",
  "stringValue": "2012-09-25T17:00:00"},
  {"key": "type",
  "stringValue": "Schedule"},
  {"key": "period",
  "stringValue": "1 hour"},
  {"key": "endDateTime",
  "stringValue": "2012-09-25T18:00:00"}
  ],
  "id": "Schedule",
  "name": "Schedule"},
  {"fields":
  [
  {"key": "schedule",
  "refValue": "Schedule"},
  {"key": "command",
  "stringValue": "echo hello"},
  {"key": "parent",
  "refValue": "Default"},
  {"key": "type",
  "stringValue": "ShellCommandActivity"}
  ],
  "id": "SayHello",
  "name": "SayHello"}
  ]
  }

  </response>
  </examples>
  """
  @spec get_pipeline_definition(map(), get_pipeline_definition_input(), list()) ::
          {:ok, get_pipeline_definition_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
          | {:error, pipeline_deleted_exception()}
          | {:error, pipeline_not_found_exception()}
  def get_pipeline_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPipelineDefinition", input, options)
  end

  @doc """
  Lists the pipeline identifiers for all active pipelines that you have permission
  to access.

  <examples>
  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.ListPipelines
  Content-Length: 14
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {}</request>

  <response>

  Status:
  x-amzn-RequestId: b3104dc5-0734-11e2-af6f-6bc7a6be60d9
  Content-Type: application/x-amz-json-1.1
  Content-Length: 39
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  {"PipelineIdList":
  [
  {"id": "df-08785951KAKJEXAMPLE",
  "name": "MyPipeline"},
  {"id": "df-08662578ISYEXAMPLE",
  "name": "MySecondPipeline"}
  ]
  }</response>
  </examples>
  """
  @spec list_pipelines(map(), list_pipelines_input(), list()) ::
          {:ok, list_pipelines_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
  def list_pipelines(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPipelines", input, options)
  end

  @doc """
  Task runners call `PollForTask` to receive a task to perform from AWS Data
  Pipeline.

  The task runner specifies which tasks it can perform
  by setting a value for the `workerGroup` parameter. The task returned can come
  from any of the pipelines that
  match the `workerGroup` value passed in by the task runner and that was launched
  using the IAM user credentials
  specified by the task runner.

  If tasks are ready in the work queue, `PollForTask` returns a response
  immediately. If no tasks are available in the queue,
  `PollForTask` uses long-polling and holds on to a poll connection for up to a 90
  seconds, during which time the first newly
  scheduled task is handed to the task runner. To accomodate this, set the socket
  timeout in your task runner to 90 seconds. The task
  runner should not call `PollForTask` again on the same `workerGroup` until it
  receives a response, and this can take up to 90 seconds.

  <examples>
  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.PollForTask
  Content-Length: 59
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {"workerGroup": "MyworkerGroup",
  "hostname": "example.com"}

  </request>

  <response>

  x-amzn-RequestId: 41c713d2-0775-11e2-af6f-6bc7a6be60d9
  Content-Type: application/x-amz-json-1.1
  Content-Length: 39
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  {"taskObject":
  {"attemptId": "@SayHello_2012-12-12T00:00:00_Attempt=1",
  "objects":
  {"@SayHello_2012-12-12T00:00:00_Attempt=1":
  {"fields":
  [
  {"key": "@componentParent",
  "refValue": "SayHello"},
  {"key": "@scheduledStartTime",
  "stringValue": "2012-12-12T00:00:00"},
  {"key": "parent",
  "refValue": "SayHello"},
  {"key": "@sphere",
  "stringValue": "ATTEMPT"},
  {"key": "workerGroup",
  "stringValue": "workerGroup"},
  {"key": "@instanceParent",
  "refValue": "@SayHello_2012-12-12T00:00:00"},
  {"key": "type",
  "stringValue": "ShellCommandActivity"},
  {"key": "@status",
  "stringValue": "WAITING_FOR_RUNNER"},
  {"key": "@version",
  "stringValue": "1"},
  {"key": "schedule",
  "refValue": "Schedule"},
  {"key": "@actualStartTime",
  "stringValue": "2012-12-13T01:40:50"},
  {"key": "command",
  "stringValue": "echo hello"},
  {"key": "@scheduledEndTime",
  "stringValue": "2012-12-12T01:00:00"},
  {"key": "@activeInstances",
  "refValue": "@SayHello_2012-12-12T00:00:00"},
  {"key": "@pipelineId",
  "stringValue": "df-0937003356ZJEXAMPLE"}
  ],
  "id": "@SayHello_2012-12-12T00:00:00_Attempt=1",
  "name": "@SayHello_2012-12-12T00:00:00_Attempt=1"}
  },
  "pipelineId": "df-0937003356ZJEXAMPLE",
  "taskId":
  "2xaM4wRs5zOsIH+g9U3oVHfAgAlbSqU6XduncB0HhZ3xMnmvfePZPn4dIbYXHyWyRK+cU15MqDHwdrvftx/4wv+sNS4w34vJfv7QA9aOoOazW28l1GYSb2ZRR0N0paiQp+d1MhSKo10hOTWOsVK5S5Lnx9Qm6omFgXHyIvZRIvTlrQMpr1xuUrflyGOfbFOGpOLpvPE172MYdqpZKnbSS4TcuqgQKSWV2833fEubI57DPOP7ghWa2TcYeSIv4pdLYG53fTuwfbnbdc98g2LNUQzSVhSnt7BoqyNwht2aQ6b/UHg9A80+KVpuXuqmz3m1MXwHFgxjdmuesXNOrrlGpeLCcRWD+aGo0RN1NqhQRzNAig8V4GlaPTQzMsRCljKqvrIyAoP3Tt2XEGsHkkQo12rEX8Z90957XX2qKRwhruwYzqGkSLWjINoLdAxUJdpRXRc5DJTrBd3D5mdzn7kY1l7NEh4kFHJDt3Cx4Z3Mk8MYCACyCk/CEyy9DwuPi66cLz0NBcgbCM5LKjTBOwo1m+am+pvM1kSposE9FPP1+RFGb8k6jQBTJx3TRz1yKilnGXQTZ5xvdOFpJrklIT0OXP1MG3+auM9FlJA+1dX90QoNJE5z7axmK//MOGXUdkqFe2kiDkorqjxwDvc0Js9pVKfKvAmW8YqUbmI9l0ERpWCXXnLVHNmPWz3jaPY+OBAmuJWDmxB/Z8p94aEDg4BVXQ7LvsKQ3DLYhaB7yJ390CJT+i0mm+EBqY60V6YikPSWDFrYQ/NPi2b1DgE19mX8zHqw8qprIl4yh1Ckx2Iige4En/N5ktOoIxnASxAw/TzcE2skxdw5KlHDF+UTj71m16CR/dIaKlXijlfNlNzUBo/bNSadCQn3G5NoO501wPKI:XO50TgDNyo8EXAMPLE/g==:1"}
  }

  </response>
  </examples>
  """
  @spec poll_for_task(map(), poll_for_task_input(), list()) ::
          {:ok, poll_for_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
          | {:error, task_not_found_exception()}
  def poll_for_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PollForTask", input, options)
  end

  @doc """
  Adds tasks, schedules, and preconditions to the specified pipeline.

  You can use `PutPipelineDefinition` to populate a new pipeline.

  `PutPipelineDefinition` also validates the configuration as it adds it to the
  pipeline. Changes to the pipeline are saved unless one
  of the following three validation errors exists in the pipeline.

    1. An object is missing a name or identifier field.

    2. A string or reference field is empty.

    3. The number of objects in the pipeline exceeds the maximum allowed
  objects.

    4. The pipeline is in a FINISHED state.

  Pipeline object definitions are passed to the `PutPipelineDefinition` action and
  returned by the `GetPipelineDefinition` action.

  <examples>
  <example>
  <name>Example 1</name>
  <description>
  This example sets an valid pipeline configuration and returns success.
  </description>
  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.PutPipelineDefinition
  Content-Length: 914
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {"pipelineId": "df-0937003356ZJEXAMPLE",
  "pipelineObjects":
  [
  {"id": "Default",
  "name": "Default",
  "fields":
  [
  {"key": "workerGroup",
  "stringValue": "workerGroup"}
  ]
  },
  {"id": "Schedule",
  "name": "Schedule",
  "fields":
  [
  {"key": "startDateTime",
  "stringValue": "2012-12-12T00:00:00"},
  {"key": "type",
  "stringValue": "Schedule"},
  {"key": "period",
  "stringValue": "1 hour"},
  {"key": "endDateTime",
  "stringValue": "2012-12-21T18:00:00"}
  ]
  },
  {"id": "SayHello",
  "name": "SayHello",
  "fields":
  [
  {"key": "type",
  "stringValue": "ShellCommandActivity"},
  {"key": "command",
  "stringValue": "echo hello"},
  {"key": "parent",
  "refValue": "Default"},
  {"key": "schedule",
  "refValue": "Schedule"}
  ]
  }
  ]
  }

  </request>
  <response>

  HTTP/1.1 200
  x-amzn-RequestId: f74afc14-0754-11e2-af6f-6bc7a6be60d9
  Content-Type: application/x-amz-json-1.1
  Content-Length: 18
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  {"errored": false}

  </response>
  </example>
  <example>
  <name>Example 2</name>
  <description>
  This example sets an invalid pipeline configuration (the value for `workerGroup`
  is an empty string) and returns an error message.
  </description>
  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.PutPipelineDefinition
  Content-Length: 903
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {"pipelineId": "df-06372391ZG65EXAMPLE",
  "pipelineObjects":
  [
  {"id": "Default",
  "name": "Default",
  "fields":
  [
  {"key": "workerGroup",
  "stringValue": ""}
  ]
  },
  {"id": "Schedule",
  "name": "Schedule",
  "fields":
  [
  {"key": "startDateTime",
  "stringValue": "2012-09-25T17:00:00"},
  {"key": "type",
  "stringValue": "Schedule"},
  {"key": "period",
  "stringValue": "1 hour"},
  {"key": "endDateTime",
  "stringValue": "2012-09-25T18:00:00"}
  ]
  },
  {"id": "SayHello",
  "name": "SayHello",
  "fields":
  [
  {"key": "type",
  "stringValue": "ShellCommandActivity"},
  {"key": "command",
  "stringValue": "echo hello"},
  {"key": "parent",
  "refValue": "Default"},
  {"key": "schedule",
  "refValue": "Schedule"}

  ]
  }
  ]
  }

  </request>
  <response>

  HTTP/1.1 200
  x-amzn-RequestId: f74afc14-0754-11e2-af6f-6bc7a6be60d9
  Content-Type: application/x-amz-json-1.1
  Content-Length: 18
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  {"__type": "com.amazon.setl.webservice#InvalidRequestException",
  "message": "Pipeline definition has errors: Could not save the pipeline
  definition due to FATAL errors:
  [com.amazon.setl.webservice.ValidationError@108d7ea9] Please call Validate to
  validate your pipeline"}

  </response>
  </example>
  </examples>
  """
  @spec put_pipeline_definition(map(), put_pipeline_definition_input(), list()) ::
          {:ok, put_pipeline_definition_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
          | {:error, pipeline_deleted_exception()}
          | {:error, pipeline_not_found_exception()}
  def put_pipeline_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutPipelineDefinition", input, options)
  end

  @doc """
  Queries the specified pipeline for the names of objects that match the specified
  set of conditions.

  <examples>
  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.QueryObjects
  Content-Length: 123
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {"pipelineId": "df-06372391ZG65EXAMPLE",
  "query":
  {"selectors":
  [
  ]
  },
  "sphere": "INSTANCE",
  "marker": "",
  "limit": 10}

  </request>

  <response>

  x-amzn-RequestId: 14d704c1-0775-11e2-af6f-6bc7a6be60d9
  Content-Type: application/x-amz-json-1.1
  Content-Length: 72
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  {"hasMoreResults": false,
  "ids":
  ["@SayHello_1_2012-09-25T17:00:00"]
  }
  </response>
  </examples>
  """
  @spec query_objects(map(), query_objects_input(), list()) ::
          {:ok, query_objects_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
          | {:error, pipeline_deleted_exception()}
          | {:error, pipeline_not_found_exception()}
  def query_objects(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "QueryObjects", input, options)
  end

  @doc """
  Removes existing tags from the specified pipeline.
  """
  @spec remove_tags(map(), remove_tags_input(), list()) ::
          {:ok, remove_tags_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
          | {:error, pipeline_deleted_exception()}
          | {:error, pipeline_not_found_exception()}
  def remove_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveTags", input, options)
  end

  @doc """
  Task runners call `ReportTaskProgress` when assigned a task to acknowledge that
  it has the task.

  If the web service does not
  receive this acknowledgement within 2 minutes, it assigns the task in a
  subsequent `PollForTask` call. After this initial acknowledgement,
  the task runner only needs to report progress every 15 minutes to maintain its
  ownership of the task. You can change this reporting time
  from 15 minutes by specifying a `reportProgressTimeout` field in your pipeline.

  If a task runner does not report its status after 5 minutes, AWS Data Pipeline
  assumes that the task runner is unable to process the task
  and reassigns the task in a subsequent response to `PollForTask`. Task runners
  should call `ReportTaskProgress` every 60 seconds.

  <examples>
  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.ReportTaskProgress
  Content-Length: 832
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {"taskId":
  "aaGgHT4LuH0T0Y0oLrJRjas5qH0d8cDPADxqq3tn+zCWGELkCdV2JprLreXm1oxeP5EFZHFLJ69kjSsLYE0iYHYBYVGBrB+E/pYq7ANEEeGJFnSBMRiXZVA+8UJ3OzcInvXeinqBmBaKwii7hnnKb/AXjXiNTXyxgydX1KAyg1AxkwBYG4cfPYMZbuEbQJFJvv5C/2+GVXz1w94nKYTeUeepwUOFOuRLS6JVtZoYwpF56E+Yfk1IcGpFOvCZ01B4Bkuu7x3J+MD/j6kJgZLAgbCJQtI3eiW3kdGmX0p0I2BdY1ZsX6b4UiSvM3OMj6NEHJCJL4E0ZfitnhCoe24Kvjo6C2hFbZq+ei/HPgSXBQMSagkr4vS9c0ChzxH2+LNYvec6bY4kymkaZI1dvOzmpa0FcnGf5AjSK4GpsViZ/ujz6zxFv81qBXzjF0/4M1775rjV1VUdyKaixiA/sJiACNezqZqETidp8d24BDPRhGsj6pBCrnelqGFrk/gXEXUsJ+xwMifRC8UVwiKekpAvHUywVk7Ku4jH/n3i2VoLRP6FXwpUbelu34iiZ9czpXyLtyPKwxa87dlrnRVURwkcVjOt2Mcrcaqe+cbWHvNRhyrPkkdfSF3ac8/wfgVbXvLEB2k9mKc67aD9rvdc1PKX09Tk8BKklsMTpZ3TRCd4NzQlJKigMe8Jat9+1tKj4Ole5ZzW6uyTu2s2iFjEV8KXu4MaiRJyNKCdKeGhhZWY37Qk4NBK4Ppgu+C6Y41dpfOh288SLDEVx0/UySlqOEdhba7c6BiPp5r3hKj3mk9lFy5OYp1aoGLeeFmjXveTnPdf2gkWqXXg7AUbJ7jEs1F0lKZQg4szep2gcKyAJXgvXLfJJHcha8Lfb/Ee7wYmyOcAaRpDBoFNSbtoVXar46teIrpho+ZDvynUXvU0grHWGOk=:wn3SgymHZM99bEXAMPLE",
  "fields":
  [
  {"key": "percentComplete",
  "stringValue": "50"}
  ]
  }

  </request>

  <response>

  x-amzn-RequestId: 640bd023-0775-11e2-af6f-6bc7a6be60d9
  Content-Type: application/x-amz-json-1.1
  Content-Length: 18
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  {"canceled": false}

  </response>
  </examples>
  """
  @spec report_task_progress(map(), report_task_progress_input(), list()) ::
          {:ok, report_task_progress_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
          | {:error, pipeline_deleted_exception()}
          | {:error, pipeline_not_found_exception()}
          | {:error, task_not_found_exception()}
  def report_task_progress(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReportTaskProgress", input, options)
  end

  @doc """
  Task runners call `ReportTaskRunnerHeartbeat` every 15 minutes to indicate that
  they are operational.

  If the AWS Data Pipeline Task Runner is launched on a resource managed by AWS
  Data Pipeline, the web service can use
  this call to detect when the task runner application has failed and restart a
  new instance.

  <examples>
  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.ReportTaskRunnerHeartbeat
  Content-Length: 84
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {"taskrunnerId": "1234567890",
  "workerGroup": "wg-12345",
  "hostname": "example.com"}

  </request>

  <response>

  Status:
  x-amzn-RequestId: b3104dc5-0734-11e2-af6f-6bc7a6be60d9
  Content-Type: application/x-amz-json-1.1
  Content-Length: 20
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  {"terminate": false}

  </response>
  </examples>
  """
  @spec report_task_runner_heartbeat(map(), report_task_runner_heartbeat_input(), list()) ::
          {:ok, report_task_runner_heartbeat_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
  def report_task_runner_heartbeat(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ReportTaskRunnerHeartbeat", input, options)
  end

  @doc """
  Requests that the status of the specified physical or logical pipeline objects
  be updated in the specified pipeline.

  This update might not occur immediately, but is eventually consistent. The
  status that can be set depends on the type of object (for example, DataNode or
  Activity).
  You cannot perform this operation on `FINISHED` pipelines and attempting to do
  so returns `InvalidRequestException`.

  <examples>
  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.SetStatus
  Content-Length: 100
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {"pipelineId": "df-0634701J7KEXAMPLE",
  "objectIds":
  ["o-08600941GHJWMBR9E2"],
  "status": "pause"}

  </request>

  <response>

  x-amzn-RequestId: e83b8ab7-076a-11e2-af6f-6bc7a6be60d9
  Content-Type: application/x-amz-json-1.1
  Content-Length: 0
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  Unexpected response: 200, OK, undefined

  </response>
  </examples>
  """
  @spec set_status(map(), set_status_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
          | {:error, pipeline_deleted_exception()}
          | {:error, pipeline_not_found_exception()}
  def set_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetStatus", input, options)
  end

  @doc """
  Task runners call `SetTaskStatus` to notify AWS Data Pipeline that a task is
  completed and provide information about the final status.

  A task runner makes this call regardless of whether the task was sucessful. A
  task runner does not need to call `SetTaskStatus` for
  tasks that are canceled by the web service during a call to
  `ReportTaskProgress`.

  <examples>
  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.SetTaskStatus
  Content-Length: 847
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {"taskId":
  "aaGgHT4LuH0T0Y0oLrJRjas5qH0d8cDPADxqq3tn+zCWGELkCdV2JprLreXm1oxeP5EFZHFLJ69kjSsLYE0iYHYBYVGBrB+E/pYq7ANEEeGJFnSBMRiXZVA+8UJ3OzcInvXeinqBmBaKwii7hnnKb/AXjXiNTXyxgydX1KAyg1AxkwBYG4cfPYMZbuEbQJFJvv5C/2+GVXz1w94nKYTeUeepwUOFOuRLS6JVtZoYwpF56E+Yfk1IcGpFOvCZ01B4Bkuu7x3J+MD/j6kJgZLAgbCJQtI3eiW3kdGmX0p0I2BdY1ZsX6b4UiSvM3OMj6NEHJCJL4E0ZfitnhCoe24Kvjo6C2hFbZq+ei/HPgSXBQMSagkr4vS9c0ChzxH2+LNYvec6bY4kymkaZI1dvOzmpa0FcnGf5AjSK4GpsViZ/ujz6zxFv81qBXzjF0/4M1775rjV1VUdyKaixiA/sJiACNezqZqETidp8d24BDPRhGsj6pBCrnelqGFrk/gXEXUsJ+xwMifRC8UVwiKekpAvHUywVk7Ku4jH/n3i2VoLRP6FXwpUbelu34iiZ9czpXyLtyPKwxa87dlrnRVURwkcVjOt2Mcrcaqe+cbWHvNRhyrPkkdfSF3ac8/wfgVbXvLEB2k9mKc67aD9rvdc1PKX09Tk8BKklsMTpZ3TRCd4NzQlJKigMe8Jat9+1tKj4Ole5ZzW6uyTu2s2iFjEV8KXu4MaiRJyNKCdKeGhhZWY37Qk4NBK4Ppgu+C6Y41dpfOh288SLDEVx0/UySlqOEdhba7c6BiPp5r3hKj3mk9lFy5OYp1aoGLeeFmjXveTnPdf2gkWqXXg7AUbJ7jEs1F0lKZQg4szep2gcKyAJXgvXLfJJHcha8Lfb/Ee7wYmyOcAaRpDBoFNSbtoVXar46teIrpho+ZDvynUXvU0grHWGOk=:wn3SgymHZM99bEXAMPLE",
  "taskStatus": "FINISHED"}

  </request>

  <response>

  x-amzn-RequestId: 8c8deb53-0788-11e2-af9c-6bc7a6be6qr8
  Content-Type: application/x-amz-json-1.1
  Content-Length: 0
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  {}

  </response>
  </examples>
  """
  @spec set_task_status(map(), set_task_status_input(), list()) ::
          {:ok, set_task_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
          | {:error, pipeline_deleted_exception()}
          | {:error, pipeline_not_found_exception()}
          | {:error, task_not_found_exception()}
  def set_task_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetTaskStatus", input, options)
  end

  @doc """
  Validates the specified pipeline definition to ensure that it is well formed and
  can be run without error.

  <examples>
  <example>
  <name>Example 1</name>
  <description>
  This example sets an valid pipeline configuration and returns success.
  </description>
  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.ValidatePipelineDefinition
  Content-Length: 936
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {"pipelineId": "df-06372391ZG65EXAMPLE",
  "pipelineObjects":
  [
  {"id": "Default",
  "name": "Default",
  "fields":
  [
  {"key": "workerGroup",
  "stringValue": "MyworkerGroup"}
  ]
  },
  {"id": "Schedule",
  "name": "Schedule",
  "fields":
  [
  {"key": "startDateTime",
  "stringValue": "2012-09-25T17:00:00"},
  {"key": "type",
  "stringValue": "Schedule"},
  {"key": "period",
  "stringValue": "1 hour"},
  {"key": "endDateTime",
  "stringValue": "2012-09-25T18:00:00"}
  ]
  },
  {"id": "SayHello",
  "name": "SayHello",
  "fields":
  [
  {"key": "type",
  "stringValue": "ShellCommandActivity"},
  {"key": "command",
  "stringValue": "echo hello"},
  {"key": "parent",
  "refValue": "Default"},
  {"key": "schedule",
  "refValue": "Schedule"}

  ]
  }
  ]
  }

  </request>
  <response>

  x-amzn-RequestId: 92c9f347-0776-11e2-8a14-21bb8a1f50ef
  Content-Type: application/x-amz-json-1.1
  Content-Length: 18
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  {"errored": false}

  </response>
  </example>
  <example>
  <name>Example 2</name>
  <description>
  This example sets an invalid pipeline configuration and returns the associated
  set of validation errors.
  </description>

  <request>

  POST / HTTP/1.1
  Content-Type: application/x-amz-json-1.1
  X-Amz-Target: DataPipeline.ValidatePipelineDefinition
  Content-Length: 903
  Host: datapipeline.us-east-1.amazonaws.com
  X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
  Authorization: AuthParams

  {"pipelineId": "df-06372391ZG65EXAMPLE",
  "pipelineObjects":
  [
  {"id": "Default",
  "name": "Default",
  "fields":
  [
  {"key": "workerGroup",
  "stringValue": "MyworkerGroup"}
  ]
  },
  {"id": "Schedule",
  "name": "Schedule",
  "fields":
  [
  {"key": "startDateTime",
  "stringValue": "bad-time"},
  {"key": "type",
  "stringValue": "Schedule"},
  {"key": "period",
  "stringValue": "1 hour"},
  {"key": "endDateTime",
  "stringValue": "2012-09-25T18:00:00"}
  ]
  },
  {"id": "SayHello",
  "name": "SayHello",
  "fields":
  [
  {"key": "type",
  "stringValue": "ShellCommandActivity"},
  {"key": "command",
  "stringValue": "echo hello"},
  {"key": "parent",
  "refValue": "Default"},
  {"key": "schedule",
  "refValue": "Schedule"}

  ]
  }
  ]
  }

  </request>
  <response>

  x-amzn-RequestId: 496a1f5a-0e6a-11e2-a61c-bd6312c92ddd
  Content-Type: application/x-amz-json-1.1
  Content-Length: 278
  Date: Mon, 12 Nov 2012 17:50:53 GMT

  {"errored": true,
  "validationErrors":
  [
  {"errors":
  ["INVALID_FIELD_VALUE: 'startDateTime' value must be a literal datetime value."],
  "id": "Schedule"}
  ]
  }

  </response>
  </example>
  </examples>
  """
  @spec validate_pipeline_definition(map(), validate_pipeline_definition_input(), list()) ::
          {:ok, validate_pipeline_definition_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error()}
          | {:error, invalid_request_exception()}
          | {:error, pipeline_deleted_exception()}
          | {:error, pipeline_not_found_exception()}
  def validate_pipeline_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ValidatePipelineDefinition", input, options)
  end
end
