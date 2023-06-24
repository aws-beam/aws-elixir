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

  If you set the `publish` parameter of this API action to `true`, it publishes
  version `1` as the first revision of the state machine.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.

  `CreateStateMachine` is an idempotent API. Subsequent requests won’t create a
  duplicate resource if it was already created. `CreateStateMachine`'s idempotency
  check is based on the state machine `name`, `definition`, `type`,
  `LoggingConfiguration`, and `TracingConfiguration`. The check is also based on
  the `publish` and `versionDescription` parameters. If a following request has a
  different `roleArn` or `tags`, Step Functions will ignore these differences and
  treat it as an idempotent request of the previous. In this case, `roleArn` and
  `tags` will not be updated, even if they are different.
  """
  def create_state_machine(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStateMachine", input, options)
  end

  @doc """
  Creates an
  [alias](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html) for a state machine that points to one or two
  [versions](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html)
  of the same state machine.

  You can set your application to call `StartExecution` with an alias and update
  the version the alias uses without changing the client's code.

  You can also map an alias to split `StartExecution` requests between two
  versions of a state machine. To do this, add a second `RoutingConfig` object in
  the `routingConfiguration` parameter. You must also specify the percentage of
  execution run requests each version should receive in both `RoutingConfig`
  objects. Step Functions randomly chooses which version runs a given execution
  based on the percentage you specify.

  To create an alias that points to a single version, specify a single
  `RoutingConfig` object with a `weight` set to 100.

  You can create up to 100 aliases for each state machine. You must delete unused
  aliases using the `DeleteStateMachineAlias` API action.

  `CreateStateMachineAlias` is an idempotent API. Step Functions bases the
  idempotency check on the `stateMachineArn`, `description`, `name`, and
  `routingConfiguration` parameters. Requests that contain the same values for
  these parameters return a successful idempotent response without creating a
  duplicate resource.

  ## Related operations:

    * `DescribeStateMachineAlias`

    * `ListStateMachineAliases`

    * `UpdateStateMachineAlias`

    * `DeleteStateMachineAlias`
  """
  def create_state_machine_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStateMachineAlias", input, options)
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

  A qualified state machine ARN can either refer to a *Distributed Map state*
  defined within a state machine, a version ARN, or an alias ARN.

  The following are some examples of qualified and unqualified state machine ARNs:

    * The following qualified state machine ARN refers to a *Distributed
  Map state* with a label `mapStateLabel` in a state machine named
  `myStateMachine`.

  `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel`

  If you provide a qualified state machine ARN that refers to a *Distributed Map
  state*, the request fails with `ValidationException`.

    * The following unqualified state machine ARN refers to a state
  machine named `myStateMachine`.

  `arn:partition:states:region:account-id:stateMachine:myStateMachine`

  This API action also deletes all
  [versions](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html) and
  [aliases](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html)
  associated with a state machine.

  For `EXPRESS` state machines, the deletion happens eventually (usually in less
  than a minute). Running executions may emit logs after `DeleteStateMachine` API
  is called.
  """
  def delete_state_machine(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStateMachine", input, options)
  end

  @doc """
  Deletes a state machine
  [alias](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html).

  After you delete a state machine alias, you can't use it to start executions.
  When you delete a state machine alias, Step Functions doesn't delete the state
  machine versions that alias references.

  ## Related operations:

    * `CreateStateMachineAlias`

    * `DescribeStateMachineAlias`

    * `ListStateMachineAliases`

    * `UpdateStateMachineAlias`
  """
  def delete_state_machine_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStateMachineAlias", input, options)
  end

  @doc """
  Deletes a state machine
  [version](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html).  After you delete a version, you can't call `StartExecution` using that version's
  ARN or use the version with a state machine
  [alias](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html).

  Deleting a state machine version won't terminate its in-progress executions.

  You can't delete a state machine version currently referenced by one or more
  aliases. Before you delete a version, you must either delete the aliases or
  update them to point to another state machine version.

  ## Related operations:

    * `PublishStateMachineVersion`

    * `ListStateMachineVersions`
  """
  def delete_state_machine_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStateMachineVersion", input, options)
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
  Provides information about a state machine execution, such as the state machine
  associated with the execution, the execution input and output, and relevant
  execution metadata.

  Use this API action to return the Map Run Amazon Resource Name (ARN) if the
  execution was dispatched by a Map Run.

  If you specify a version or alias ARN when you call the `StartExecution` API
  action, `DescribeExecution` returns that ARN.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.

  Executions of an `EXPRESS` state machinearen't supported by `DescribeExecution`
  unless a Map Run dispatched them.
  """
  def describe_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExecution", input, options)
  end

  @doc """
  Provides information about a Map Run's configuration, progress, and results.

  For more information, see [Examining Map Run](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-examine-map-run.html)
  in the *Step Functions Developer Guide*.
  """
  def describe_map_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMapRun", input, options)
  end

  @doc """
  Provides information about a state machine's definition, its IAM role Amazon
  Resource Name (ARN), and configuration.

  A qualified state machine ARN can either refer to a *Distributed Map state*
  defined within a state machine, a version ARN, or an alias ARN.

  The following are some examples of qualified and unqualified state machine ARNs:

    * The following qualified state machine ARN refers to a *Distributed
  Map state* with a label `mapStateLabel` in a state machine named
  `myStateMachine`.

  `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel`

  If you provide a qualified state machine ARN that refers to a *Distributed Map
  state*, the request fails with `ValidationException`.

    * The following qualified state machine ARN refers to an alias named
  `PROD`.

  `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine:PROD>`

  If you provide a qualified state machine ARN that refers to a version ARN or an
  alias ARN, the request starts execution for that version or alias.

    * The following unqualified state machine ARN refers to a state
  machine named `myStateMachine`.

  `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine>`

  This API action returns the details for a state machine version if the
  `stateMachineArn` you specify is a state machine version ARN.

  This operation is eventually consistent. The results are best effort and may not
  reflect very recent updates and changes.
  """
  def describe_state_machine(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStateMachine", input, options)
  end

  @doc """
  Returns details about a state machine
  [alias](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html).

  ## Related operations:

    * `CreateStateMachineAlias`

    * `ListStateMachineAliases`

    * `UpdateStateMachineAlias`

    * `DeleteStateMachineAlias`
  """
  def describe_state_machine_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStateMachineAlias", input, options)
  end

  @doc """
  Provides information about a state machine's definition, its execution role ARN,
  and configuration.

  If a Map Run dispatched the execution, this action returns the Map Run Amazon
  Resource Name (ARN) in the response. The state machine returned is the state
  machine associated with the Map Run.

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
  Lists all executions of a state machine or a Map Run.

  You can list all executions related to a state machine by specifying a state
  machine Amazon Resource Name (ARN), or those related to a Map Run by specifying
  a Map Run ARN.

  You can also provide a state machine
  [alias](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html) ARN or
  [version](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html)
  ARN to list the executions associated with a specific alias or version.

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
  Lists all Map Runs that were started by a given state machine execution.

  Use this API action to obtain Map Run ARNs, and then call `DescribeMapRun` to
  obtain more information, if needed.
  """
  def list_map_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMapRuns", input, options)
  end

  @doc """
  Lists
  [aliases](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html) for a specified state machine ARN.

  Results are sorted by time, with the most recently created aliases listed first.

  To list aliases that reference a state machine
  [version](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html),
  you can specify the version ARN in the `stateMachineArn` parameter.

  If `nextToken` is returned, there are more results available. The value of
  `nextToken` is a unique pagination token for each page. Make the call again
  using the returned token to retrieve the next page. Keep all other arguments
  unchanged. Each pagination token expires after 24 hours. Using an expired
  pagination token will return an *HTTP 400 InvalidToken* error.

  ## Related operations:

    * `CreateStateMachineAlias`

    * `DescribeStateMachineAlias`

    * `UpdateStateMachineAlias`

    * `DeleteStateMachineAlias`
  """
  def list_state_machine_aliases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStateMachineAliases", input, options)
  end

  @doc """
  Lists
  [versions](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html)
  for the specified state machine Amazon Resource Name (ARN).

  The results are sorted in descending order of the version creation time.

  If `nextToken` is returned, there are more results available. The value of
  `nextToken` is a unique pagination token for each page. Make the call again
  using the returned token to retrieve the next page. Keep all other arguments
  unchanged. Each pagination token expires after 24 hours. Using an expired
  pagination token will return an *HTTP 400 InvalidToken* error.

  ## Related operations:

    * `PublishStateMachineVersion`

    * `DeleteStateMachineVersion`
  """
  def list_state_machine_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStateMachineVersions", input, options)
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
  Creates a
  [version](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html)
  from the current revision of a state machine.

  Use versions to create immutable snapshots of your state machine. You can start
  executions from versions either directly or with an alias. To create an alias,
  use `CreateStateMachineAlias`.

  You can publish up to 1000 versions for each state machine. You must manually
  delete unused versions using the `DeleteStateMachineVersion` API action.

  `PublishStateMachineVersion` is an idempotent API. It doesn't create a duplicate
  state machine version if it already exists for the current revision. Step
  Functions bases `PublishStateMachineVersion`'s idempotency check on the
  `stateMachineArn`, `name`, and `revisionId` parameters. Requests with the same
  parameters return a successful idempotent response. If you don't specify a
  `revisionId`, Step Functions checks for a previously published version of the
  state machine's current revision.

  ## Related operations:

    * `DeleteStateMachineVersion`

    * `ListStateMachineVersions`
  """
  def publish_state_machine_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PublishStateMachineVersion", input, options)
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

  A qualified state machine ARN can either refer to a *Distributed Map state*
  defined within a state machine, a version ARN, or an alias ARN.

  The following are some examples of qualified and unqualified state machine ARNs:

    * The following qualified state machine ARN refers to a *Distributed
  Map state* with a label `mapStateLabel` in a state machine named
  `myStateMachine`.

  `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel`

  If you provide a qualified state machine ARN that refers to a *Distributed Map
  state*, the request fails with `ValidationException`.

    * The following qualified state machine ARN refers to an alias named
  `PROD`.

  `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine:PROD>`

  If you provide a qualified state machine ARN that refers to a version ARN or an
  alias ARN, the request starts execution for that version or alias.

    * The following unqualified state machine ARN refers to a state
  machine named `myStateMachine`.

  `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine>`

  If you start an execution with an unqualified state machine ARN, Step Functions
  uses the latest revision of the state machine for the execution.

  To start executions of a state machine
  [version](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html), call `StartExecution` and provide the version ARN or the ARN of an
  [alias](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html)
  that points to the version.

  `StartExecution` is idempotent for `STANDARD` workflows. For a `STANDARD`
  workflow, if you call `StartExecution` with the same name and input as a running
  execution, the call succeeds and return the same response as the original
  request. If the execution is closed or if the input is different, it returns a
  `400 ExecutionAlreadyExists` error. You can reuse names after 90 days.

  `StartExecution` isn't idempotent for `EXPRESS` workflows.
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
  Updates an in-progress Map Run's configuration to include changes to the
  settings that control maximum concurrency and Map Run failure.
  """
  def update_map_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMapRun", input, options)
  end

  @doc """
  Updates an existing state machine by modifying its `definition`, `roleArn`, or
  `loggingConfiguration`.

  Running executions will continue to use the previous `definition` and `roleArn`.
  You must include at least one of `definition` or `roleArn` or you will receive a
  `MissingRequiredParameter` error.

  A qualified state machine ARN refers to a *Distributed Map state* defined within
  a state machine. For example, the qualified state machine ARN
  `arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel`
  refers to a *Distributed Map state* with a label `mapStateLabel` in the state
  machine named `stateMachineName`.

  A qualified state machine ARN can either refer to a *Distributed Map state*
  defined within a state machine, a version ARN, or an alias ARN.

  The following are some examples of qualified and unqualified state machine ARNs:

    * The following qualified state machine ARN refers to a *Distributed
  Map state* with a label `mapStateLabel` in a state machine named
  `myStateMachine`.

  `arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel`

  If you provide a qualified state machine ARN that refers to a *Distributed Map
  state*, the request fails with `ValidationException`.

    * The following qualified state machine ARN refers to an alias named
  `PROD`.

  `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine:PROD>`

  If you provide a qualified state machine ARN that refers to a version ARN or an
  alias ARN, the request starts execution for that version or alias.

    * The following unqualified state machine ARN refers to a state
  machine named `myStateMachine`.

  `arn:<partition>:states:<region>:<account-id>:stateMachine:<myStateMachine>`

  After you update your state machine, you can set the `publish` parameter to
  `true` in the same action to publish a new
  [version](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html).
  This way, you can opt-in to strict versioning of your state machine.

  Step Functions assigns monotonically increasing integers for state machine
  versions, starting at version number 1.

  All `StartExecution` calls within a few seconds use the updated `definition` and
  `roleArn`. Executions started immediately after you call `UpdateStateMachine`
  may use the previous state machine `definition` and `roleArn`.
  """
  def update_state_machine(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateStateMachine", input, options)
  end

  @doc """
  Updates the configuration of an existing state machine
  [alias](https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html)
  by modifying its `description` or `routingConfiguration`.

  You must specify at least one of the `description` or `routingConfiguration`
  parameters to update a state machine alias.

  `UpdateStateMachineAlias` is an idempotent API. Step Functions bases the
  idempotency check on the `stateMachineAliasArn`, `description`, and
  `routingConfiguration` parameters. Requests with the same parameters return an
  idempotent response.

  This operation is eventually consistent. All `StartExecution` requests made
  within a few seconds use the latest alias configuration. Executions started
  immediately after calling `UpdateStateMachineAlias` may use the previous routing
  configuration.

  ## Related operations:

    * `CreateStateMachineAlias`

    * `DescribeStateMachineAlias`

    * `ListStateMachineAliases`

    * `DeleteStateMachineAlias`
  """
  def update_state_machine_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateStateMachineAlias", input, options)
  end
end
