# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MWAAServerless do
  @moduledoc """
  Amazon Managed Workflows for Apache Airflow Serverless provides a managed
  workflow orchestration platform for running Apache Airflow workflows in a
  serverless environment.

  You can use Amazon Managed Workflows for Apache Airflow Serverless to create,
  manage, and run data processing workflows without managing the underlying
  infrastructure, Airflow clusters, metadata databases, or scheduling overhead.
  The service provides secure multi-tenant run environments with automatic
  scaling, comprehensive logging, and integration with multiple Amazon Web
  Services services for orchestrating complex analytics workloads.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      create_workflow_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("EncryptionConfiguration") => encryption_configuration(),
        optional("EngineVersion") => list(integer()),
        optional("LoggingConfiguration") => logging_configuration(),
        optional("NetworkConfiguration") => network_configuration(),
        optional("Tags") => map(),
        optional("TriggerMode") => String.t() | atom(),
        required("DefinitionS3Location") => definition_s3_location(),
        required("Name") => String.t() | atom(),
        required("RoleArn") => String.t() | atom()
      }
      
  """
  @type create_workflow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      encryption_configuration() :: %{
        "KmsKeyId" => [String.t() | atom()],
        "Type" => list(any())
      }
      
  """
  @type encryption_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      operation_timeout_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type operation_timeout_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_workflow_request() :: %{
        optional("WorkflowVersion") => String.t() | atom()
      }
      
  """
  @type delete_workflow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_task_instances_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | atom()]
      }
      
  """
  @type list_task_instances_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_instance_summary() :: %{
        "DurationInSeconds" => [integer()],
        "OperatorName" => String.t() | atom(),
        "RunId" => String.t() | atom(),
        "Status" => list(any()),
        "TaskInstanceId" => String.t() | atom(),
        "WorkflowArn" => String.t() | atom(),
        "WorkflowVersion" => String.t() | atom()
      }
      
  """
  @type task_instance_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_workflow_run_response() :: %{
        "RunId" => String.t() | atom(),
        "Status" => list(any()),
        "WorkflowArn" => String.t() | atom(),
        "WorkflowVersion" => String.t() | atom()
      }
      
  """
  @type stop_workflow_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_task_instance_response() :: %{
        "AttemptNumber" => [integer()],
        "DurationInSeconds" => [integer()],
        "EndedAt" => non_neg_integer(),
        "ErrorMessage" => String.t() | atom(),
        "LogStream" => String.t() | atom(),
        "ModifiedAt" => non_neg_integer(),
        "OperatorName" => String.t() | atom(),
        "RunId" => String.t() | atom(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any()),
        "TaskId" => String.t() | atom(),
        "TaskInstanceId" => String.t() | atom(),
        "WorkflowArn" => String.t() | atom(),
        "WorkflowVersion" => String.t() | atom(),
        "Xcom" => map()
      }
      
  """
  @type get_task_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_workflow_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("EngineVersion") => list(integer()),
        optional("LoggingConfiguration") => logging_configuration(),
        optional("NetworkConfiguration") => network_configuration(),
        optional("TriggerMode") => String.t() | atom(),
        required("DefinitionS3Location") => definition_s3_location(),
        required("RoleArn") => String.t() | atom()
      }
      
  """
  @type update_workflow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      logging_configuration() :: %{
        "LogGroupName" => [String.t() | atom()]
      }
      
  """
  @type logging_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_workflow_request() :: %{
        optional("WorkflowVersion") => String.t() | atom()
      }
      
  """
  @type get_workflow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      definition_s3_location() :: %{
        "Bucket" => [String.t() | atom()],
        "ObjectKey" => [String.t() | atom()],
        "VersionId" => [String.t() | atom()]
      }
      
  """
  @type definition_s3_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_workflow_response() :: %{
        "WorkflowArn" => String.t() | atom(),
        "WorkflowVersion" => String.t() | atom()
      }
      
  """
  @type delete_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceId" => [String.t() | atom()],
        "ResourceType" => [String.t() | atom()]
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceId" => [String.t() | atom()],
        "ResourceType" => [String.t() | atom()]
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      run_detail_summary() :: %{
        "CreatedOn" => non_neg_integer(),
        "EndedAt" => non_neg_integer(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type run_detail_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "QuotaCode" => [String.t() | atom()],
        "ResourceId" => [String.t() | atom()],
        "ResourceType" => [String.t() | atom()],
        "ServiceCode" => [String.t() | atom()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_workflow_run_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("OverrideParameters") => map(),
        optional("WorkflowVersion") => String.t() | atom()
      }
      
  """
  @type start_workflow_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_workflows_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | atom()]
      }
      
  """
  @type list_workflows_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_workflow_response() :: %{
        "ModifiedAt" => non_neg_integer(),
        "Warnings" => list([String.t() | atom()]()),
        "WorkflowArn" => String.t() | atom(),
        "WorkflowVersion" => String.t() | atom()
      }
      
  """
  @type update_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "Message" => String.t() | atom(),
        "Name" => [String.t() | atom()]
      }
      
  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_workflow_run_response() :: %{
        "RunId" => String.t() | atom(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type start_workflow_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_workflow_versions_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | atom()]
      }
      
  """
  @type list_workflow_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_workflow_runs_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | atom()],
        optional("WorkflowVersion") => String.t() | atom()
      }
      
  """
  @type list_workflow_runs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workflow_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "TriggerMode" => String.t() | atom(),
        "WorkflowArn" => String.t() | atom(),
        "WorkflowStatus" => list(any()),
        "WorkflowVersion" => String.t() | atom()
      }
      
  """
  @type workflow_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_workflow_versions_response() :: %{
        "NextToken" => [String.t() | atom()],
        "WorkflowVersions" => list(workflow_version_summary())
      }
      
  """
  @type list_workflow_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workflow_version_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "DefinitionS3Location" => definition_s3_location(),
        "IsLatestVersion" => boolean(),
        "ModifiedAt" => non_neg_integer(),
        "ScheduleConfiguration" => schedule_configuration(),
        "TriggerMode" => String.t() | atom(),
        "WorkflowArn" => String.t() | atom(),
        "WorkflowVersion" => String.t() | atom()
      }
      
  """
  @type workflow_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t() | atom(),
        "RetryAfterSeconds" => [integer()]
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      network_configuration() :: %{
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom())
      }
      
  """
  @type network_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_workflow_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "IsLatestVersion" => boolean(),
        "RevisionId" => [String.t() | atom()],
        "Warnings" => list([String.t() | atom()]()),
        "WorkflowArn" => String.t() | atom(),
        "WorkflowStatus" => list(any()),
        "WorkflowVersion" => String.t() | atom()
      }
      
  """
  @type create_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_workflow_runs_response() :: %{
        "NextToken" => [String.t() | atom()],
        "WorkflowRuns" => list(workflow_run_summary())
      }
      
  """
  @type list_workflow_runs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      workflow_run_detail() :: %{
        "CompletedOn" => non_neg_integer(),
        "CreatedAt" => non_neg_integer(),
        "Duration" => [integer()],
        "ErrorMessage" => String.t() | atom(),
        "ModifiedAt" => non_neg_integer(),
        "RunId" => String.t() | atom(),
        "RunState" => list(any()),
        "RunType" => list(any()),
        "StartedOn" => non_neg_integer(),
        "TaskInstances" => list(String.t() | atom()),
        "WorkflowArn" => String.t() | atom(),
        "WorkflowVersion" => String.t() | atom()
      }
      
  """
  @type workflow_run_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_task_instance_request() :: %{}
      
  """
  @type get_task_instance_request() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "FieldList" => list(validation_exception_field()),
        "Message" => String.t() | atom(),
        "Reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      schedule_configuration() :: %{
        "CronExpression" => [String.t() | atom()]
      }
      
  """
  @type schedule_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t() | atom(),
        "QuotaCode" => [String.t() | atom()],
        "RetryAfterSeconds" => [integer()],
        "ServiceCode" => [String.t() | atom()]
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_workflow_run_request() :: %{}
      
  """
  @type get_workflow_run_request() :: %{}

  @typedoc """

  ## Example:
      
      stop_workflow_run_request() :: %{}
      
  """
  @type stop_workflow_run_request() :: %{}

  @typedoc """

  ## Example:
      
      list_workflows_response() :: %{
        "NextToken" => [String.t() | atom()],
        "Workflows" => list(workflow_summary())
      }
      
  """
  @type list_workflows_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_workflow_run_response() :: %{
        "OverrideParameters" => map(),
        "RunDetail" => workflow_run_detail(),
        "RunId" => String.t() | atom(),
        "RunType" => list(any()),
        "WorkflowArn" => String.t() | atom(),
        "WorkflowVersion" => String.t() | atom()
      }
      
  """
  @type get_workflow_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workflow_run_summary() :: %{
        "RunDetailSummary" => run_detail_summary(),
        "RunId" => String.t() | atom(),
        "RunType" => list(any()),
        "WorkflowArn" => String.t() | atom(),
        "WorkflowVersion" => String.t() | atom()
      }
      
  """
  @type workflow_run_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_task_instances_response() :: %{
        "NextToken" => [String.t() | atom()],
        "TaskInstances" => list(task_instance_summary())
      }
      
  """
  @type list_task_instances_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_workflow_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DefinitionS3Location" => definition_s3_location(),
        "Description" => String.t() | atom(),
        "EncryptionConfiguration" => encryption_configuration(),
        "EngineVersion" => list(integer()),
        "LoggingConfiguration" => logging_configuration(),
        "ModifiedAt" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "NetworkConfiguration" => network_configuration(),
        "RoleArn" => String.t() | atom(),
        "ScheduleConfiguration" => schedule_configuration(),
        "TriggerMode" => String.t() | atom(),
        "WorkflowArn" => String.t() | atom(),
        "WorkflowDefinition" => String.t() | atom(),
        "WorkflowStatus" => list(any()),
        "WorkflowVersion" => String.t() | atom()
      }
      
  """
  @type get_workflow_response() :: %{(String.t() | atom()) => any()}

  @type create_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | operation_timeout_exception()

  @type delete_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | operation_timeout_exception()

  @type get_task_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | operation_timeout_exception()

  @type get_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | operation_timeout_exception()

  @type get_workflow_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | operation_timeout_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | operation_timeout_exception()

  @type list_task_instances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | operation_timeout_exception()

  @type list_workflow_runs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | operation_timeout_exception()

  @type list_workflow_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | operation_timeout_exception()

  @type list_workflows_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | operation_timeout_exception()

  @type start_workflow_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | operation_timeout_exception()

  @type stop_workflow_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | operation_timeout_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | operation_timeout_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | operation_timeout_exception()

  @type update_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | operation_timeout_exception()

  def metadata do
    %{
      api_version: "2024-07-26",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "airflow-serverless",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "MWAA Serverless",
      signature_version: "v4",
      signing_name: "airflow-serverless",
      target_prefix: "AmazonMWAAServerless"
    }
  end

  @doc """
  Creates a new workflow in Amazon Managed Workflows for Apache Airflow
  Serverless.

  This operation initializes a workflow with the specified configuration including
  the workflow definition, execution role, and optional settings for encryption,
  logging, and networking. You must provide the workflow definition as a YAML file
  stored in Amazon S3 that defines the DAG structure using supported Amazon Web
  Services operators. Amazon Managed Workflows for Apache Airflow Serverless
  automatically creates the first version of the workflow and sets up the
  necessary execution environment with multi-tenant isolation and security
  controls.
  """
  @spec create_workflow(map(), create_workflow_request(), list()) ::
          {:ok, create_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workflow_errors()}
  def create_workflow(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkflow", input, options)
  end

  @doc """
  Deletes a workflow and all its versions.

  This operation permanently removes the workflow and cannot be undone. Amazon
  Managed Workflows for Apache Airflow Serverless ensures that all associated
  resources are properly cleaned up, including stopping any running executions,
  removing scheduled triggers, and cleaning up execution history. The deletion
  process respects the multi-tenant isolation boundaries and ensures that no
  residual data or configurations remain that could affect other customers or
  workflows.
  """
  @spec delete_workflow(map(), delete_workflow_request(), list()) ::
          {:ok, delete_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workflow_errors()}
  def delete_workflow(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWorkflow", input, options)
  end

  @doc """
  Retrieves detailed information about a specific task instance within a workflow
  run.

  Task instances represent individual tasks that are executed as part of a
  workflow in the Amazon Managed Workflows for Apache Airflow Serverless
  environment. Each task instance runs in an isolated ECS container with dedicated
  resources and security boundaries. The service tracks task execution state,
  retry attempts, and provides detailed timing and error information for
  troubleshooting and monitoring purposes.
  """
  @spec get_task_instance(map(), get_task_instance_request(), list()) ::
          {:ok, get_task_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_task_instance_errors()}
  def get_task_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTaskInstance", input, options)
  end

  @doc """
  Retrieves detailed information about a workflow, including its configuration,
  status, and metadata.
  """
  @spec get_workflow(map(), get_workflow_request(), list()) ::
          {:ok, get_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_errors()}
  def get_workflow(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWorkflow", input, options)
  end

  @doc """
  Retrieves detailed information about a specific workflow run, including its
  status, execution details, and task instances.
  """
  @spec get_workflow_run(map(), get_workflow_run_request(), list()) ::
          {:ok, get_workflow_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_run_errors()}
  def get_workflow_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWorkflowRun", input, options)
  end

  @doc """
  Lists all tags that are associated with a specified Amazon Managed Workflows for
  Apache Airflow Serverless resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists all task instances for a specific workflow run, with optional pagination
  support.
  """
  @spec list_task_instances(map(), list_task_instances_request(), list()) ::
          {:ok, list_task_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_task_instances_errors()}
  def list_task_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTaskInstances", input, options)
  end

  @doc """
  Lists all runs for a specified workflow, with optional pagination and filtering
  support.
  """
  @spec list_workflow_runs(map(), list_workflow_runs_request(), list()) ::
          {:ok, list_workflow_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workflow_runs_errors()}
  def list_workflow_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWorkflowRuns", input, options)
  end

  @doc """
  Lists all versions of a specified workflow, with optional pagination support.
  """
  @spec list_workflow_versions(map(), list_workflow_versions_request(), list()) ::
          {:ok, list_workflow_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workflow_versions_errors()}
  def list_workflow_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWorkflowVersions", input, options)
  end

  @doc """
  Lists all workflows in your account, with optional pagination support.

  This operation returns summary information for workflows, showing only the most
  recently created version of each workflow. Amazon Managed Workflows for Apache
  Airflow Serverless maintains workflow metadata in a highly available,
  distributed storage system that enables efficient querying and filtering. The
  service implements proper access controls to ensure you can only view workflows
  that you have permissions to access, supporting both individual and team-based
  workflow management scenarios.
  """
  @spec list_workflows(map(), list_workflows_request(), list()) ::
          {:ok, list_workflows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workflows_errors()}
  def list_workflows(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWorkflows", input, options)
  end

  @doc """
  Starts a new execution of a workflow.

  This operation creates a workflow run that executes the tasks that are defined
  in the workflow. Amazon Managed Workflows for Apache Airflow Serverless
  schedules the workflow execution across its managed Airflow environment,
  automatically scaling ECS worker tasks based on the workload. The service
  handles task isolation, dependency resolution, and provides comprehensive
  monitoring and logging throughout the execution lifecycle.
  """
  @spec start_workflow_run(map(), start_workflow_run_request(), list()) ::
          {:ok, start_workflow_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_workflow_run_errors()}
  def start_workflow_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartWorkflowRun", input, options)
  end

  @doc """
  Stops a running workflow execution.

  This operation terminates all running tasks and prevents new tasks from
  starting. Amazon Managed Workflows for Apache Airflow Serverless gracefully
  shuts down the workflow execution by stopping task scheduling and terminating
  active ECS worker containers. The operation transitions the workflow run to a
  `STOPPING` state and then to `STOPPED` once all cleanup is complete. In-flight
  tasks may complete or be terminated depending on their current execution state.
  """
  @spec stop_workflow_run(map(), stop_workflow_run_request(), list()) ::
          {:ok, stop_workflow_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_workflow_run_errors()}
  def stop_workflow_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopWorkflowRun", input, options)
  end

  @doc """
  Adds tags to an Amazon Managed Workflows for Apache Airflow Serverless resource.

  Tags are key-value pairs that help you organize and categorize your resources.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes tags from an Amazon Managed Workflows for Apache Airflow Serverless
  resource.

  This operation removes the specified tags from the resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an existing workflow with new configuration settings.

  This operation allows you to modify the workflow definition, role, and other
  settings. When you update a workflow, Amazon Managed Workflows for Apache
  Airflow Serverless automatically creates a new version with the updated
  configuration and disables scheduling on all previous versions to ensure only
  one version is actively scheduled at a time. The update operation maintains
  workflow history while providing a clean transition to the new configuration.
  """
  @spec update_workflow(map(), update_workflow_request(), list()) ::
          {:ok, update_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_workflow_errors()}
  def update_workflow(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWorkflow", input, options)
  end
end
