# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.StepFunctions do
  @moduledoc """
  AWS Step Functions

  AWS Step Functions is a web service that enables you to coordinate the
  components of distributed applications and microservices using visual
  workflows. You build applications from individual components that each
  perform a discrete function, or *task*, allowing you to scale and change
  applications quickly. Step Functions provides a graphical console to
  visualize the components of your application as a series of steps. It
  automatically triggers and tracks each step, and retries when there are
  errors, so your application executes in order and as expected, every time.
  Step Functions logs the state of each step, so when things do go wrong, you
  can diagnose and debug problems quickly.

  Step Functions manages the operations and underlying infrastructure for you
  to ensure your application is available at any scale. You can run tasks on
  the AWS cloud, on your own servers, or an any system that has access to
  AWS. Step Functions can be accessed and used with the Step Functions
  console, the AWS SDKs (included with your Beta release invitation email),
  or an HTTP API (the subject of this document).
  """

  @doc """
  Creates an activity.
  """
  def create_activity(client, input, options \\ []) do
    request(client, "CreateActivity", input, options)
  end

  @doc """
  Creates a state machine.
  """
  def create_state_machine(client, input, options \\ []) do
    request(client, "CreateStateMachine", input, options)
  end

  @doc """
  Deletes an activity.
  """
  def delete_activity(client, input, options \\ []) do
    request(client, "DeleteActivity", input, options)
  end

  @doc """
  Deletes a state machine. This is an asynchronous operation-- it sets the
  state machine's status to "DELETING" and begins the delete process.
  """
  def delete_state_machine(client, input, options \\ []) do
    request(client, "DeleteStateMachine", input, options)
  end

  @doc """
  Describes an activity.
  """
  def describe_activity(client, input, options \\ []) do
    request(client, "DescribeActivity", input, options)
  end

  @doc """
  Describes an execution.
  """
  def describe_execution(client, input, options \\ []) do
    request(client, "DescribeExecution", input, options)
  end

  @doc """
  Describes a state machine.
  """
  def describe_state_machine(client, input, options \\ []) do
    request(client, "DescribeStateMachine", input, options)
  end

  @doc """
  Used by workers to retrieve a task (with the specified activity ARN)
  scheduled for execution by a running state machine. This initiates a long
  poll, where the service holds the HTTP connection open and responds as soon
  as a task becomes available (i.e. an execution of a task of this type is
  needed.) The maximum time the service holds on to the request before
  responding is 60 seconds. If no task is available within 60 seconds, the
  poll will return an empty result, that is, the `taskToken` returned is an
  empty string.

  <important> Workers should set their client side socket timeout to at least
  65 seconds (5 seconds higher than the maximum time the service may hold the
  poll request).

  </important>
  """
  def get_activity_task(client, input, options \\ []) do
    request(client, "GetActivityTask", input, options)
  end

  @doc """
  Returns the history of the specified execution as a list of events. By
  default, the results are returned in ascending order of the `timeStamp` of
  the events. Use the `reverseOrder` parameter to get the latest events
  first. The results may be split into multiple pages. To retrieve subsequent
  pages, make the call again using the `nextToken` returned by the previous
  call.
  """
  def get_execution_history(client, input, options \\ []) do
    request(client, "GetExecutionHistory", input, options)
  end

  @doc """
  Lists the existing activities. The results may be split into multiple
  pages. To retrieve subsequent pages, make the call again using the
  `nextToken` returned by the previous call.
  """
  def list_activities(client, input, options \\ []) do
    request(client, "ListActivities", input, options)
  end

  @doc """
  Lists the executions of a state machine that meet the filtering criteria.
  The results may be split into multiple pages. To retrieve subsequent pages,
  make the call again using the `nextToken` returned by the previous call.
  """
  def list_executions(client, input, options \\ []) do
    request(client, "ListExecutions", input, options)
  end

  @doc """
  Lists the existing state machines. The results may be split into multiple
  pages. To retrieve subsequent pages, make the call again using the
  `nextToken` returned by the previous call.
  """
  def list_state_machines(client, input, options \\ []) do
    request(client, "ListStateMachines", input, options)
  end

  @doc """
  Used by workers to report that the task identified by the `taskToken`
  failed.
  """
  def send_task_failure(client, input, options \\ []) do
    request(client, "SendTaskFailure", input, options)
  end

  @doc """
  Used by workers to report to the service that the task represented by the
  specified `taskToken` is still making progress. This action resets the
  `Heartbeat` clock. The `Heartbeat` threshold is specified in the state
  machine's Amazon States Language definition. This action does not in itself
  create an event in the execution history. However, if the task times out,
  the execution history will contain an `ActivityTimedOut` event.

  <note> The `Timeout` of a task, defined in the state machine's Amazon
  States Language definition, is its maximum allowed duration, regardless of
  the number of `SendTaskHeartbeat` requests received.

  </note> <note> This operation is only useful for long-lived tasks to report
  the liveliness of the task.

  </note>
  """
  def send_task_heartbeat(client, input, options \\ []) do
    request(client, "SendTaskHeartbeat", input, options)
  end

  @doc """
  Used by workers to report that the task identified by the `taskToken`
  completed successfully.
  """
  def send_task_success(client, input, options \\ []) do
    request(client, "SendTaskSuccess", input, options)
  end

  @doc """
  Starts a state machine execution.
  """
  def start_execution(client, input, options \\ []) do
    request(client, "StartExecution", input, options)
  end

  @doc """
  Stops an execution.
  """
  def stop_execution(client, input, options \\ []) do
    request(client, "StopExecution", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "states"}
    host = get_host("states", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.0"},
               {"X-Amz-Target", "AWSStepFunctions.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
