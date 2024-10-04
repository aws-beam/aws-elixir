# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodePipeline do
  @moduledoc """
  CodePipeline

  ## Overview

  This is the CodePipeline API Reference.

  This guide provides descriptions
  of the actions and data types for CodePipeline. Some functionality for your
  pipeline can only be configured through the API. For more information, see the
  [CodePipeline User Guide](https://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html).

  You can use the CodePipeline API to work with pipelines, stages, actions,
  and transitions.

  *Pipelines* are models of automated release processes. Each pipeline
  is uniquely named, and consists of stages, actions, and transitions.

  You can work with pipelines by calling:

    *

  `CreatePipeline`, which creates a uniquely named
  pipeline.

    *

  `DeletePipeline`, which deletes the specified
  pipeline.

    *

  `GetPipeline`, which returns information about the pipeline
  structure and pipeline metadata, including the pipeline Amazon Resource Name
  (ARN).

    *

  `GetPipelineExecution`, which returns information about a
  specific execution of a pipeline.

    *

  `GetPipelineState`, which returns information about the current
  state of the stages and actions of a pipeline.

    *

  `ListActionExecutions`, which returns action-level details
  for past executions. The details include full stage and action-level details,
  including individual action duration, status, any errors that occurred during
  the execution, and input and output artifact location details.

    *

  `ListPipelines`, which gets a summary of all of the pipelines
  associated with your account.

    *

  `ListPipelineExecutions`, which gets a summary of the most
  recent executions for a pipeline.

    *

  `StartPipelineExecution`, which runs the most recent revision of
  an artifact through the pipeline.

    *

  `StopPipelineExecution`, which stops the specified pipeline
  execution from continuing through the pipeline.

    *

  `UpdatePipeline`, which updates a pipeline with edits or changes
  to the structure of the pipeline.

  Pipelines include *stages*. Each stage contains one or more
  actions that must complete before the next stage begins. A stage results in
  success or
  failure. If a stage fails, the pipeline stops at that stage and remains stopped
  until
  either a new version of an artifact appears in the source location, or a user
  takes
  action to rerun the most recent artifact through the pipeline. You can call
  `GetPipelineState`, which displays the status of a pipeline, including the
  status of stages in the pipeline, or `GetPipeline`, which returns the
  entire structure of the pipeline, including the stages of that pipeline. For
  more
  information about the structure of stages and actions, see [CodePipeline Pipeline Structure
  Reference](https://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-structure.html).

  Pipeline stages include *actions* that are categorized into
  categories such as source or build actions performed in a stage of a pipeline.
  For
  example, you can use a source action to import artifacts into a pipeline from a
  source
  such as Amazon S3. Like stages, you do not work with actions directly in most
  cases, but
  you do define and interact with actions when working with pipeline operations
  such as
  `CreatePipeline` and `GetPipelineState`. Valid
  action categories are:

    *
  Source

    *
  Build

    *
  Test

    *
  Deploy

    *
  Approval

    *
  Invoke

  Pipelines also include *transitions*, which allow the transition
  of artifacts from one stage to the next in a pipeline after the actions in one
  stage
  complete.

  You can work with transitions by calling:

    *

  `DisableStageTransition`, which prevents artifacts from
  transitioning to the next stage in a pipeline.

    *

  `EnableStageTransition`, which enables transition of artifacts
  between stages in a pipeline.

  ## Using the API to integrate with CodePipeline

  For third-party integrators or developers who want to create their own
  integrations
  with CodePipeline, the expected sequence varies from the standard API user. To
  integrate with CodePipeline, developers need to work with the following
  items:

  **Jobs**, which are instances of an action. For
  example, a job for a source action might import a revision of an artifact from a
  source.

  You can work with jobs by calling:

    *

  `AcknowledgeJob`, which confirms whether a job worker has
  received the specified job.

    *

  `GetJobDetails`, which returns the details of a job.

    *

  `PollForJobs`, which determines whether there are any jobs to
  act on.

    *

  `PutJobFailureResult`, which provides details of a job failure.

    *

  `PutJobSuccessResult`, which provides details of a job
  success.

  **Third party jobs**, which are instances of an action
  created by a partner action and integrated into CodePipeline. Partner actions
  are
  created by members of the Amazon Web Services Partner Network.

  You can work with third party jobs by calling:

    *

  `AcknowledgeThirdPartyJob`, which confirms whether a job worker
  has received the specified job.

    *

  `GetThirdPartyJobDetails`, which requests the details of a job
  for a partner action.

    *

  `PollForThirdPartyJobs`, which determines whether there are any
  jobs to act on.

    *

  `PutThirdPartyJobFailureResult`, which provides details of a job
  failure.

    *

  `PutThirdPartyJobSuccessResult`, which provides details of a job
  success.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_action_type_output() :: %{
        "actionType" => action_type_declaration()
      }
      
  """
  @type get_action_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unable_to_rollback_stage_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unable_to_rollback_stage_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_blocker_declaration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_blocker_declaration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      latest_in_pipeline_execution_filter() :: %{
        "pipelineExecutionId" => String.t(),
        "startTimeRange" => list(any())
      }
      
  """
  @type latest_in_pipeline_execution_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_context() :: %{
        "actionExecutionId" => String.t(),
        "name" => String.t()
      }
      
  """
  @type action_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      git_branch_filter_criteria() :: %{
        "excludes" => list(String.t()()),
        "includes" => list(String.t()())
      }
      
  """
  @type git_branch_filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      override_stage_condition_input() :: %{
        required("conditionType") => list(any()),
        required("pipelineExecutionId") => String.t(),
        required("pipelineName") => String.t(),
        required("stageName") => String.t()
      }
      
  """
  @type override_stage_condition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_failed_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type request_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_action_executions_output() :: %{
        "actionExecutionDetails" => list(action_execution_detail()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_action_executions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_session_credentials() :: %{
        "accessKeyId" => String.t(),
        "secretAccessKey" => String.t(),
        "sessionToken" => String.t()
      }
      
  """
  @type aws_session_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      webhook_auth_configuration() :: %{
        "AllowedIPRange" => String.t(),
        "SecretToken" => String.t()
      }
      
  """
  @type webhook_auth_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stage_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type stage_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      poll_for_third_party_jobs_input() :: %{
        optional("maxBatchSize") => integer(),
        required("actionTypeId") => action_type_id()
      }
      
  """
  @type poll_for_third_party_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_pipeline_execution_output() :: %{
        "pipelineExecutionId" => String.t()
      }
      
  """
  @type stop_pipeline_execution_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_webhook_item() :: %{
        "arn" => String.t(),
        "definition" => webhook_definition(),
        "errorCode" => String.t(),
        "errorMessage" => String.t(),
        "lastTriggered" => non_neg_integer(),
        "tags" => list(tag()()),
        "url" => String.t()
      }
      
  """
  @type list_webhook_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_declaration() :: %{
        "artifactStore" => artifact_store(),
        "artifactStores" => map(),
        "executionMode" => list(any()),
        "name" => String.t(),
        "pipelineType" => list(any()),
        "roleArn" => String.t(),
        "stages" => list(stage_declaration()()),
        "triggers" => list(pipeline_trigger_declaration()()),
        "variables" => list(pipeline_variable_declaration()()),
        "version" => integer()
      }
      
  """
  @type pipeline_declaration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_artifact() :: %{
        "files" => list(String.t()()),
        "name" => String.t()
      }
      
  """
  @type output_artifact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_type_permissions() :: %{
        "allowedAccounts" => list(String.t()())
      }
      
  """
  @type action_type_permissions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolved_pipeline_variable() :: %{
        "name" => String.t(),
        "resolvedValue" => String.t()
      }
      
  """
  @type resolved_pipeline_variable() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_approval_result_output() :: %{
        "approvedAt" => non_neg_integer()
      }
      
  """
  @type put_approval_result_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_pipeline_output() :: %{
        "pipeline" => pipeline_declaration(),
        "tags" => list(tag()())
      }
      
  """
  @type create_pipeline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_webhook_output() :: %{}
      
  """
  @type delete_webhook_output() :: %{}

  @typedoc """

  ## Example:
      
      action_state() :: %{
        "actionName" => String.t(),
        "currentRevision" => action_revision(),
        "entityUrl" => String.t(),
        "latestExecution" => action_execution(),
        "revisionUrl" => String.t()
      }
      
  """
  @type action_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_webhook_output() :: %{
        "webhook" => list_webhook_item()
      }
      
  """
  @type put_webhook_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      artifact_revision() :: %{
        "created" => non_neg_integer(),
        "name" => String.t(),
        "revisionChangeIdentifier" => String.t(),
        "revisionId" => String.t(),
        "revisionSummary" => String.t(),
        "revisionUrl" => String.t()
      }
      
  """
  @type artifact_revision() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_trigger_declaration() :: %{
        "gitConfiguration" => git_configuration(),
        "providerType" => list(any())
      }
      
  """
  @type pipeline_trigger_declaration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_state() :: %{
        "currentRevision" => rule_revision(),
        "entityUrl" => String.t(),
        "latestExecution" => rule_execution(),
        "revisionUrl" => String.t(),
        "ruleName" => String.t()
      }
      
  """
  @type rule_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_details() :: %{
        "externalExecutionId" => String.t(),
        "percentComplete" => integer(),
        "summary" => String.t()
      }
      
  """
  @type execution_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_type_settings() :: %{
        "entityUrlTemplate" => String.t(),
        "executionUrlTemplate" => String.t(),
        "revisionUrlTemplate" => String.t(),
        "thirdPartyConfigurationUrl" => String.t()
      }
      
  """
  @type rule_type_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_latest_pipeline_execution_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type not_latest_pipeline_execution_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_execution_detail() :: %{
        "input" => rule_execution_input(),
        "lastUpdateTime" => non_neg_integer(),
        "output" => rule_execution_output(),
        "pipelineExecutionId" => String.t(),
        "pipelineVersion" => integer(),
        "ruleExecutionId" => String.t(),
        "ruleName" => String.t(),
        "stageName" => String.t(),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "updatedBy" => String.t()
      }
      
  """
  @type rule_execution_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      executor_configuration() :: %{
        "jobWorkerExecutorConfiguration" => job_worker_executor_configuration(),
        "lambdaExecutorConfiguration" => lambda_executor_configuration()
      }
      
  """
  @type executor_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_action_declaration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_action_declaration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_third_party_job_failure_result_input() :: %{
        required("clientToken") => String.t(),
        required("failureDetails") => failure_details(),
        required("jobId") => String.t()
      }
      
  """
  @type put_third_party_job_failure_result_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_execution_summary() :: %{
        "executionMode" => list(any()),
        "executionType" => list(any()),
        "lastUpdateTime" => non_neg_integer(),
        "pipelineExecutionId" => String.t(),
        "rollbackMetadata" => pipeline_rollback_metadata(),
        "sourceRevisions" => list(source_revision()()),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "statusSummary" => String.t(),
        "stopTrigger" => stop_execution_trigger(),
        "trigger" => execution_trigger()
      }
      
  """
  @type pipeline_execution_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_third_party_job_details_output() :: %{
        "jobDetails" => third_party_job_details()
      }
      
  """
  @type get_third_party_job_details_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      third_party_job() :: %{
        "clientId" => String.t(),
        "jobId" => String.t()
      }
      
  """
  @type third_party_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      acknowledge_third_party_job_output() :: %{
        "status" => list(any())
      }
      
  """
  @type acknowledge_third_party_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_execution() :: %{
        "artifactRevisions" => list(artifact_revision()()),
        "executionMode" => list(any()),
        "executionType" => list(any()),
        "pipelineExecutionId" => String.t(),
        "pipelineName" => String.t(),
        "pipelineVersion" => integer(),
        "rollbackMetadata" => pipeline_rollback_metadata(),
        "status" => list(any()),
        "statusSummary" => String.t(),
        "trigger" => execution_trigger(),
        "variables" => list(resolved_pipeline_variable()())
      }
      
  """
  @type pipeline_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      acknowledge_job_output() :: %{
        "status" => list(any())
      }
      
  """
  @type acknowledge_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      acknowledge_third_party_job_input() :: %{
        required("clientToken") => String.t(),
        required("jobId") => String.t(),
        required("nonce") => String.t()
      }
      
  """
  @type acknowledge_third_party_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_execution_filter() :: %{
        "latestInPipelineExecution" => latest_in_pipeline_execution_filter(),
        "pipelineExecutionId" => String.t()
      }
      
  """
  @type rule_execution_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rule_types_output() :: %{
        "ruleTypes" => list(rule_type()())
      }
      
  """
  @type list_rule_types_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_variable_declaration() :: %{
        "defaultValue" => String.t(),
        "description" => String.t(),
        "name" => String.t()
      }
      
  """
  @type pipeline_variable_declaration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_name_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type pipeline_name_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_pipeline_output() :: %{
        "metadata" => pipeline_metadata(),
        "pipeline" => pipeline_declaration()
      }
      
  """
  @type get_pipeline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failure_conditions() :: %{
        "conditions" => list(condition()()),
        "result" => list(any())
      }
      
  """
  @type failure_conditions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_revision() :: %{
        "created" => non_neg_integer(),
        "revisionChangeId" => String.t(),
        "revisionId" => String.t()
      }
      
  """
  @type action_revision() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_execution_result() :: %{
        "errorDetails" => error_details(),
        "externalExecutionId" => String.t(),
        "externalExecutionSummary" => String.t(),
        "externalExecutionUrl" => String.t()
      }
      
  """
  @type rule_execution_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stage_context() :: %{
        "name" => String.t()
      }
      
  """
  @type stage_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_stage_transition_input() :: %{
        required("pipelineName") => String.t(),
        required("stageName") => String.t(),
        required("transitionType") => list(any())
      }
      
  """
  @type enable_stage_transition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      third_party_job_data() :: %{
        "actionConfiguration" => action_configuration(),
        "actionTypeId" => action_type_id(),
        "artifactCredentials" => aws_session_credentials(),
        "continuationToken" => String.t(),
        "encryptionKey" => encryption_key(),
        "inputArtifacts" => list(artifact()()),
        "outputArtifacts" => list(artifact()()),
        "pipelineContext" => pipeline_context()
      }
      
  """
  @type third_party_job_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_webhooks_output() :: %{
        "NextToken" => String.t(),
        "webhooks" => list(list_webhook_item()())
      }
      
  """
  @type list_webhooks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_job_success_result_input() :: %{
        optional("continuationToken") => String.t(),
        optional("currentRevision") => current_revision(),
        optional("executionDetails") => execution_details(),
        optional("outputVariables") => map(),
        required("jobId") => String.t()
      }
      
  """
  @type put_job_success_result_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_pipeline_execution_input() :: %{
        required("pipelineExecutionId") => String.t(),
        required("pipelineName") => String.t()
      }
      
  """
  @type get_pipeline_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        "nextToken" => String.t(),
        "tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      failure_details() :: %{
        "externalExecutionId" => String.t(),
        "message" => String.t(),
        "type" => list(any())
      }
      
  """
  @type failure_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_execution_not_stoppable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type pipeline_execution_not_stoppable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_webhooks_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_webhooks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_rollback_metadata() :: %{
        "rollbackTargetPipelineExecutionId" => String.t()
      }
      
  """
  @type pipeline_rollback_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_arn_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_arn_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_pipeline_input() :: %{
        required("pipeline") => pipeline_declaration()
      }
      
  """
  @type update_pipeline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_type() :: %{
        "id" => rule_type_id(),
        "inputArtifactDetails" => artifact_details(),
        "ruleConfigurationProperties" => list(rule_configuration_property()()),
        "settings" => rule_type_settings()
      }
      
  """
  @type rule_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_execution_filter() :: %{
        "succeededInStage" => succeeded_in_stage_filter()
      }
      
  """
  @type pipeline_execution_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_trigger() :: %{
        "triggerDetail" => String.t(),
        "triggerType" => list(any())
      }
      
  """
  @type execution_trigger() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rule_types_input() :: %{
        optional("regionFilter") => String.t(),
        optional("ruleOwnerFilter") => list(any())
      }
      
  """
  @type list_rule_types_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_pipeline_input() :: %{
        required("name") => String.t()
      }
      
  """
  @type delete_pipeline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      artifact_store() :: %{
        "encryptionKey" => encryption_key(),
        "location" => String.t(),
        "type" => list(any())
      }
      
  """
  @type artifact_store() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      artifact_location() :: %{
        "s3Location" => s3_artifact_location(),
        "type" => list(any())
      }
      
  """
  @type artifact_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_data() :: %{
        "actionConfiguration" => action_configuration(),
        "actionTypeId" => action_type_id(),
        "artifactCredentials" => aws_session_credentials(),
        "continuationToken" => String.t(),
        "encryptionKey" => encryption_key(),
        "inputArtifacts" => list(artifact()()),
        "outputArtifacts" => list(artifact()()),
        "pipelineContext" => pipeline_context()
      }
      
  """
  @type job_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      condition_state() :: %{
        "latestExecution" => condition_execution(),
        "ruleStates" => list(rule_state()())
      }
      
  """
  @type condition_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_tags_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_webhook_filter_pattern_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_webhook_filter_pattern_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_execution_output() :: %{
        "executionResult" => rule_execution_result()
      }
      
  """
  @type rule_execution_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      git_file_path_filter_criteria() :: %{
        "excludes" => list(String.t()()),
        "includes" => list(String.t()())
      }
      
  """
  @type git_file_path_filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_worker_executor_configuration() :: %{
        "pollingAccounts" => list(String.t()()),
        "pollingServicePrincipals" => list(String.t()())
      }
      
  """
  @type job_worker_executor_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      approval_already_completed_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type approval_already_completed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      current_revision() :: %{
        "changeIdentifier" => String.t(),
        "created" => non_neg_integer(),
        "revision" => String.t(),
        "revisionSummary" => String.t()
      }
      
  """
  @type current_revision() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_execution_filter() :: %{
        "latestInPipelineExecution" => latest_in_pipeline_execution_filter(),
        "pipelineExecutionId" => String.t()
      }
      
  """
  @type action_execution_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_pipeline_input() :: %{
        optional("tags") => list(tag()()),
        required("pipeline") => pipeline_declaration()
      }
      
  """
  @type create_pipeline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_declaration() :: %{
        "actionTypeId" => action_type_id(),
        "commands" => list(String.t()()),
        "configuration" => map(),
        "inputArtifacts" => list(input_artifact()()),
        "name" => String.t(),
        "namespace" => String.t(),
        "outputArtifacts" => list(output_artifact()()),
        "outputVariables" => list(String.t()()),
        "region" => String.t(),
        "roleArn" => String.t(),
        "runOrder" => integer(),
        "timeoutInMinutes" => integer()
      }
      
  """
  @type action_declaration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_artifact() :: %{
        "name" => String.t()
      }
      
  """
  @type input_artifact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_webhook_input() :: %{
        optional("tags") => list(tag()()),
        required("webhook") => webhook_definition()
      }
      
  """
  @type put_webhook_input() :: %{String.t() => any()}

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
      
      stage_conditions_execution() :: %{
        "status" => list(any()),
        "summary" => String.t()
      }
      
  """
  @type stage_conditions_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_execution() :: %{
        "actionExecutionId" => String.t(),
        "errorDetails" => error_details(),
        "externalExecutionId" => String.t(),
        "externalExecutionUrl" => String.t(),
        "lastStatusChange" => non_neg_integer(),
        "lastUpdatedBy" => String.t(),
        "percentComplete" => integer(),
        "status" => list(any()),
        "summary" => String.t(),
        "token" => String.t()
      }
      
  """
  @type action_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pipelines_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_pipelines_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_action_type_input() :: %{
        required("category") => list(any()),
        required("owner") => String.t(),
        required("provider") => String.t(),
        required("version") => String.t()
      }
      
  """
  @type get_action_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      artifact_detail() :: %{
        "name" => String.t(),
        "s3location" => s3_location()
      }
      
  """
  @type artifact_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_action_type_input() :: %{
        required("actionType") => action_type_declaration()
      }
      
  """
  @type update_action_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_type_artifact_details() :: %{
        "maximumCount" => integer(),
        "minimumCount" => integer()
      }
      
  """
  @type action_type_artifact_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rollback_stage_output() :: %{
        "pipelineExecutionId" => String.t()
      }
      
  """
  @type rollback_stage_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_approval_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_approval_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_job_failure_result_input() :: %{
        required("failureDetails") => failure_details(),
        required("jobId") => String.t()
      }
      
  """
  @type put_job_failure_result_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_execution_output() :: %{
        "executionResult" => action_execution_result(),
        "outputArtifacts" => list(artifact_detail()()),
        "outputVariables" => map()
      }
      
  """
  @type action_execution_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_stage_declaration_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_stage_declaration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_action_executions_input() :: %{
        optional("filter") => action_execution_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("pipelineName") => String.t()
      }
      
  """
  @type list_action_executions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_artifact_location() :: %{
        "bucketName" => String.t(),
        "objectKey" => String.t()
      }
      
  """
  @type s3_artifact_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pipeline_executions_output() :: %{
        "nextToken" => String.t(),
        "pipelineExecutionSummaries" => list(pipeline_execution_summary()())
      }
      
  """
  @type list_pipeline_executions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_type_urls() :: %{
        "configurationUrl" => String.t(),
        "entityUrlTemplate" => String.t(),
        "executionUrlTemplate" => String.t(),
        "revisionUrlTemplate" => String.t()
      }
      
  """
  @type action_type_urls() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_execution_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type pipeline_execution_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_pipeline_execution_output() :: %{
        "pipelineExecutionId" => String.t()
      }
      
  """
  @type start_pipeline_execution_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      transition_state() :: %{
        "disabledReason" => String.t(),
        "enabled" => boolean(),
        "lastChangedAt" => non_neg_integer(),
        "lastChangedBy" => String.t()
      }
      
  """
  @type transition_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_summary() :: %{
        "created" => non_neg_integer(),
        "executionMode" => list(any()),
        "name" => String.t(),
        "pipelineType" => list(any()),
        "updated" => non_neg_integer(),
        "version" => integer()
      }
      
  """
  @type pipeline_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      error_details() :: %{
        "code" => String.t(),
        "message" => String.t()
      }
      
  """
  @type error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      git_configuration() :: %{
        "pullRequest" => list(git_pull_request_filter()()),
        "push" => list(git_push_filter()()),
        "sourceActionName" => String.t()
      }
      
  """
  @type git_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_action_types_output() :: %{
        "actionTypes" => list(action_type()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_action_types_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_type_id() :: %{
        "category" => list(any()),
        "owner" => list(any()),
        "provider" => String.t(),
        "version" => String.t()
      }
      
  """
  @type action_type_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      webhook_definition() :: %{
        "authentication" => list(any()),
        "authenticationConfiguration" => webhook_auth_configuration(),
        "filters" => list(webhook_filter_rule()()),
        "name" => String.t(),
        "targetAction" => String.t(),
        "targetPipeline" => String.t()
      }
      
  """
  @type webhook_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      condition() :: %{
        "result" => list(any()),
        "rules" => list(rule_declaration()())
      }
      
  """
  @type condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_location() :: %{
        "bucket" => String.t(),
        "key" => String.t()
      }
      
  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_job_details_input() :: %{
        required("jobId") => String.t()
      }
      
  """
  @type get_job_details_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      condition_not_overridable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type condition_not_overridable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_pipeline_state_output() :: %{
        "created" => non_neg_integer(),
        "pipelineName" => String.t(),
        "pipelineVersion" => integer(),
        "stageStates" => list(stage_state()()),
        "updated" => non_neg_integer()
      }
      
  """
  @type get_pipeline_state_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_type_executor() :: %{
        "configuration" => executor_configuration(),
        "jobTimeout" => integer(),
        "policyStatementsTemplate" => String.t(),
        "type" => list(any())
      }
      
  """
  @type action_type_executor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("resourceArn") => String.t(),
        required("tags") => list(tag()())
      }
      
  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      approval_result() :: %{
        "status" => list(any()),
        "summary" => String.t()
      }
      
  """
  @type approval_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stage_not_retryable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type stage_not_retryable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      git_pull_request_filter() :: %{
        "branches" => git_branch_filter_criteria(),
        "events" => list(list(any())()),
        "filePaths" => git_file_path_filter_criteria()
      }
      
  """
  @type git_pull_request_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_details() :: %{
        "accountId" => String.t(),
        "data" => job_data(),
        "id" => String.t()
      }
      
  """
  @type job_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      git_tag_filter_criteria() :: %{
        "excludes" => list(String.t()()),
        "includes" => list(String.t()())
      }
      
  """
  @type git_tag_filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      condition_execution() :: %{
        "lastStatusChange" => non_neg_integer(),
        "status" => list(any()),
        "summary" => String.t()
      }
      
  """
  @type condition_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_output() :: %{}
      
  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      rule_declaration() :: %{
        "configuration" => map(),
        "inputArtifacts" => list(input_artifact()()),
        "name" => String.t(),
        "region" => String.t(),
        "roleArn" => String.t(),
        "ruleTypeId" => rule_type_id(),
        "timeoutInMinutes" => integer()
      }
      
  """
  @type rule_declaration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      poll_for_jobs_output() :: %{
        "jobs" => list(job()())
      }
      
  """
  @type poll_for_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rule_executions_output() :: %{
        "nextToken" => String.t(),
        "ruleExecutionDetails" => list(rule_execution_detail()())
      }
      
  """
  @type list_rule_executions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_variables_size_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type output_variables_size_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_structure_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_structure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_execution_trigger() :: %{
        "reason" => String.t()
      }
      
  """
  @type stop_execution_trigger() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      webhook_filter_rule() :: %{
        "jsonPath" => String.t(),
        "matchEquals" => String.t()
      }
      
  """
  @type webhook_filter_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_third_party_job_details_input() :: %{
        required("clientToken") => String.t(),
        required("jobId") => String.t()
      }
      
  """
  @type get_third_party_job_details_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("resourceArn") => String.t(),
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      succeeded_in_stage_filter() :: %{
        "stageName" => String.t()
      }
      
  """
  @type succeeded_in_stage_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_metadata() :: %{
        "created" => non_neg_integer(),
        "pipelineArn" => String.t(),
        "pollingDisabledAt" => non_neg_integer(),
        "updated" => non_neg_integer()
      }
      
  """
  @type pipeline_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_action_revision_input() :: %{
        required("actionName") => String.t(),
        required("actionRevision") => action_revision(),
        required("pipelineName") => String.t(),
        required("stageName") => String.t()
      }
      
  """
  @type put_action_revision_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_type_id() :: %{
        "category" => list(any()),
        "owner" => list(any()),
        "provider" => String.t(),
        "version" => String.t()
      }
      
  """
  @type rule_type_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_pipeline_execution_input() :: %{
        optional("clientRequestToken") => String.t(),
        optional("sourceRevisions") => list(source_revision_override()()),
        optional("variables") => list(pipeline_variable()()),
        required("name") => String.t()
      }
      
  """
  @type start_pipeline_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_context() :: %{
        "action" => action_context(),
        "pipelineArn" => String.t(),
        "pipelineExecutionId" => String.t(),
        "pipelineName" => String.t(),
        "stage" => stage_context()
      }
      
  """
  @type pipeline_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_pipeline_output() :: %{
        "pipeline" => pipeline_declaration()
      }
      
  """
  @type update_pipeline_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_type_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type action_type_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      blocker_declaration() :: %{
        "name" => String.t(),
        "type" => list(any())
      }
      
  """
  @type blocker_declaration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      artifact_details() :: %{
        "maximumCount" => integer(),
        "minimumCount" => integer()
      }
      
  """
  @type artifact_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type action_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_webhook_with_third_party_input() :: %{
        optional("webhookName") => String.t()
      }
      
  """
  @type deregister_webhook_with_third_party_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job() :: %{
        "accountId" => String.t(),
        "data" => job_data(),
        "id" => String.t(),
        "nonce" => String.t()
      }
      
  """
  @type job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_pipeline_executions_limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type concurrent_pipeline_executions_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_custom_action_type_output() :: %{
        "actionType" => action_type(),
        "tags" => list(tag()())
      }
      
  """
  @type create_custom_action_type_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_third_party_job_success_result_input() :: %{
        optional("continuationToken") => String.t(),
        optional("currentRevision") => current_revision(),
        optional("executionDetails") => execution_details(),
        required("clientToken") => String.t(),
        required("jobId") => String.t()
      }
      
  """
  @type put_third_party_job_success_result_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_output() :: %{}
      
  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      pipeline_execution_outdated_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type pipeline_execution_outdated_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      poll_for_third_party_jobs_output() :: %{
        "jobs" => list(third_party_job()())
      }
      
  """
  @type poll_for_third_party_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rule_executions_input() :: %{
        optional("filter") => rule_execution_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("pipelineName") => String.t()
      }
      
  """
  @type list_rule_executions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_execution_input() :: %{
        "actionTypeId" => action_type_id(),
        "configuration" => map(),
        "inputArtifacts" => list(artifact_detail()()),
        "namespace" => String.t(),
        "region" => String.t(),
        "resolvedConfiguration" => map(),
        "roleArn" => String.t()
      }
      
  """
  @type action_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_nonce_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_nonce_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_client_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_client_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_type_identifier() :: %{
        "category" => list(any()),
        "owner" => String.t(),
        "provider" => String.t(),
        "version" => String.t()
      }
      
  """
  @type action_type_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type pipeline_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rollback_stage_input() :: %{
        required("pipelineName") => String.t(),
        required("stageName") => String.t(),
        required("targetPipelineExecutionId") => String.t()
      }
      
  """
  @type rollback_stage_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_webhook_with_third_party_output() :: %{}
      
  """
  @type deregister_webhook_with_third_party_output() :: %{}

  @typedoc """

  ## Example:
      
      delete_webhook_input() :: %{
        required("name") => String.t()
      }
      
  """
  @type delete_webhook_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_variable() :: %{
        "name" => String.t(),
        "value" => String.t()
      }
      
  """
  @type pipeline_variable() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_execution_detail() :: %{
        "actionExecutionId" => String.t(),
        "actionName" => String.t(),
        "input" => action_execution_input(),
        "lastUpdateTime" => non_neg_integer(),
        "output" => action_execution_output(),
        "pipelineExecutionId" => String.t(),
        "pipelineVersion" => integer(),
        "stageName" => String.t(),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "updatedBy" => String.t()
      }
      
  """
  @type action_execution_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_revision_override() :: %{
        "actionName" => String.t(),
        "revisionType" => list(any()),
        "revisionValue" => String.t()
      }
      
  """
  @type source_revision_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pipelines_output() :: %{
        "nextToken" => String.t(),
        "pipelines" => list(pipeline_summary()())
      }
      
  """
  @type list_pipelines_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_webhook_with_third_party_input() :: %{
        optional("webhookName") => String.t()
      }
      
  """
  @type register_webhook_with_third_party_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_action_types_input() :: %{
        optional("actionOwnerFilter") => list(any()),
        optional("nextToken") => String.t(),
        optional("regionFilter") => String.t()
      }
      
  """
  @type list_action_types_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_revision() :: %{
        "created" => non_neg_integer(),
        "revisionChangeId" => String.t(),
        "revisionId" => String.t()
      }
      
  """
  @type rule_revision() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stage_declaration() :: %{
        "actions" => list(action_declaration()()),
        "beforeEntry" => before_entry_conditions(),
        "blockers" => list(blocker_declaration()()),
        "name" => String.t(),
        "onFailure" => failure_conditions(),
        "onSuccess" => success_conditions()
      }
      
  """
  @type stage_declaration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_custom_action_type_input() :: %{
        optional("configurationProperties") => list(action_configuration_property()()),
        optional("settings") => action_type_settings(),
        optional("tags") => list(tag()()),
        required("category") => list(any()),
        required("inputArtifactDetails") => artifact_details(),
        required("outputArtifactDetails") => artifact_details(),
        required("provider") => String.t(),
        required("version") => String.t()
      }
      
  """
  @type create_custom_action_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_configuration() :: %{
        "configuration" => map()
      }
      
  """
  @type action_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stage_condition_state() :: %{
        "conditionStates" => list(condition_state()()),
        "latestExecution" => stage_conditions_execution()
      }
      
  """
  @type stage_condition_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stage_execution() :: %{
        "pipelineExecutionId" => String.t(),
        "status" => list(any()),
        "type" => list(any())
      }
      
  """
  @type stage_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_execution_result() :: %{
        "errorDetails" => error_details(),
        "externalExecutionId" => String.t(),
        "externalExecutionSummary" => String.t(),
        "externalExecutionUrl" => String.t()
      }
      
  """
  @type action_execution_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_configuration_property() :: %{
        "description" => String.t(),
        "key" => boolean(),
        "name" => String.t(),
        "queryable" => boolean(),
        "required" => boolean(),
        "secret" => boolean(),
        "type" => list(any())
      }
      
  """
  @type rule_configuration_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      before_entry_conditions() :: %{
        "conditions" => list(condition()())
      }
      
  """
  @type before_entry_conditions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_pipeline_input() :: %{
        optional("version") => integer(),
        required("name") => String.t()
      }
      
  """
  @type get_pipeline_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stage_state() :: %{
        "actionStates" => list(action_state()()),
        "beforeEntryConditionState" => stage_condition_state(),
        "inboundExecution" => stage_execution(),
        "inboundExecutions" => list(stage_execution()()),
        "inboundTransitionState" => transition_state(),
        "latestExecution" => stage_execution(),
        "onFailureConditionState" => stage_condition_state(),
        "onSuccessConditionState" => stage_condition_state(),
        "stageName" => String.t()
      }
      
  """
  @type stage_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type job_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      third_party_job_details() :: %{
        "data" => third_party_job_data(),
        "id" => String.t(),
        "nonce" => String.t()
      }
      
  """
  @type third_party_job_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pipeline_version_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type pipeline_version_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      artifact() :: %{
        "location" => artifact_location(),
        "name" => String.t(),
        "revision" => String.t()
      }
      
  """
  @type artifact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retry_stage_execution_input() :: %{
        required("pipelineExecutionId") => String.t(),
        required("pipelineName") => String.t(),
        required("retryMode") => list(any()),
        required("stageName") => String.t()
      }
      
  """
  @type retry_stage_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_job_details_output() :: %{
        "jobDetails" => job_details()
      }
      
  """
  @type get_job_details_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_pipeline_execution_input() :: %{
        optional("abandon") => boolean(),
        optional("reason") => String.t(),
        required("pipelineExecutionId") => String.t(),
        required("pipelineName") => String.t()
      }
      
  """
  @type stop_pipeline_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicated_stop_request_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type duplicated_stop_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_revision() :: %{
        "actionName" => String.t(),
        "revisionId" => String.t(),
        "revisionSummary" => String.t(),
        "revisionUrl" => String.t()
      }
      
  """
  @type source_revision() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_type_property() :: %{
        "description" => String.t(),
        "key" => boolean(),
        "name" => String.t(),
        "noEcho" => boolean(),
        "optional" => boolean(),
        "queryable" => boolean()
      }
      
  """
  @type action_type_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      acknowledge_job_input() :: %{
        required("jobId") => String.t(),
        required("nonce") => String.t()
      }
      
  """
  @type acknowledge_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_pipeline_state_input() :: %{
        required("name") => String.t()
      }
      
  """
  @type get_pipeline_state_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      poll_for_jobs_input() :: %{
        optional("maxBatchSize") => integer(),
        optional("queryParam") => map(),
        required("actionTypeId") => action_type_id()
      }
      
  """
  @type poll_for_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_custom_action_type_input() :: %{
        required("category") => list(any()),
        required("provider") => String.t(),
        required("version") => String.t()
      }
      
  """
  @type delete_custom_action_type_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_action_revision_output() :: %{
        "newRevision" => boolean(),
        "pipelineExecutionId" => String.t()
      }
      
  """
  @type put_action_revision_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_stage_transition_input() :: %{
        required("pipelineName") => String.t(),
        required("reason") => String.t(),
        required("stageName") => String.t(),
        required("transitionType") => list(any())
      }
      
  """
  @type disable_stage_transition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      retry_stage_execution_output() :: %{
        "pipelineExecutionId" => String.t()
      }
      
  """
  @type retry_stage_execution_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_key() :: %{
        "id" => String.t(),
        "type" => list(any())
      }
      
  """
  @type encryption_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_execution() :: %{
        "errorDetails" => error_details(),
        "externalExecutionId" => String.t(),
        "externalExecutionUrl" => String.t(),
        "lastStatusChange" => non_neg_integer(),
        "lastUpdatedBy" => String.t(),
        "ruleExecutionId" => String.t(),
        "status" => list(any()),
        "summary" => String.t(),
        "token" => String.t()
      }
      
  """
  @type rule_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_approval_result_input() :: %{
        required("actionName") => String.t(),
        required("pipelineName") => String.t(),
        required("result") => approval_result(),
        required("stageName") => String.t(),
        required("token") => String.t()
      }
      
  """
  @type put_approval_result_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_executor_configuration() :: %{
        "lambdaFunctionArn" => String.t()
      }
      
  """
  @type lambda_executor_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule_execution_input() :: %{
        "configuration" => map(),
        "inputArtifacts" => list(artifact_detail()()),
        "region" => String.t(),
        "resolvedConfiguration" => map(),
        "roleArn" => String.t(),
        "ruleTypeId" => rule_type_id()
      }
      
  """
  @type rule_execution_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      git_push_filter() :: %{
        "branches" => git_branch_filter_criteria(),
        "filePaths" => git_file_path_filter_criteria(),
        "tags" => git_tag_filter_criteria()
      }
      
  """
  @type git_push_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_type_declaration() :: %{
        "description" => String.t(),
        "executor" => action_type_executor(),
        "id" => action_type_identifier(),
        "inputArtifactDetails" => action_type_artifact_details(),
        "outputArtifactDetails" => action_type_artifact_details(),
        "permissions" => action_type_permissions(),
        "properties" => list(action_type_property()()),
        "urls" => action_type_urls()
      }
      
  """
  @type action_type_declaration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_job_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_job_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_type() :: %{
        "actionConfigurationProperties" => list(action_configuration_property()()),
        "id" => action_type_id(),
        "inputArtifactDetails" => artifact_details(),
        "outputArtifactDetails" => artifact_details(),
        "settings" => action_type_settings()
      }
      
  """
  @type action_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      webhook_not_found_exception() :: %{}
      
  """
  @type webhook_not_found_exception() :: %{}

  @typedoc """

  ## Example:
      
      register_webhook_with_third_party_output() :: %{}
      
  """
  @type register_webhook_with_third_party_output() :: %{}

  @typedoc """

  ## Example:
      
      get_pipeline_execution_output() :: %{
        "pipelineExecution" => pipeline_execution()
      }
      
  """
  @type get_pipeline_execution_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_configuration_property() :: %{
        "description" => String.t(),
        "key" => boolean(),
        "name" => String.t(),
        "queryable" => boolean(),
        "required" => boolean(),
        "secret" => boolean(),
        "type" => list(any())
      }
      
  """
  @type action_configuration_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      success_conditions() :: %{
        "conditions" => list(condition()())
      }
      
  """
  @type success_conditions() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_webhook_authentication_parameters_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_webhook_authentication_parameters_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pipeline_executions_input() :: %{
        optional("filter") => pipeline_execution_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("pipelineName") => String.t()
      }
      
  """
  @type list_pipeline_executions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      action_type_settings() :: %{
        "entityUrlTemplate" => String.t(),
        "executionUrlTemplate" => String.t(),
        "revisionUrlTemplate" => String.t(),
        "thirdPartyConfigurationUrl" => String.t()
      }
      
  """
  @type action_type_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_job_state_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_job_state_exception() :: %{String.t() => any()}

  @type acknowledge_job_errors() ::
          job_not_found_exception() | invalid_nonce_exception() | validation_exception()

  @type acknowledge_third_party_job_errors() ::
          job_not_found_exception()
          | invalid_client_token_exception()
          | invalid_nonce_exception()
          | validation_exception()

  @type create_custom_action_type_errors() ::
          too_many_tags_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | concurrent_modification_exception()
          | invalid_tags_exception()

  @type create_pipeline_errors() ::
          too_many_tags_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | concurrent_modification_exception()
          | invalid_structure_exception()
          | invalid_stage_declaration_exception()
          | invalid_tags_exception()
          | pipeline_name_in_use_exception()
          | invalid_action_declaration_exception()
          | invalid_blocker_declaration_exception()

  @type delete_custom_action_type_errors() ::
          validation_exception() | concurrent_modification_exception()

  @type delete_pipeline_errors() :: validation_exception() | concurrent_modification_exception()

  @type delete_webhook_errors() :: validation_exception() | concurrent_modification_exception()

  @type deregister_webhook_with_third_party_errors() ::
          webhook_not_found_exception() | validation_exception()

  @type disable_stage_transition_errors() ::
          pipeline_not_found_exception() | validation_exception() | stage_not_found_exception()

  @type enable_stage_transition_errors() ::
          pipeline_not_found_exception() | validation_exception() | stage_not_found_exception()

  @type get_action_type_errors() :: validation_exception() | action_type_not_found_exception()

  @type get_job_details_errors() :: job_not_found_exception() | validation_exception()

  @type get_pipeline_errors() ::
          pipeline_version_not_found_exception()
          | pipeline_not_found_exception()
          | validation_exception()

  @type get_pipeline_execution_errors() ::
          pipeline_not_found_exception()
          | validation_exception()
          | pipeline_execution_not_found_exception()

  @type get_pipeline_state_errors() :: pipeline_not_found_exception() | validation_exception()

  @type get_third_party_job_details_errors() ::
          invalid_job_exception()
          | job_not_found_exception()
          | invalid_client_token_exception()
          | validation_exception()

  @type list_action_executions_errors() ::
          pipeline_not_found_exception()
          | validation_exception()
          | pipeline_execution_not_found_exception()
          | invalid_next_token_exception()

  @type list_action_types_errors() :: validation_exception() | invalid_next_token_exception()

  @type list_pipeline_executions_errors() ::
          pipeline_not_found_exception() | validation_exception() | invalid_next_token_exception()

  @type list_pipelines_errors() :: validation_exception() | invalid_next_token_exception()

  @type list_rule_executions_errors() ::
          pipeline_not_found_exception()
          | validation_exception()
          | pipeline_execution_not_found_exception()
          | invalid_next_token_exception()

  @type list_rule_types_errors() :: validation_exception() | invalid_next_token_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()

  @type list_webhooks_errors() :: validation_exception() | invalid_next_token_exception()

  @type override_stage_condition_errors() ::
          pipeline_not_found_exception()
          | concurrent_pipeline_executions_limit_exceeded_exception()
          | validation_exception()
          | condition_not_overridable_exception()
          | conflict_exception()
          | not_latest_pipeline_execution_exception()
          | stage_not_found_exception()

  @type poll_for_jobs_errors() :: validation_exception() | action_type_not_found_exception()

  @type poll_for_third_party_jobs_errors() ::
          validation_exception() | action_type_not_found_exception()

  @type put_action_revision_errors() ::
          pipeline_not_found_exception()
          | concurrent_pipeline_executions_limit_exceeded_exception()
          | action_not_found_exception()
          | validation_exception()
          | stage_not_found_exception()

  @type put_approval_result_errors() ::
          pipeline_not_found_exception()
          | action_not_found_exception()
          | validation_exception()
          | invalid_approval_token_exception()
          | approval_already_completed_exception()
          | stage_not_found_exception()

  @type put_job_failure_result_errors() ::
          invalid_job_state_exception() | job_not_found_exception() | validation_exception()

  @type put_job_success_result_errors() ::
          invalid_job_state_exception()
          | job_not_found_exception()
          | validation_exception()
          | output_variables_size_exceeded_exception()

  @type put_third_party_job_failure_result_errors() ::
          invalid_job_state_exception()
          | job_not_found_exception()
          | invalid_client_token_exception()
          | validation_exception()

  @type put_third_party_job_success_result_errors() ::
          invalid_job_state_exception()
          | job_not_found_exception()
          | invalid_client_token_exception()
          | validation_exception()

  @type put_webhook_errors() ::
          invalid_webhook_authentication_parameters_exception()
          | too_many_tags_exception()
          | limit_exceeded_exception()
          | pipeline_not_found_exception()
          | validation_exception()
          | concurrent_modification_exception()
          | invalid_webhook_filter_pattern_exception()
          | invalid_tags_exception()

  @type register_webhook_with_third_party_errors() ::
          webhook_not_found_exception() | validation_exception()

  @type retry_stage_execution_errors() ::
          pipeline_not_found_exception()
          | concurrent_pipeline_executions_limit_exceeded_exception()
          | validation_exception()
          | stage_not_retryable_exception()
          | conflict_exception()
          | not_latest_pipeline_execution_exception()
          | stage_not_found_exception()

  @type rollback_stage_errors() ::
          pipeline_not_found_exception()
          | pipeline_execution_outdated_exception()
          | validation_exception()
          | pipeline_execution_not_found_exception()
          | conflict_exception()
          | stage_not_found_exception()
          | unable_to_rollback_stage_exception()

  @type start_pipeline_execution_errors() ::
          pipeline_not_found_exception()
          | concurrent_pipeline_executions_limit_exceeded_exception()
          | validation_exception()
          | conflict_exception()

  @type stop_pipeline_execution_errors() ::
          duplicated_stop_request_exception()
          | pipeline_not_found_exception()
          | validation_exception()
          | conflict_exception()
          | pipeline_execution_not_stoppable_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | validation_exception()
          | concurrent_modification_exception()
          | resource_not_found_exception()
          | invalid_tags_exception()
          | invalid_arn_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | concurrent_modification_exception()
          | resource_not_found_exception()
          | invalid_tags_exception()
          | invalid_arn_exception()

  @type update_action_type_errors() ::
          validation_exception() | action_type_not_found_exception() | request_failed_exception()

  @type update_pipeline_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | invalid_structure_exception()
          | invalid_stage_declaration_exception()
          | invalid_action_declaration_exception()
          | invalid_blocker_declaration_exception()

  def metadata do
    %{
      api_version: "2015-07-09",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codepipeline",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "CodePipeline",
      signature_version: "v4",
      signing_name: "codepipeline",
      target_prefix: "CodePipeline_20150709"
    }
  end

  @doc """
  Returns information about a specified job and whether that job has been received
  by
  the job worker.

  Used for custom actions only.
  """
  @spec acknowledge_job(map(), acknowledge_job_input(), list()) ::
          {:ok, acknowledge_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, acknowledge_job_errors()}
  def acknowledge_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcknowledgeJob", input, options)
  end

  @doc """
  Confirms a job worker has received the specified job.

  Used for partner actions
  only.
  """
  @spec acknowledge_third_party_job(map(), acknowledge_third_party_job_input(), list()) ::
          {:ok, acknowledge_third_party_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, acknowledge_third_party_job_errors()}
  def acknowledge_third_party_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcknowledgeThirdPartyJob", input, options)
  end

  @doc """
  Creates a new custom action that can be used in all pipelines associated with
  the
  Amazon Web Services account.

  Only used for custom actions.
  """
  @spec create_custom_action_type(map(), create_custom_action_type_input(), list()) ::
          {:ok, create_custom_action_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_custom_action_type_errors()}
  def create_custom_action_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCustomActionType", input, options)
  end

  @doc """
  Creates a pipeline.

  In the pipeline structure, you must include either `artifactStore`
  or `artifactStores` in your pipeline, but you cannot use both. If you
  create a cross-region action in your pipeline, you must use
  `artifactStores`.
  """
  @spec create_pipeline(map(), create_pipeline_input(), list()) ::
          {:ok, create_pipeline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_pipeline_errors()}
  def create_pipeline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePipeline", input, options)
  end

  @doc """
  Marks a custom action as deleted.

  `PollForJobs` for the custom action
  fails after the action is marked for deletion. Used for custom actions only.

  To re-create a custom action after it has been deleted you must use a string in
  the version field that has never been used before. This string can be an
  incremented
  version number, for example. To restore a deleted custom action, use a JSON file
  that is identical to the deleted action, including the original string in the
  version field.
  """
  @spec delete_custom_action_type(map(), delete_custom_action_type_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_custom_action_type_errors()}
  def delete_custom_action_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCustomActionType", input, options)
  end

  @doc """
  Deletes the specified pipeline.
  """
  @spec delete_pipeline(map(), delete_pipeline_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_pipeline_errors()}
  def delete_pipeline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePipeline", input, options)
  end

  @doc """
  Deletes a previously created webhook by name.

  Deleting the webhook stops CodePipeline from starting a pipeline every time an
  external event occurs. The API
  returns successfully when trying to delete a webhook that is already deleted. If
  a
  deleted webhook is re-created by calling PutWebhook with the same name, it will
  have a
  different URL.
  """
  @spec delete_webhook(map(), delete_webhook_input(), list()) ::
          {:ok, delete_webhook_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_webhook_errors()}
  def delete_webhook(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWebhook", input, options)
  end

  @doc """
  Removes the connection between the webhook that was created by CodePipeline
  and the external tool with events to be detected.

  Currently supported only for webhooks
  that target an action type of GitHub.
  """
  @spec deregister_webhook_with_third_party(
          map(),
          deregister_webhook_with_third_party_input(),
          list()
        ) ::
          {:ok, deregister_webhook_with_third_party_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_webhook_with_third_party_errors()}
  def deregister_webhook_with_third_party(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterWebhookWithThirdParty", input, options)
  end

  @doc """
  Prevents artifacts in a pipeline from transitioning to the next stage in the
  pipeline.
  """
  @spec disable_stage_transition(map(), disable_stage_transition_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_stage_transition_errors()}
  def disable_stage_transition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableStageTransition", input, options)
  end

  @doc """
  Enables artifacts in a pipeline to transition to a stage in a pipeline.
  """
  @spec enable_stage_transition(map(), enable_stage_transition_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_stage_transition_errors()}
  def enable_stage_transition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableStageTransition", input, options)
  end

  @doc """
  Returns information about an action type created for an external provider, where
  the
  action is to be used by customers of the external provider.

  The action can be created
  with any supported integration model.
  """
  @spec get_action_type(map(), get_action_type_input(), list()) ::
          {:ok, get_action_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_action_type_errors()}
  def get_action_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetActionType", input, options)
  end

  @doc """
  Returns information about a job.

  Used for custom actions only.

  When this API is called, CodePipeline returns temporary credentials for
  the S3 bucket used to store artifacts for the pipeline, if the action requires
  access to that S3 bucket for input or output artifacts. This API also returns
  any
  secret values defined for the action.
  """
  @spec get_job_details(map(), get_job_details_input(), list()) ::
          {:ok, get_job_details_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_job_details_errors()}
  def get_job_details(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetJobDetails", input, options)
  end

  @doc """
  Returns the metadata, structure, stages, and actions of a pipeline.

  Can be used to
  return the entire structure of a pipeline in JSON format, which can then be
  modified and
  used to update the pipeline structure with `UpdatePipeline`.
  """
  @spec get_pipeline(map(), get_pipeline_input(), list()) ::
          {:ok, get_pipeline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_pipeline_errors()}
  def get_pipeline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPipeline", input, options)
  end

  @doc """
  Returns information about an execution of a pipeline, including details about
  artifacts, the pipeline execution ID, and the name, version, and status of the
  pipeline.
  """
  @spec get_pipeline_execution(map(), get_pipeline_execution_input(), list()) ::
          {:ok, get_pipeline_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_pipeline_execution_errors()}
  def get_pipeline_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPipelineExecution", input, options)
  end

  @doc """
  Returns information about the state of a pipeline, including the stages and
  actions.

  Values returned in the `revisionId` and `revisionUrl`
  fields indicate the source revision information, such as the commit ID, for the
  current state.
  """
  @spec get_pipeline_state(map(), get_pipeline_state_input(), list()) ::
          {:ok, get_pipeline_state_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_pipeline_state_errors()}
  def get_pipeline_state(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPipelineState", input, options)
  end

  @doc """
  Requests the details of a job for a third party action.

  Used for partner actions
  only.

  When this API is called, CodePipeline returns temporary credentials for
  the S3 bucket used to store artifacts for the pipeline, if the action requires
  access to that S3 bucket for input or output artifacts. This API also returns
  any
  secret values defined for the action.
  """
  @spec get_third_party_job_details(map(), get_third_party_job_details_input(), list()) ::
          {:ok, get_third_party_job_details_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_third_party_job_details_errors()}
  def get_third_party_job_details(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetThirdPartyJobDetails", input, options)
  end

  @doc """
  Lists the action executions that have occurred in a pipeline.
  """
  @spec list_action_executions(map(), list_action_executions_input(), list()) ::
          {:ok, list_action_executions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_action_executions_errors()}
  def list_action_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListActionExecutions", input, options)
  end

  @doc """
  Gets a summary of all CodePipeline action types associated with your
  account.
  """
  @spec list_action_types(map(), list_action_types_input(), list()) ::
          {:ok, list_action_types_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_action_types_errors()}
  def list_action_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListActionTypes", input, options)
  end

  @doc """
  Gets a summary of the most recent executions for a pipeline.

  When applying the filter for pipeline executions that have succeeded in the
  stage,
  the operation returns all executions in the current pipeline version beginning
  on
  February 1, 2024.
  """
  @spec list_pipeline_executions(map(), list_pipeline_executions_input(), list()) ::
          {:ok, list_pipeline_executions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_pipeline_executions_errors()}
  def list_pipeline_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPipelineExecutions", input, options)
  end

  @doc """
  Gets a summary of all of the pipelines associated with your account.
  """
  @spec list_pipelines(map(), list_pipelines_input(), list()) ::
          {:ok, list_pipelines_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_pipelines_errors()}
  def list_pipelines(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPipelines", input, options)
  end

  @doc """
  Lists the rule executions that have occurred in a pipeline configured for
  conditions with rules.
  """
  @spec list_rule_executions(map(), list_rule_executions_input(), list()) ::
          {:ok, list_rule_executions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_rule_executions_errors()}
  def list_rule_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRuleExecutions", input, options)
  end

  @doc """
  Lists the rules for the condition.
  """
  @spec list_rule_types(map(), list_rule_types_input(), list()) ::
          {:ok, list_rule_types_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_rule_types_errors()}
  def list_rule_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRuleTypes", input, options)
  end

  @doc """
  Gets the set of key-value pairs (metadata) that are used to manage the
  resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_input(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Gets a listing of all the webhooks in this Amazon Web Services Region for this
  account.

  The output lists all webhooks and includes the webhook URL and ARN and the
  configuration for each webhook.

  If a secret token was provided, it will be redacted in the response.
  """
  @spec list_webhooks(map(), list_webhooks_input(), list()) ::
          {:ok, list_webhooks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_webhooks_errors()}
  def list_webhooks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWebhooks", input, options)
  end

  @doc """
  Used to override a stage condition.
  """
  @spec override_stage_condition(map(), override_stage_condition_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, override_stage_condition_errors()}
  def override_stage_condition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "OverrideStageCondition", input, options)
  end

  @doc """
  Returns information about any jobs for CodePipeline to act on.

  `PollForJobs` is valid only for action types with "Custom" in the owner
  field. If the action type contains `AWS` or `ThirdParty` in the
  owner field, the `PollForJobs` action returns an error.

  When this API is called, CodePipeline returns temporary credentials for
  the S3 bucket used to store artifacts for the pipeline, if the action requires
  access to that S3 bucket for input or output artifacts. This API also returns
  any
  secret values defined for the action.
  """
  @spec poll_for_jobs(map(), poll_for_jobs_input(), list()) ::
          {:ok, poll_for_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, poll_for_jobs_errors()}
  def poll_for_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PollForJobs", input, options)
  end

  @doc """
  Determines whether there are any third party jobs for a job worker to act on.

  Used
  for partner actions only.

  When this API is called, CodePipeline returns temporary credentials for
  the S3 bucket used to store artifacts for the pipeline, if the action requires
  access to that S3 bucket for input or output artifacts.
  """
  @spec poll_for_third_party_jobs(map(), poll_for_third_party_jobs_input(), list()) ::
          {:ok, poll_for_third_party_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, poll_for_third_party_jobs_errors()}
  def poll_for_third_party_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PollForThirdPartyJobs", input, options)
  end

  @doc """
  Provides information to CodePipeline about new revisions to a
  source.
  """
  @spec put_action_revision(map(), put_action_revision_input(), list()) ::
          {:ok, put_action_revision_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_action_revision_errors()}
  def put_action_revision(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutActionRevision", input, options)
  end

  @doc """
  Provides the response to a manual approval request to CodePipeline.

  Valid
  responses include Approved and Rejected.
  """
  @spec put_approval_result(map(), put_approval_result_input(), list()) ::
          {:ok, put_approval_result_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_approval_result_errors()}
  def put_approval_result(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutApprovalResult", input, options)
  end

  @doc """
  Represents the failure of a job as returned to the pipeline by a job worker.

  Used
  for custom actions only.
  """
  @spec put_job_failure_result(map(), put_job_failure_result_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_job_failure_result_errors()}
  def put_job_failure_result(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutJobFailureResult", input, options)
  end

  @doc """
  Represents the success of a job as returned to the pipeline by a job worker.

  Used
  for custom actions only.
  """
  @spec put_job_success_result(map(), put_job_success_result_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_job_success_result_errors()}
  def put_job_success_result(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutJobSuccessResult", input, options)
  end

  @doc """
  Represents the failure of a third party job as returned to the pipeline by a job
  worker.

  Used for partner actions only.
  """
  @spec put_third_party_job_failure_result(
          map(),
          put_third_party_job_failure_result_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_third_party_job_failure_result_errors()}
  def put_third_party_job_failure_result(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutThirdPartyJobFailureResult", input, options)
  end

  @doc """
  Represents the success of a third party job as returned to the pipeline by a job
  worker.

  Used for partner actions only.
  """
  @spec put_third_party_job_success_result(
          map(),
          put_third_party_job_success_result_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_third_party_job_success_result_errors()}
  def put_third_party_job_success_result(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutThirdPartyJobSuccessResult", input, options)
  end

  @doc """
  Defines a webhook and returns a unique webhook URL generated by CodePipeline.

  This URL can be supplied to third party source hosting providers to call every
  time
  there's a code change. When CodePipeline receives a POST request on this URL,
  the
  pipeline defined in the webhook is started as long as the POST request satisfied
  the
  authentication and filtering requirements supplied when defining the webhook.
  RegisterWebhookWithThirdParty and DeregisterWebhookWithThirdParty APIs can be
  used to
  automatically configure supported third parties to call the generated webhook
  URL.

  When creating CodePipeline webhooks, do not use your own credentials or
  reuse the same secret token across multiple webhooks. For optimal security,
  generate
  a unique secret token for each webhook you create. The secret token is an
  arbitrary
  string that you provide, which GitHub uses to compute and sign the webhook
  payloads
  sent to CodePipeline, for protecting the integrity and authenticity of the
  webhook payloads. Using your own credentials or reusing the same token across
  multiple webhooks can lead to security vulnerabilities.

  If a secret token was provided, it will be redacted in the response.
  """
  @spec put_webhook(map(), put_webhook_input(), list()) ::
          {:ok, put_webhook_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_webhook_errors()}
  def put_webhook(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutWebhook", input, options)
  end

  @doc """
  Configures a connection between the webhook that was created and the external
  tool
  with events to be detected.
  """
  @spec register_webhook_with_third_party(
          map(),
          register_webhook_with_third_party_input(),
          list()
        ) ::
          {:ok, register_webhook_with_third_party_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_webhook_with_third_party_errors()}
  def register_webhook_with_third_party(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterWebhookWithThirdParty", input, options)
  end

  @doc """
  You can retry a stage that has failed without having to run a pipeline again
  from
  the beginning.

  You do this by either retrying the failed actions in a stage or by
  retrying all actions in the stage starting from the first action in the stage.
  When you
  retry the failed actions in a stage, all actions that are still in progress
  continue
  working, and failed actions are triggered again. When you retry a failed stage
  from the
  first action in the stage, the stage cannot have any actions in progress. Before
  a stage
  can be retried, it must either have all actions failed or some actions failed
  and some
  succeeded.
  """
  @spec retry_stage_execution(map(), retry_stage_execution_input(), list()) ::
          {:ok, retry_stage_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, retry_stage_execution_errors()}
  def retry_stage_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RetryStageExecution", input, options)
  end

  @doc """
  Rolls back a stage execution.
  """
  @spec rollback_stage(map(), rollback_stage_input(), list()) ::
          {:ok, rollback_stage_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, rollback_stage_errors()}
  def rollback_stage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RollbackStage", input, options)
  end

  @doc """
  Starts the specified pipeline.

  Specifically, it begins processing the latest commit
  to the source location specified as part of the pipeline.
  """
  @spec start_pipeline_execution(map(), start_pipeline_execution_input(), list()) ::
          {:ok, start_pipeline_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_pipeline_execution_errors()}
  def start_pipeline_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartPipelineExecution", input, options)
  end

  @doc """
  Stops the specified pipeline execution.

  You choose to either stop the pipeline
  execution by completing in-progress actions without starting subsequent actions,
  or by
  abandoning in-progress actions. While completing or abandoning in-progress
  actions, the
  pipeline execution is in a `Stopping` state. After all in-progress actions
  are completed or abandoned, the pipeline execution is in a `Stopped`
  state.
  """
  @spec stop_pipeline_execution(map(), stop_pipeline_execution_input(), list()) ::
          {:ok, stop_pipeline_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_pipeline_execution_errors()}
  def stop_pipeline_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopPipelineExecution", input, options)
  end

  @doc """
  Adds to or modifies the tags of the given resource.

  Tags are metadata that can be used
  to manage a resource.
  """
  @spec tag_resource(map(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes tags from an Amazon Web Services resource.
  """
  @spec untag_resource(map(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an action type that was created with any supported integration model,
  where
  the action type is to be used by customers of the action type provider.

  Use a JSON file
  with the action definition and `UpdateActionType` to provide the full
  structure.
  """
  @spec update_action_type(map(), update_action_type_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_action_type_errors()}
  def update_action_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateActionType", input, options)
  end

  @doc """
  Updates a specified pipeline with edits or changes to its structure.

  Use a JSON
  file with the pipeline structure and `UpdatePipeline` to provide the full
  structure of the pipeline. Updating the pipeline increases the version number of
  the
  pipeline by 1.
  """
  @spec update_pipeline(map(), update_pipeline_input(), list()) ::
          {:ok, update_pipeline_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_pipeline_errors()}
  def update_pipeline(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePipeline", input, options)
  end
end
