# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodePipeline do
  @moduledoc """
  AWS CodePipeline

  **Overview**

  This is the AWS CodePipeline API Reference. This guide provides
  descriptions of the actions and data types for AWS CodePipeline. Some
  functionality for your pipeline can only be configured through the API. For
  more information, see the [AWS CodePipeline User
  Guide](https://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html).

  You can use the AWS CodePipeline API to work with pipelines, stages,
  actions, and transitions.

  *Pipelines* are models of automated release processes. Each pipeline is
  uniquely named, and consists of stages, actions, and transitions.

  You can work with pipelines by calling:

  <ul> <li> `CreatePipeline`, which creates a uniquely named pipeline.

  </li> <li> `DeletePipeline`, which deletes the specified pipeline.

  </li> <li> `GetPipeline`, which returns information about the pipeline
  structure and pipeline metadata, including the pipeline Amazon Resource
  Name (ARN).

  </li> <li> `GetPipelineExecution`, which returns information about a
  specific execution of a pipeline.

  </li> <li> `GetPipelineState`, which returns information about the current
  state of the stages and actions of a pipeline.

  </li> <li> `ListActionExecutions`, which returns action-level details for
  past executions. The details include full stage and action-level details,
  including individual action duration, status, any errors that occurred
  during the execution, and input and output artifact location details.

  </li> <li> `ListPipelines`, which gets a summary of all of the pipelines
  associated with your account.

  </li> <li> `ListPipelineExecutions`, which gets a summary of the most
  recent executions for a pipeline.

  </li> <li> `StartPipelineExecution`, which runs the most recent revision of
  an artifact through the pipeline.

  </li> <li> `StopPipelineExecution`, which stops the specified pipeline
  execution from continuing through the pipeline.

  </li> <li> `UpdatePipeline`, which updates a pipeline with edits or changes
  to the structure of the pipeline.

  </li> </ul> Pipelines include *stages*. Each stage contains one or more
  actions that must complete before the next stage begins. A stage results in
  success or failure. If a stage fails, the pipeline stops at that stage and
  remains stopped until either a new version of an artifact appears in the
  source location, or a user takes action to rerun the most recent artifact
  through the pipeline. You can call `GetPipelineState`, which displays the
  status of a pipeline, including the status of stages in the pipeline, or
  `GetPipeline`, which returns the entire structure of the pipeline,
  including the stages of that pipeline. For more information about the
  structure of stages and actions, see [AWS CodePipeline Pipeline Structure
  Reference](https://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-structure.html).

  Pipeline stages include *actions* that are categorized into categories such
  as source or build actions performed in a stage of a pipeline. For example,
  you can use a source action to import artifacts into a pipeline from a
  source such as Amazon S3. Like stages, you do not work with actions
  directly in most cases, but you do define and interact with actions when
  working with pipeline operations such as `CreatePipeline` and
  `GetPipelineState`. Valid action categories are:

  <ul> <li> Source

  </li> <li> Build

  </li> <li> Test

  </li> <li> Deploy

  </li> <li> Approval

  </li> <li> Invoke

  </li> </ul> Pipelines also include *transitions*, which allow the
  transition of artifacts from one stage to the next in a pipeline after the
  actions in one stage complete.

  You can work with transitions by calling:

  <ul> <li> `DisableStageTransition`, which prevents artifacts from
  transitioning to the next stage in a pipeline.

  </li> <li> `EnableStageTransition`, which enables transition of artifacts
  between stages in a pipeline.

  </li> </ul> **Using the API to integrate with AWS CodePipeline**

  For third-party integrators or developers who want to create their own
  integrations with AWS CodePipeline, the expected sequence varies from the
  standard API user. To integrate with AWS CodePipeline, developers need to
  work with the following items:

  **Jobs**, which are instances of an action. For example, a job for a source
  action might import a revision of an artifact from a source.

  You can work with jobs by calling:

  <ul> <li> `AcknowledgeJob`, which confirms whether a job worker has
  received the specified job.

  </li> <li> `GetJobDetails`, which returns the details of a job.

  </li> <li> `PollForJobs`, which determines whether there are any jobs to
  act on.

  </li> <li> `PutJobFailureResult`, which provides details of a job failure.

  </li> <li> `PutJobSuccessResult`, which provides details of a job success.

  </li> </ul> **Third party jobs**, which are instances of an action created
  by a partner action and integrated into AWS CodePipeline. Partner actions
  are created by members of the AWS Partner Network.

  You can work with third party jobs by calling:

  <ul> <li> `AcknowledgeThirdPartyJob`, which confirms whether a job worker
  has received the specified job.

  </li> <li> `GetThirdPartyJobDetails`, which requests the details of a job
  for a partner action.

  </li> <li> `PollForThirdPartyJobs`, which determines whether there are any
  jobs to act on.

  </li> <li> `PutThirdPartyJobFailureResult`, which provides details of a job
  failure.

  </li> <li> `PutThirdPartyJobSuccessResult`, which provides details of a job
  success.

  </li> </ul>
  """

  @doc """
  Returns information about a specified job and whether that job has been
  received by the job worker. Used for custom actions only.
  """
  def acknowledge_job(client, input, options \\ []) do
    request(client, "AcknowledgeJob", input, options)
  end

  @doc """
  Confirms a job worker has received the specified job. Used for partner
  actions only.
  """
  def acknowledge_third_party_job(client, input, options \\ []) do
    request(client, "AcknowledgeThirdPartyJob", input, options)
  end

  @doc """
  Creates a new custom action that can be used in all pipelines associated
  with the AWS account. Only used for custom actions.
  """
  def create_custom_action_type(client, input, options \\ []) do
    request(client, "CreateCustomActionType", input, options)
  end

  @doc """
  Creates a pipeline.

  <note> In the pipeline structure, you must include either `artifactStore`
  or `artifactStores` in your pipeline, but you cannot use both. If you
  create a cross-region action in your pipeline, you must use
  `artifactStores`.

  </note>
  """
  def create_pipeline(client, input, options \\ []) do
    request(client, "CreatePipeline", input, options)
  end

  @doc """
  Marks a custom action as deleted. `PollForJobs` for the custom action fails
  after the action is marked for deletion. Used for custom actions only.

  <important> To re-create a custom action after it has been deleted you must
  use a string in the version field that has never been used before. This
  string can be an incremented version number, for example. To restore a
  deleted custom action, use a JSON file that is identical to the deleted
  action, including the original string in the version field.

  </important>
  """
  def delete_custom_action_type(client, input, options \\ []) do
    request(client, "DeleteCustomActionType", input, options)
  end

  @doc """
  Deletes the specified pipeline.
  """
  def delete_pipeline(client, input, options \\ []) do
    request(client, "DeletePipeline", input, options)
  end

  @doc """
  Deletes a previously created webhook by name. Deleting the webhook stops
  AWS CodePipeline from starting a pipeline every time an external event
  occurs. The API returns successfully when trying to delete a webhook that
  is already deleted. If a deleted webhook is re-created by calling
  PutWebhook with the same name, it will have a different URL.
  """
  def delete_webhook(client, input, options \\ []) do
    request(client, "DeleteWebhook", input, options)
  end

  @doc """
  Removes the connection between the webhook that was created by CodePipeline
  and the external tool with events to be detected. Currently supported only
  for webhooks that target an action type of GitHub.
  """
  def deregister_webhook_with_third_party(client, input, options \\ []) do
    request(client, "DeregisterWebhookWithThirdParty", input, options)
  end

  @doc """
  Prevents artifacts in a pipeline from transitioning to the next stage in
  the pipeline.
  """
  def disable_stage_transition(client, input, options \\ []) do
    request(client, "DisableStageTransition", input, options)
  end

  @doc """
  Enables artifacts in a pipeline to transition to a stage in a pipeline.
  """
  def enable_stage_transition(client, input, options \\ []) do
    request(client, "EnableStageTransition", input, options)
  end

  @doc """
  Returns information about a job. Used for custom actions only.

  <important> When this API is called, AWS CodePipeline returns temporary
  credentials for the S3 bucket used to store artifacts for the pipeline, if
  the action requires access to that S3 bucket for input or output artifacts.
  This API also returns any secret values defined for the action.

  </important>
  """
  def get_job_details(client, input, options \\ []) do
    request(client, "GetJobDetails", input, options)
  end

  @doc """
  Returns the metadata, structure, stages, and actions of a pipeline. Can be
  used to return the entire structure of a pipeline in JSON format, which can
  then be modified and used to update the pipeline structure with
  `UpdatePipeline`.
  """
  def get_pipeline(client, input, options \\ []) do
    request(client, "GetPipeline", input, options)
  end

  @doc """
  Returns information about an execution of a pipeline, including details
  about artifacts, the pipeline execution ID, and the name, version, and
  status of the pipeline.
  """
  def get_pipeline_execution(client, input, options \\ []) do
    request(client, "GetPipelineExecution", input, options)
  end

  @doc """
  Returns information about the state of a pipeline, including the stages and
  actions.

  <note> Values returned in the `revisionId` and `revisionUrl` fields
  indicate the source revision information, such as the commit ID, for the
  current state.

  </note>
  """
  def get_pipeline_state(client, input, options \\ []) do
    request(client, "GetPipelineState", input, options)
  end

  @doc """
  Requests the details of a job for a third party action. Used for partner
  actions only.

  <important> When this API is called, AWS CodePipeline returns temporary
  credentials for the S3 bucket used to store artifacts for the pipeline, if
  the action requires access to that S3 bucket for input or output artifacts.
  This API also returns any secret values defined for the action.

  </important>
  """
  def get_third_party_job_details(client, input, options \\ []) do
    request(client, "GetThirdPartyJobDetails", input, options)
  end

  @doc """
  Lists the action executions that have occurred in a pipeline.
  """
  def list_action_executions(client, input, options \\ []) do
    request(client, "ListActionExecutions", input, options)
  end

  @doc """
  Gets a summary of all AWS CodePipeline action types associated with your
  account.
  """
  def list_action_types(client, input, options \\ []) do
    request(client, "ListActionTypes", input, options)
  end

  @doc """
  Gets a summary of the most recent executions for a pipeline.
  """
  def list_pipeline_executions(client, input, options \\ []) do
    request(client, "ListPipelineExecutions", input, options)
  end

  @doc """
  Gets a summary of all of the pipelines associated with your account.
  """
  def list_pipelines(client, input, options \\ []) do
    request(client, "ListPipelines", input, options)
  end

  @doc """
  Gets the set of key-value pairs (metadata) that are used to manage the
  resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Gets a listing of all the webhooks in this AWS Region for this account. The
  output lists all webhooks and includes the webhook URL and ARN and the
  configuration for each webhook.
  """
  def list_webhooks(client, input, options \\ []) do
    request(client, "ListWebhooks", input, options)
  end

  @doc """
  Returns information about any jobs for AWS CodePipeline to act on.
  `PollForJobs` is valid only for action types with "Custom" in the owner
  field. If the action type contains "AWS" or "ThirdParty" in the owner
  field, the `PollForJobs` action returns an error.

  <important> When this API is called, AWS CodePipeline returns temporary
  credentials for the S3 bucket used to store artifacts for the pipeline, if
  the action requires access to that S3 bucket for input or output artifacts.
  This API also returns any secret values defined for the action.

  </important>
  """
  def poll_for_jobs(client, input, options \\ []) do
    request(client, "PollForJobs", input, options)
  end

  @doc """
  Determines whether there are any third party jobs for a job worker to act
  on. Used for partner actions only.

  <important> When this API is called, AWS CodePipeline returns temporary
  credentials for the S3 bucket used to store artifacts for the pipeline, if
  the action requires access to that S3 bucket for input or output artifacts.

  </important>
  """
  def poll_for_third_party_jobs(client, input, options \\ []) do
    request(client, "PollForThirdPartyJobs", input, options)
  end

  @doc """
  Provides information to AWS CodePipeline about new revisions to a source.
  """
  def put_action_revision(client, input, options \\ []) do
    request(client, "PutActionRevision", input, options)
  end

  @doc """
  Provides the response to a manual approval request to AWS CodePipeline.
  Valid responses include Approved and Rejected.
  """
  def put_approval_result(client, input, options \\ []) do
    request(client, "PutApprovalResult", input, options)
  end

  @doc """
  Represents the failure of a job as returned to the pipeline by a job
  worker. Used for custom actions only.
  """
  def put_job_failure_result(client, input, options \\ []) do
    request(client, "PutJobFailureResult", input, options)
  end

  @doc """
  Represents the success of a job as returned to the pipeline by a job
  worker. Used for custom actions only.
  """
  def put_job_success_result(client, input, options \\ []) do
    request(client, "PutJobSuccessResult", input, options)
  end

  @doc """
  Represents the failure of a third party job as returned to the pipeline by
  a job worker. Used for partner actions only.
  """
  def put_third_party_job_failure_result(client, input, options \\ []) do
    request(client, "PutThirdPartyJobFailureResult", input, options)
  end

  @doc """
  Represents the success of a third party job as returned to the pipeline by
  a job worker. Used for partner actions only.
  """
  def put_third_party_job_success_result(client, input, options \\ []) do
    request(client, "PutThirdPartyJobSuccessResult", input, options)
  end

  @doc """
  Defines a webhook and returns a unique webhook URL generated by
  CodePipeline. This URL can be supplied to third party source hosting
  providers to call every time there's a code change. When CodePipeline
  receives a POST request on this URL, the pipeline defined in the webhook is
  started as long as the POST request satisfied the authentication and
  filtering requirements supplied when defining the webhook.
  RegisterWebhookWithThirdParty and DeregisterWebhookWithThirdParty APIs can
  be used to automatically configure supported third parties to call the
  generated webhook URL.
  """
  def put_webhook(client, input, options \\ []) do
    request(client, "PutWebhook", input, options)
  end

  @doc """
  Configures a connection between the webhook that was created and the
  external tool with events to be detected.
  """
  def register_webhook_with_third_party(client, input, options \\ []) do
    request(client, "RegisterWebhookWithThirdParty", input, options)
  end

  @doc """
  Resumes the pipeline execution by retrying the last failed actions in a
  stage. You can retry a stage immediately if any of the actions in the stage
  fail. When you retry, all actions that are still in progress continue
  working, and failed actions are triggered again.
  """
  def retry_stage_execution(client, input, options \\ []) do
    request(client, "RetryStageExecution", input, options)
  end

  @doc """
  Starts the specified pipeline. Specifically, it begins processing the
  latest commit to the source location specified as part of the pipeline.
  """
  def start_pipeline_execution(client, input, options \\ []) do
    request(client, "StartPipelineExecution", input, options)
  end

  @doc """
  Stops the specified pipeline execution. You choose to either stop the
  pipeline execution by completing in-progress actions without starting
  subsequent actions, or by abandoning in-progress actions. While completing
  or abandoning in-progress actions, the pipeline execution is in a
  `Stopping` state. After all in-progress actions are completed or abandoned,
  the pipeline execution is in a `Stopped` state.
  """
  def stop_pipeline_execution(client, input, options \\ []) do
    request(client, "StopPipelineExecution", input, options)
  end

  @doc """
  Adds to or modifies the tags of the given resource. Tags are metadata that
  can be used to manage a resource.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes tags from an AWS resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates a specified pipeline with edits or changes to its structure. Use a
  JSON file with the pipeline structure and `UpdatePipeline` to provide the
  full structure of the pipeline. Updating the pipeline increases the version
  number of the pipeline by 1.
  """
  def update_pipeline(client, input, options \\ []) do
    request(client, "UpdatePipeline", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "codepipeline"}
    host = get_host("codepipeline", client)
    url = get_url(host, client)

    headers = if client.session_token do
      [{"X-Amz-Security-Token", client.session_token}]
    else
      []
    end

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "CodePipeline_20150709.#{action}"} | headers]

    payload = Poison.Encoder.encode(input, %{})
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}
    
      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
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
