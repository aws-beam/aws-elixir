# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SFN do
  @moduledoc """
  Step Functions

  Step Functions is a service that lets you coordinate the components of
  distributed applications and microservices using visual workflows.

  You can use Step Functions to build applications from individual components,
  each of which performs a discrete function, or *task*, allowing you to scale and
  change applications quickly. Step Functions provides a console that helps
  visualize the components of your application as a series of steps. Step
  Functions automatically triggers and tracks each step, and retries steps when
  there are errors, so your application executes predictably and in the right
  order every time. Step Functions logs the state of each step, so you can quickly
  diagnose and debug any issues.

  Step Functions manages operations and underlying infrastructure to ensure your
  application is available at any scale. You can run tasks on Amazon Web Services,
  your own servers, or any system that has access to Amazon Web Services. You can
  access and use Step Functions using the console, the Amazon Web Services SDKs,
  or an HTTP API. For more information about Step Functions, see the * [Step Functions Developer
  Guide](https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html) *.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "AWS SFN",
      api_version: "2016-11-23",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "states",
      global?: false,
      protocol: "json",
      service_id: "SFN",
      signature_version: "v4",
      signing_name: "states",
      target_prefix: "AWSStepFunctions"
    }
  end

  @doc """
  Creates an activity.

  An activity is a task that you write in any programming language and host on any
  machine that has access to Step Functions. Activities must poll Step Functions
  using the `GetActivityTask` API action and respond using `SendTask*` API
  actions. This function lets Step Functions know the existence of your activity
  and returns an identifier for use in a state machine and when polling from the
  activity.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.

  `CreateActivity` is an idempotent API. Subsequent requests won’t create a
  duplicate resource if it was already created. `CreateActivity`'s idempotency
  check is based on the activity `name`. If a following request has different
  `tags` values, Step Functions will ignore these differences and treat it as an
  idempotent request of the previous. In this case, `tags` will not be updated,
  even if they are different.
  """
  def create_activity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateActivity", input, options)
  end

  @doc """
  Creates a state machine.

  A state machine consists of a collection of states that can do work (`Task`
  states), determine to which states to transition next (`Choice` states), stop an
  execution with an error (`Fail` states), and so on. State machines are specified
  using a JSON-based, structured language. For more information, see [Amazon States
  Language](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html)
  in the Step Functions User Guide.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.

  `CreateStateMachine` is an idempotent API. Subsequent requests won’t create a
  duplicate resource if it was already created. `CreateStateMachine`'s idempotency
  check is based on the state machine `name`, `definition`, `type`,
  `LoggingConfiguration` and `TracingConfiguration`. If a following request has a
  different `roleArn` or `tags`, Step Functions will ignore these differences and
  treat it as an idempotent request of the previous. In this case, `roleArn` and
  `tags` will not be updated, even if they are different.
  """
  def create_state_machine(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStateMachine", input, options)
  end

  @doc """
  Deletes an activity.
  """
  def delete_activity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteActivity", input, options)
  end

  @doc """
  Deletes a state machine.

  This is an asynchronous operation: It sets the state machine's status to
  `DELETING` and begins the deletion process.

  For `EXPRESS` state machines, the deletion will happen eventually (usually less
  than a minute). Running executions may emit logs after `DeleteStateMachine` API
  is called.
  """
  def delete_state_machine(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStateMachine", input, options)
  end

  @doc """
  Describes an activity.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.
  """
  def describe_activity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeActivity", input, options)
  end

  @doc """
  Describes an execution.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.

  This API action is not supported by `EXPRESS` state machines.
  """
  def describe_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExecution", input, options)
  end

  @doc """
  Describes a state machine.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.
  """
  def describe_state_machine(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStateMachine", input, options)
  end

  @doc """
  Describes the state machine associated with a specific execution.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.

  This API action is not supported by `EXPRESS` state machines.
  """
  def describe_state_machine_for_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStateMachineForExecution", input, options)
  end

  @doc """
  Used by workers to retrieve a task (with the specified activity ARN) which has
  been scheduled for execution by a running state machine.

  This initiates a long poll, where the service holds the HTTP connection open and
  responds as soon as a task becomes available (i.e. an execution of a task of
  this type is needed.) The maximum time the service holds on to the request
  before responding is 60 seconds. If no task is available within 60 seconds, the
  poll returns a `taskToken` with a null string.

  This API action isn't logged in CloudTrail.

  Workers should set their client side socket timeout to at least 65 seconds (5
  seconds higher than the maximum time the service may hold the poll request).

  Polling with `GetActivityTask` can cause latency in some implementations. See
  [Avoid Latency When Polling for Activity Tasks](https://docs.aws.amazon.com/step-functions/latest/dg/bp-activity-pollers.html)
  in the Step Functions Developer Guide.
  """
  def get_activity_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetActivityTask", input, options)
  end

  @doc """
  Returns the history of the specified execution as a list of events.

  By default, the results are returned in ascending order of the `timeStamp` of
  the events. Use the `reverseOrder` parameter to get the latest events first.

  If `nextToken` is returned, there are more results available. The value of
  `nextToken` is a unique pagination token for each page. Make the call again
  using the returned token to retrieve the next page. Keep all other arguments
  unchanged. Each pagination token expires after 24 hours. Using an expired
  pagination token will return an *HTTP 400 InvalidToken* error.

  This API action is not supported by `EXPRESS` state machines.
  """
  def get_execution_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetExecutionHistory", input, options)
  end

  @doc """
  Lists the existing activities.

  If `nextToken` is returned, there are more results available. The value of
  `nextToken` is a unique pagination token for each page. Make the call again
  using the returned token to retrieve the next page. Keep all other arguments
  unchanged. Each pagination token expires after 24 hours. Using an expired
  pagination token will return an *HTTP 400 InvalidToken* error.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.
  """
  def list_activities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListActivities", input, options)
  end

  @doc """
  Lists the executions of a state machine that meet the filtering criteria.

  Results are sorted by time, with the most recent execution first.

  If `nextToken` is returned, there are more results available. The value of
  `nextToken` is a unique pagination token for each page. Make the call again
  using the returned token to retrieve the next page. Keep all other arguments
  unchanged. Each pagination token expires after 24 hours. Using an expired
  pagination token will return an *HTTP 400 InvalidToken* error.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.

  This API action is not supported by `EXPRESS` state machines.
  """
  def list_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListExecutions", input, options)
  end

  @doc """
  Lists the existing state machines.

  If `nextToken` is returned, there are more results available. The value of
  `nextToken` is a unique pagination token for each page. Make the call again
  using the returned token to retrieve the next page. Keep all other arguments
  unchanged. Each pagination token expires after 24 hours. Using an expired
  pagination token will return an *HTTP 400 InvalidToken* error.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.
  """
  def list_state_machines(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStateMachines", input, options)
  end

  @doc """
  List tags for a given resource.

  Tags may only contain Unicode letters, digits, white space, or these symbols: `_
  . : / = + - @`.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Used by activity workers and task states using the
  [callback](https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token)
  pattern to report that the task identified by the `taskToken` failed.
  """
  def send_task_failure(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendTaskFailure", input, options)
  end

  @doc """
  Used by activity workers and task states using the
  [callback](https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token) pattern to report to Step Functions that the task represented by the specified
  `taskToken` is still making progress.

  This action resets the `Heartbeat` clock. The `Heartbeat` threshold is specified
  in the state machine's Amazon States Language definition (`HeartbeatSeconds`).
  This action does not in itself create an event in the execution history.
  However, if the task times out, the execution history contains an
  `ActivityTimedOut` entry for activities, or a `TaskTimedOut` entry for for tasks
  using the [job
  run](https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync)
  or
  [callback](https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token)
  pattern.

  The `Timeout` of a task, defined in the state machine's Amazon States Language
  definition, is its maximum allowed duration, regardless of the number of
  `SendTaskHeartbeat` requests received. Use `HeartbeatSeconds` to configure the
  timeout interval for heartbeats.
  """
  def send_task_heartbeat(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendTaskHeartbeat", input, options)
  end

  @doc """
  Used by activity workers and task states using the
  [callback](https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token)
  pattern to report that the task identified by the `taskToken` completed
  successfully.
  """
  def send_task_success(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendTaskSuccess", input, options)
  end

  @doc """
  Starts a state machine execution.

  `StartExecution` is idempotent for `STANDARD` workflows. For a `STANDARD`
  workflow, if `StartExecution` is called with the same name and input as a
  running execution, the call will succeed and return the same response as the
  original request. If the execution is closed or if the input is different, it
  will return a `400 ExecutionAlreadyExists` error. Names can be reused after 90
  days.

  `StartExecution` is not idempotent for `EXPRESS` workflows.
  """
  def start_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartExecution", input, options)
  end

  @doc """
  Starts a Synchronous Express state machine execution.

  `StartSyncExecution` is not available for `STANDARD` workflows.

  `StartSyncExecution` will return a `200 OK` response, even if your execution
  fails, because the status code in the API response doesn't reflect function
  errors. Error codes are reserved for errors that prevent your execution from
  running, such as permissions errors, limit errors, or issues with your state
  machine code and configuration.

  This API action isn't logged in CloudTrail.
  """
  def start_sync_execution(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "sync-")

    Request.request_post(client, meta, "StartSyncExecution", input, options)
  end

  @doc """
  Stops an execution.

  This API action is not supported by `EXPRESS` state machines.
  """
  def stop_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopExecution", input, options)
  end

  @doc """
  Add a tag to a Step Functions resource.

  An array of key-value pairs. For more information, see [Using Cost Allocation Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *Amazon Web Services Billing and Cost Management User Guide*, and
  [Controlling Access Using IAM Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html).

  Tags may only contain Unicode letters, digits, white space, or these symbols: `_
  . : / = + - @`.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Remove a tag from a Step Functions resource
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an existing state machine by modifying its `definition`, `roleArn`, or
  `loggingConfiguration`.

  Running executions will continue to use the previous `definition` and `roleArn`.
  You must include at least one of `definition` or `roleArn` or you will receive a
  `MissingRequiredParameter` error.

  All `StartExecution` calls within a few seconds will use the updated
  `definition` and `roleArn`. Executions started immediately after calling
  `UpdateStateMachine` may use the previous state machine `definition` and
  `roleArn`.
  """
  def update_state_machine(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateStateMachine", input, options)
  end
end
