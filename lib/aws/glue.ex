# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Glue do
  @moduledoc """
  AWS Glue

  Defines the public endpoint for the AWS Glue service.
  """

  @doc """
  Creates one or more partitions in a batch operation.
  """
  def batch_create_partition(client, input, options \\ []) do
    request(client, "BatchCreatePartition", input, options)
  end

  @doc """
  Deletes a list of connection definitions from the Data Catalog.
  """
  def batch_delete_connection(client, input, options \\ []) do
    request(client, "BatchDeleteConnection", input, options)
  end

  @doc """
  Deletes one or more partitions in a batch operation.
  """
  def batch_delete_partition(client, input, options \\ []) do
    request(client, "BatchDeletePartition", input, options)
  end

  @doc """
  Deletes multiple tables at once.

  <note> After completing this operation, you no longer have access to the
  table versions and partitions that belong to the deleted table. AWS Glue
  deletes these "orphaned" resources asynchronously in a timely manner, at
  the discretion of the service.

  To ensure the immediate deletion of all related resources, before calling
  `BatchDeleteTable`, use `DeleteTableVersion` or `BatchDeleteTableVersion`,
  and `DeletePartition` or `BatchDeletePartition`, to delete any resources
  that belong to the table.

  </note>
  """
  def batch_delete_table(client, input, options \\ []) do
    request(client, "BatchDeleteTable", input, options)
  end

  @doc """
  Deletes a specified batch of versions of a table.
  """
  def batch_delete_table_version(client, input, options \\ []) do
    request(client, "BatchDeleteTableVersion", input, options)
  end

  @doc """
  Returns a list of resource metadata for a given list of crawler names.
  After calling the `ListCrawlers` operation, you can call this operation to
  access the data to which you have been granted permissions. This operation
  supports all IAM permissions, including permission conditions that uses
  tags.
  """
  def batch_get_crawlers(client, input, options \\ []) do
    request(client, "BatchGetCrawlers", input, options)
  end

  @doc """
  Returns a list of resource metadata for a given list of development
  endpoint names. After calling the `ListDevEndpoints` operation, you can
  call this operation to access the data to which you have been granted
  permissions. This operation supports all IAM permissions, including
  permission conditions that uses tags.
  """
  def batch_get_dev_endpoints(client, input, options \\ []) do
    request(client, "BatchGetDevEndpoints", input, options)
  end

  @doc """
  Returns a list of resource metadata for a given list of job names. After
  calling the `ListJobs` operation, you can call this operation to access the
  data to which you have been granted permissions. This operation supports
  all IAM permissions, including permission conditions that uses tags.
  """
  def batch_get_jobs(client, input, options \\ []) do
    request(client, "BatchGetJobs", input, options)
  end

  @doc """
  Retrieves partitions in a batch request.
  """
  def batch_get_partition(client, input, options \\ []) do
    request(client, "BatchGetPartition", input, options)
  end

  @doc """
  Returns a list of resource metadata for a given list of trigger names.
  After calling the `ListTriggers` operation, you can call this operation to
  access the data to which you have been granted permissions. This operation
  supports all IAM permissions, including permission conditions that uses
  tags.
  """
  def batch_get_triggers(client, input, options \\ []) do
    request(client, "BatchGetTriggers", input, options)
  end

  @doc """
  Returns a list of resource metadata for a given list of workflow names.
  After calling the `ListWorkflows` operation, you can call this operation to
  access the data to which you have been granted permissions. This operation
  supports all IAM permissions, including permission conditions that uses
  tags.
  """
  def batch_get_workflows(client, input, options \\ []) do
    request(client, "BatchGetWorkflows", input, options)
  end

  @doc """
  Stops one or more job runs for a specified job definition.
  """
  def batch_stop_job_run(client, input, options \\ []) do
    request(client, "BatchStopJobRun", input, options)
  end

  @doc """
  Cancels (stops) a task run. Machine learning task runs are asynchronous
  tasks that AWS Glue runs on your behalf as part of various machine learning
  workflows. You can cancel a machine learning task run at any time by
  calling `CancelMLTaskRun` with a task run's parent transform's
  `TransformID` and the task run's `TaskRunId`.
  """
  def cancel_m_l_task_run(client, input, options \\ []) do
    request(client, "CancelMLTaskRun", input, options)
  end

  @doc """
  Creates a classifier in the user's account. This can be a `GrokClassifier`,
  an `XMLClassifier`, a `JsonClassifier`, or a `CsvClassifier`, depending on
  which field of the request is present.
  """
  def create_classifier(client, input, options \\ []) do
    request(client, "CreateClassifier", input, options)
  end

  @doc """
  Creates a connection definition in the Data Catalog.
  """
  def create_connection(client, input, options \\ []) do
    request(client, "CreateConnection", input, options)
  end

  @doc """
  Creates a new crawler with specified targets, role, configuration, and
  optional schedule. At least one crawl target must be specified, in the
  `s3Targets` field, the `jdbcTargets` field, or the `DynamoDBTargets` field.
  """
  def create_crawler(client, input, options \\ []) do
    request(client, "CreateCrawler", input, options)
  end

  @doc """
  Creates a new database in a Data Catalog.
  """
  def create_database(client, input, options \\ []) do
    request(client, "CreateDatabase", input, options)
  end

  @doc """
  Creates a new development endpoint.
  """
  def create_dev_endpoint(client, input, options \\ []) do
    request(client, "CreateDevEndpoint", input, options)
  end

  @doc """
  Creates a new job definition.
  """
  def create_job(client, input, options \\ []) do
    request(client, "CreateJob", input, options)
  end

  @doc """
  Creates an AWS Glue machine learning transform. This operation creates the
  transform and all the necessary parameters to train it.

  Call this operation as the first step in the process of using a machine
  learning transform (such as the `FindMatches` transform) for deduplicating
  data. You can provide an optional `Description`, in addition to the
  parameters that you want to use for your algorithm.

  You must also specify certain parameters for the tasks that AWS Glue runs
  on your behalf as part of learning from your data and creating a
  high-quality machine learning transform. These parameters include `Role`,
  and optionally, `AllocatedCapacity`, `Timeout`, and `MaxRetries`. For more
  information, see
  [Jobs](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html).
  """
  def create_m_l_transform(client, input, options \\ []) do
    request(client, "CreateMLTransform", input, options)
  end

  @doc """
  Creates a new partition.
  """
  def create_partition(client, input, options \\ []) do
    request(client, "CreatePartition", input, options)
  end

  @doc """
  Transforms a directed acyclic graph (DAG) into code.
  """
  def create_script(client, input, options \\ []) do
    request(client, "CreateScript", input, options)
  end

  @doc """
  Creates a new security configuration. A security configuration is a set of
  security properties that can be used by AWS Glue. You can use a security
  configuration to encrypt data at rest. For information about using security
  configurations in AWS Glue, see [Encrypting Data Written by Crawlers, Jobs,
  and Development
  Endpoints](https://docs.aws.amazon.com/glue/latest/dg/encryption-security-configuration.html).
  """
  def create_security_configuration(client, input, options \\ []) do
    request(client, "CreateSecurityConfiguration", input, options)
  end

  @doc """
  Creates a new table definition in the Data Catalog.
  """
  def create_table(client, input, options \\ []) do
    request(client, "CreateTable", input, options)
  end

  @doc """
  Creates a new trigger.
  """
  def create_trigger(client, input, options \\ []) do
    request(client, "CreateTrigger", input, options)
  end

  @doc """
  Creates a new function definition in the Data Catalog.
  """
  def create_user_defined_function(client, input, options \\ []) do
    request(client, "CreateUserDefinedFunction", input, options)
  end

  @doc """
  Creates a new workflow.
  """
  def create_workflow(client, input, options \\ []) do
    request(client, "CreateWorkflow", input, options)
  end

  @doc """
  Removes a classifier from the Data Catalog.
  """
  def delete_classifier(client, input, options \\ []) do
    request(client, "DeleteClassifier", input, options)
  end

  @doc """
  Delete the partition column statistics of a column.
  """
  def delete_column_statistics_for_partition(client, input, options \\ []) do
    request(client, "DeleteColumnStatisticsForPartition", input, options)
  end

  @doc """
  Retrieves table statistics of columns.
  """
  def delete_column_statistics_for_table(client, input, options \\ []) do
    request(client, "DeleteColumnStatisticsForTable", input, options)
  end

  @doc """
  Deletes a connection from the Data Catalog.
  """
  def delete_connection(client, input, options \\ []) do
    request(client, "DeleteConnection", input, options)
  end

  @doc """
  Removes a specified crawler from the AWS Glue Data Catalog, unless the
  crawler state is `RUNNING`.
  """
  def delete_crawler(client, input, options \\ []) do
    request(client, "DeleteCrawler", input, options)
  end

  @doc """
  Removes a specified database from a Data Catalog.

  <note> After completing this operation, you no longer have access to the
  tables (and all table versions and partitions that might belong to the
  tables) and the user-defined functions in the deleted database. AWS Glue
  deletes these "orphaned" resources asynchronously in a timely manner, at
  the discretion of the service.

  To ensure the immediate deletion of all related resources, before calling
  `DeleteDatabase`, use `DeleteTableVersion` or `BatchDeleteTableVersion`,
  `DeletePartition` or `BatchDeletePartition`, `DeleteUserDefinedFunction`,
  and `DeleteTable` or `BatchDeleteTable`, to delete any resources that
  belong to the database.

  </note>
  """
  def delete_database(client, input, options \\ []) do
    request(client, "DeleteDatabase", input, options)
  end

  @doc """
  Deletes a specified development endpoint.
  """
  def delete_dev_endpoint(client, input, options \\ []) do
    request(client, "DeleteDevEndpoint", input, options)
  end

  @doc """
  Deletes a specified job definition. If the job definition is not found, no
  exception is thrown.
  """
  def delete_job(client, input, options \\ []) do
    request(client, "DeleteJob", input, options)
  end

  @doc """
  Deletes an AWS Glue machine learning transform. Machine learning transforms
  are a special type of transform that use machine learning to learn the
  details of the transformation to be performed by learning from examples
  provided by humans. These transformations are then saved by AWS Glue. If
  you no longer need a transform, you can delete it by calling
  `DeleteMLTransforms`. However, any AWS Glue jobs that still reference the
  deleted transform will no longer succeed.
  """
  def delete_m_l_transform(client, input, options \\ []) do
    request(client, "DeleteMLTransform", input, options)
  end

  @doc """
  Deletes a specified partition.
  """
  def delete_partition(client, input, options \\ []) do
    request(client, "DeletePartition", input, options)
  end

  @doc """
  Deletes a specified policy.
  """
  def delete_resource_policy(client, input, options \\ []) do
    request(client, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes a specified security configuration.
  """
  def delete_security_configuration(client, input, options \\ []) do
    request(client, "DeleteSecurityConfiguration", input, options)
  end

  @doc """
  Removes a table definition from the Data Catalog.

  <note> After completing this operation, you no longer have access to the
  table versions and partitions that belong to the deleted table. AWS Glue
  deletes these "orphaned" resources asynchronously in a timely manner, at
  the discretion of the service.

  To ensure the immediate deletion of all related resources, before calling
  `DeleteTable`, use `DeleteTableVersion` or `BatchDeleteTableVersion`, and
  `DeletePartition` or `BatchDeletePartition`, to delete any resources that
  belong to the table.

  </note>
  """
  def delete_table(client, input, options \\ []) do
    request(client, "DeleteTable", input, options)
  end

  @doc """
  Deletes a specified version of a table.
  """
  def delete_table_version(client, input, options \\ []) do
    request(client, "DeleteTableVersion", input, options)
  end

  @doc """
  Deletes a specified trigger. If the trigger is not found, no exception is
  thrown.
  """
  def delete_trigger(client, input, options \\ []) do
    request(client, "DeleteTrigger", input, options)
  end

  @doc """
  Deletes an existing function definition from the Data Catalog.
  """
  def delete_user_defined_function(client, input, options \\ []) do
    request(client, "DeleteUserDefinedFunction", input, options)
  end

  @doc """
  Deletes a workflow.
  """
  def delete_workflow(client, input, options \\ []) do
    request(client, "DeleteWorkflow", input, options)
  end

  @doc """
  Retrieves the status of a migration operation.
  """
  def get_catalog_import_status(client, input, options \\ []) do
    request(client, "GetCatalogImportStatus", input, options)
  end

  @doc """
  Retrieve a classifier by name.
  """
  def get_classifier(client, input, options \\ []) do
    request(client, "GetClassifier", input, options)
  end

  @doc """
  Lists all classifier objects in the Data Catalog.
  """
  def get_classifiers(client, input, options \\ []) do
    request(client, "GetClassifiers", input, options)
  end

  @doc """
  Retrieves partition statistics of columns.
  """
  def get_column_statistics_for_partition(client, input, options \\ []) do
    request(client, "GetColumnStatisticsForPartition", input, options)
  end

  @doc """
  Retrieves table statistics of columns.
  """
  def get_column_statistics_for_table(client, input, options \\ []) do
    request(client, "GetColumnStatisticsForTable", input, options)
  end

  @doc """
  Retrieves a connection definition from the Data Catalog.
  """
  def get_connection(client, input, options \\ []) do
    request(client, "GetConnection", input, options)
  end

  @doc """
  Retrieves a list of connection definitions from the Data Catalog.
  """
  def get_connections(client, input, options \\ []) do
    request(client, "GetConnections", input, options)
  end

  @doc """
  Retrieves metadata for a specified crawler.
  """
  def get_crawler(client, input, options \\ []) do
    request(client, "GetCrawler", input, options)
  end

  @doc """
  Retrieves metrics about specified crawlers.
  """
  def get_crawler_metrics(client, input, options \\ []) do
    request(client, "GetCrawlerMetrics", input, options)
  end

  @doc """
  Retrieves metadata for all crawlers defined in the customer account.
  """
  def get_crawlers(client, input, options \\ []) do
    request(client, "GetCrawlers", input, options)
  end

  @doc """
  Retrieves the security configuration for a specified catalog.
  """
  def get_data_catalog_encryption_settings(client, input, options \\ []) do
    request(client, "GetDataCatalogEncryptionSettings", input, options)
  end

  @doc """
  Retrieves the definition of a specified database.
  """
  def get_database(client, input, options \\ []) do
    request(client, "GetDatabase", input, options)
  end

  @doc """
  Retrieves all databases defined in a given Data Catalog.
  """
  def get_databases(client, input, options \\ []) do
    request(client, "GetDatabases", input, options)
  end

  @doc """
  Transforms a Python script into a directed acyclic graph (DAG).
  """
  def get_dataflow_graph(client, input, options \\ []) do
    request(client, "GetDataflowGraph", input, options)
  end

  @doc """
  Retrieves information about a specified development endpoint.

  <note> When you create a development endpoint in a virtual private cloud
  (VPC), AWS Glue returns only a private IP address, and the public IP
  address field is not populated. When you create a non-VPC development
  endpoint, AWS Glue returns only a public IP address.

  </note>
  """
  def get_dev_endpoint(client, input, options \\ []) do
    request(client, "GetDevEndpoint", input, options)
  end

  @doc """
  Retrieves all the development endpoints in this AWS account.

  <note> When you create a development endpoint in a virtual private cloud
  (VPC), AWS Glue returns only a private IP address and the public IP address
  field is not populated. When you create a non-VPC development endpoint, AWS
  Glue returns only a public IP address.

  </note>
  """
  def get_dev_endpoints(client, input, options \\ []) do
    request(client, "GetDevEndpoints", input, options)
  end

  @doc """
  Retrieves an existing job definition.
  """
  def get_job(client, input, options \\ []) do
    request(client, "GetJob", input, options)
  end

  @doc """
  Returns information on a job bookmark entry.
  """
  def get_job_bookmark(client, input, options \\ []) do
    request(client, "GetJobBookmark", input, options)
  end

  @doc """
  Retrieves the metadata for a given job run.
  """
  def get_job_run(client, input, options \\ []) do
    request(client, "GetJobRun", input, options)
  end

  @doc """
  Retrieves metadata for all runs of a given job definition.
  """
  def get_job_runs(client, input, options \\ []) do
    request(client, "GetJobRuns", input, options)
  end

  @doc """
  Retrieves all current job definitions.
  """
  def get_jobs(client, input, options \\ []) do
    request(client, "GetJobs", input, options)
  end

  @doc """
  Gets details for a specific task run on a machine learning transform.
  Machine learning task runs are asynchronous tasks that AWS Glue runs on
  your behalf as part of various machine learning workflows. You can check
  the stats of any task run by calling `GetMLTaskRun` with the `TaskRunID`
  and its parent transform's `TransformID`.
  """
  def get_m_l_task_run(client, input, options \\ []) do
    request(client, "GetMLTaskRun", input, options)
  end

  @doc """
  Gets a list of runs for a machine learning transform. Machine learning task
  runs are asynchronous tasks that AWS Glue runs on your behalf as part of
  various machine learning workflows. You can get a sortable, filterable list
  of machine learning task runs by calling `GetMLTaskRuns` with their parent
  transform's `TransformID` and other optional parameters as documented in
  this section.

  This operation returns a list of historic runs and must be paginated.
  """
  def get_m_l_task_runs(client, input, options \\ []) do
    request(client, "GetMLTaskRuns", input, options)
  end

  @doc """
  Gets an AWS Glue machine learning transform artifact and all its
  corresponding metadata. Machine learning transforms are a special type of
  transform that use machine learning to learn the details of the
  transformation to be performed by learning from examples provided by
  humans. These transformations are then saved by AWS Glue. You can retrieve
  their metadata by calling `GetMLTransform`.
  """
  def get_m_l_transform(client, input, options \\ []) do
    request(client, "GetMLTransform", input, options)
  end

  @doc """
  Gets a sortable, filterable list of existing AWS Glue machine learning
  transforms. Machine learning transforms are a special type of transform
  that use machine learning to learn the details of the transformation to be
  performed by learning from examples provided by humans. These
  transformations are then saved by AWS Glue, and you can retrieve their
  metadata by calling `GetMLTransforms`.
  """
  def get_m_l_transforms(client, input, options \\ []) do
    request(client, "GetMLTransforms", input, options)
  end

  @doc """
  Creates mappings.
  """
  def get_mapping(client, input, options \\ []) do
    request(client, "GetMapping", input, options)
  end

  @doc """
  Retrieves information about a specified partition.
  """
  def get_partition(client, input, options \\ []) do
    request(client, "GetPartition", input, options)
  end

  @doc """
  Retrieves information about the partitions in a table.
  """
  def get_partitions(client, input, options \\ []) do
    request(client, "GetPartitions", input, options)
  end

  @doc """
  Gets code to perform a specified mapping.
  """
  def get_plan(client, input, options \\ []) do
    request(client, "GetPlan", input, options)
  end

  @doc """
  Retrieves the security configurations for the resource policies set on
  individual resources, and also the account-level policy.

  This operation also returns the Data Catalog resource policy. However, if
  you enabled metadata encryption in Data Catalog settings, and you do not
  have permission on the AWS KMS key, the operation can't return the Data
  Catalog resource policy.
  """
  def get_resource_policies(client, input, options \\ []) do
    request(client, "GetResourcePolicies", input, options)
  end

  @doc """
  Retrieves a specified resource policy.
  """
  def get_resource_policy(client, input, options \\ []) do
    request(client, "GetResourcePolicy", input, options)
  end

  @doc """
  Retrieves a specified security configuration.
  """
  def get_security_configuration(client, input, options \\ []) do
    request(client, "GetSecurityConfiguration", input, options)
  end

  @doc """
  Retrieves a list of all security configurations.
  """
  def get_security_configurations(client, input, options \\ []) do
    request(client, "GetSecurityConfigurations", input, options)
  end

  @doc """
  Retrieves the `Table` definition in a Data Catalog for a specified table.
  """
  def get_table(client, input, options \\ []) do
    request(client, "GetTable", input, options)
  end

  @doc """
  Retrieves a specified version of a table.
  """
  def get_table_version(client, input, options \\ []) do
    request(client, "GetTableVersion", input, options)
  end

  @doc """
  Retrieves a list of strings that identify available versions of a specified
  table.
  """
  def get_table_versions(client, input, options \\ []) do
    request(client, "GetTableVersions", input, options)
  end

  @doc """
  Retrieves the definitions of some or all of the tables in a given
  `Database`.
  """
  def get_tables(client, input, options \\ []) do
    request(client, "GetTables", input, options)
  end

  @doc """
  Retrieves a list of tags associated with a resource.
  """
  def get_tags(client, input, options \\ []) do
    request(client, "GetTags", input, options)
  end

  @doc """
  Retrieves the definition of a trigger.
  """
  def get_trigger(client, input, options \\ []) do
    request(client, "GetTrigger", input, options)
  end

  @doc """
  Gets all the triggers associated with a job.
  """
  def get_triggers(client, input, options \\ []) do
    request(client, "GetTriggers", input, options)
  end

  @doc """
  Retrieves a specified function definition from the Data Catalog.
  """
  def get_user_defined_function(client, input, options \\ []) do
    request(client, "GetUserDefinedFunction", input, options)
  end

  @doc """
  Retrieves multiple function definitions from the Data Catalog.
  """
  def get_user_defined_functions(client, input, options \\ []) do
    request(client, "GetUserDefinedFunctions", input, options)
  end

  @doc """
  Retrieves resource metadata for a workflow.
  """
  def get_workflow(client, input, options \\ []) do
    request(client, "GetWorkflow", input, options)
  end

  @doc """
  Retrieves the metadata for a given workflow run.
  """
  def get_workflow_run(client, input, options \\ []) do
    request(client, "GetWorkflowRun", input, options)
  end

  @doc """
  Retrieves the workflow run properties which were set during the run.
  """
  def get_workflow_run_properties(client, input, options \\ []) do
    request(client, "GetWorkflowRunProperties", input, options)
  end

  @doc """
  Retrieves metadata for all runs of a given workflow.
  """
  def get_workflow_runs(client, input, options \\ []) do
    request(client, "GetWorkflowRuns", input, options)
  end

  @doc """
  Imports an existing Amazon Athena Data Catalog to AWS Glue
  """
  def import_catalog_to_glue(client, input, options \\ []) do
    request(client, "ImportCatalogToGlue", input, options)
  end

  @doc """
  Retrieves the names of all crawler resources in this AWS account, or the
  resources with the specified tag. This operation allows you to see which
  resources are available in your account, and their names.

  This operation takes the optional `Tags` field, which you can use as a
  filter on the response so that tagged resources can be retrieved as a
  group. If you choose to use tags filtering, only resources with the tag are
  retrieved.
  """
  def list_crawlers(client, input, options \\ []) do
    request(client, "ListCrawlers", input, options)
  end

  @doc """
  Retrieves the names of all `DevEndpoint` resources in this AWS account, or
  the resources with the specified tag. This operation allows you to see
  which resources are available in your account, and their names.

  This operation takes the optional `Tags` field, which you can use as a
  filter on the response so that tagged resources can be retrieved as a
  group. If you choose to use tags filtering, only resources with the tag are
  retrieved.
  """
  def list_dev_endpoints(client, input, options \\ []) do
    request(client, "ListDevEndpoints", input, options)
  end

  @doc """
  Retrieves the names of all job resources in this AWS account, or the
  resources with the specified tag. This operation allows you to see which
  resources are available in your account, and their names.

  This operation takes the optional `Tags` field, which you can use as a
  filter on the response so that tagged resources can be retrieved as a
  group. If you choose to use tags filtering, only resources with the tag are
  retrieved.
  """
  def list_jobs(client, input, options \\ []) do
    request(client, "ListJobs", input, options)
  end

  @doc """
  Retrieves a sortable, filterable list of existing AWS Glue machine learning
  transforms in this AWS account, or the resources with the specified tag.
  This operation takes the optional `Tags` field, which you can use as a
  filter of the responses so that tagged resources can be retrieved as a
  group. If you choose to use tag filtering, only resources with the tags are
  retrieved.
  """
  def list_m_l_transforms(client, input, options \\ []) do
    request(client, "ListMLTransforms", input, options)
  end

  @doc """
  Retrieves the names of all trigger resources in this AWS account, or the
  resources with the specified tag. This operation allows you to see which
  resources are available in your account, and their names.

  This operation takes the optional `Tags` field, which you can use as a
  filter on the response so that tagged resources can be retrieved as a
  group. If you choose to use tags filtering, only resources with the tag are
  retrieved.
  """
  def list_triggers(client, input, options \\ []) do
    request(client, "ListTriggers", input, options)
  end

  @doc """
  Lists names of workflows created in the account.
  """
  def list_workflows(client, input, options \\ []) do
    request(client, "ListWorkflows", input, options)
  end

  @doc """
  Sets the security configuration for a specified catalog. After the
  configuration has been set, the specified encryption is applied to every
  catalog write thereafter.
  """
  def put_data_catalog_encryption_settings(client, input, options \\ []) do
    request(client, "PutDataCatalogEncryptionSettings", input, options)
  end

  @doc """
  Sets the Data Catalog resource policy for access control.
  """
  def put_resource_policy(client, input, options \\ []) do
    request(client, "PutResourcePolicy", input, options)
  end

  @doc """
  Puts the specified workflow run properties for the given workflow run. If a
  property already exists for the specified run, then it overrides the value
  otherwise adds the property to existing properties.
  """
  def put_workflow_run_properties(client, input, options \\ []) do
    request(client, "PutWorkflowRunProperties", input, options)
  end

  @doc """
  Resets a bookmark entry.
  """
  def reset_job_bookmark(client, input, options \\ []) do
    request(client, "ResetJobBookmark", input, options)
  end

  @doc """
  Restarts any completed nodes in a workflow run and resumes the run
  execution.
  """
  def resume_workflow_run(client, input, options \\ []) do
    request(client, "ResumeWorkflowRun", input, options)
  end

  @doc """
  Searches a set of tables based on properties in the table metadata as well
  as on the parent database. You can search against text or filter
  conditions.

  You can only get tables that you have access to based on the security
  policies defined in Lake Formation. You need at least a read-only access to
  the table for it to be returned. If you do not have access to all the
  columns in the table, these columns will not be searched against when
  returning the list of tables back to you. If you have access to the columns
  but not the data in the columns, those columns and the associated metadata
  for those columns will be included in the search.
  """
  def search_tables(client, input, options \\ []) do
    request(client, "SearchTables", input, options)
  end

  @doc """
  Starts a crawl using the specified crawler, regardless of what is
  scheduled. If the crawler is already running, returns a
  [CrawlerRunningException](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-exceptions.html#aws-glue-api-exceptions-CrawlerRunningException).
  """
  def start_crawler(client, input, options \\ []) do
    request(client, "StartCrawler", input, options)
  end

  @doc """
  Changes the schedule state of the specified crawler to `SCHEDULED`, unless
  the crawler is already running or the schedule state is already
  `SCHEDULED`.
  """
  def start_crawler_schedule(client, input, options \\ []) do
    request(client, "StartCrawlerSchedule", input, options)
  end

  @doc """
  Begins an asynchronous task to export all labeled data for a particular
  transform. This task is the only label-related API call that is not part of
  the typical active learning workflow. You typically use
  `StartExportLabelsTaskRun` when you want to work with all of your existing
  labels at the same time, such as when you want to remove or change labels
  that were previously submitted as truth. This API operation accepts the
  `TransformId` whose labels you want to export and an Amazon Simple Storage
  Service (Amazon S3) path to export the labels to. The operation returns a
  `TaskRunId`. You can check on the status of your task run by calling the
  `GetMLTaskRun` API.
  """
  def start_export_labels_task_run(client, input, options \\ []) do
    request(client, "StartExportLabelsTaskRun", input, options)
  end

  @doc """
  Enables you to provide additional labels (examples of truth) to be used to
  teach the machine learning transform and improve its quality. This API
  operation is generally used as part of the active learning workflow that
  starts with the `StartMLLabelingSetGenerationTaskRun` call and that
  ultimately results in improving the quality of your machine learning
  transform.

  After the `StartMLLabelingSetGenerationTaskRun` finishes, AWS Glue machine
  learning will have generated a series of questions for humans to answer.
  (Answering these questions is often called 'labeling' in the machine
  learning workflows). In the case of the `FindMatches` transform, these
  questions are of the form, “What is the correct way to group these rows
  together into groups composed entirely of matching records?” After the
  labeling process is finished, users upload their answers/labels with a call
  to `StartImportLabelsTaskRun`. After `StartImportLabelsTaskRun` finishes,
  all future runs of the machine learning transform use the new and improved
  labels and perform a higher-quality transformation.

  By default, `StartMLLabelingSetGenerationTaskRun` continually learns from
  and combines all labels that you upload unless you set `Replace` to true.
  If you set `Replace` to true, `StartImportLabelsTaskRun` deletes and
  forgets all previously uploaded labels and learns only from the exact set
  that you upload. Replacing labels can be helpful if you realize that you
  previously uploaded incorrect labels, and you believe that they are having
  a negative effect on your transform quality.

  You can check on the status of your task run by calling the `GetMLTaskRun`
  operation.
  """
  def start_import_labels_task_run(client, input, options \\ []) do
    request(client, "StartImportLabelsTaskRun", input, options)
  end

  @doc """
  Starts a job run using a job definition.
  """
  def start_job_run(client, input, options \\ []) do
    request(client, "StartJobRun", input, options)
  end

  @doc """
  Starts a task to estimate the quality of the transform.

  When you provide label sets as examples of truth, AWS Glue machine learning
  uses some of those examples to learn from them. The rest of the labels are
  used as a test to estimate quality.

  Returns a unique identifier for the run. You can call `GetMLTaskRun` to get
  more information about the stats of the `EvaluationTaskRun`.
  """
  def start_m_l_evaluation_task_run(client, input, options \\ []) do
    request(client, "StartMLEvaluationTaskRun", input, options)
  end

  @doc """
  Starts the active learning workflow for your machine learning transform to
  improve the transform's quality by generating label sets and adding labels.

  When the `StartMLLabelingSetGenerationTaskRun` finishes, AWS Glue will have
  generated a "labeling set" or a set of questions for humans to answer.

  In the case of the `FindMatches` transform, these questions are of the
  form, “What is the correct way to group these rows together into groups
  composed entirely of matching records?”

  After the labeling process is finished, you can upload your labels with a
  call to `StartImportLabelsTaskRun`. After `StartImportLabelsTaskRun`
  finishes, all future runs of the machine learning transform will use the
  new and improved labels and perform a higher-quality transformation.
  """
  def start_m_l_labeling_set_generation_task_run(client, input, options \\ []) do
    request(client, "StartMLLabelingSetGenerationTaskRun", input, options)
  end

  @doc """
  Starts an existing trigger. See [Triggering
  Jobs](https://docs.aws.amazon.com/glue/latest/dg/trigger-job.html) for
  information about how different types of trigger are started.
  """
  def start_trigger(client, input, options \\ []) do
    request(client, "StartTrigger", input, options)
  end

  @doc """
  Starts a new run of the specified workflow.
  """
  def start_workflow_run(client, input, options \\ []) do
    request(client, "StartWorkflowRun", input, options)
  end

  @doc """
  If the specified crawler is running, stops the crawl.
  """
  def stop_crawler(client, input, options \\ []) do
    request(client, "StopCrawler", input, options)
  end

  @doc """
  Sets the schedule state of the specified crawler to `NOT_SCHEDULED`, but
  does not stop the crawler if it is already running.
  """
  def stop_crawler_schedule(client, input, options \\ []) do
    request(client, "StopCrawlerSchedule", input, options)
  end

  @doc """
  Stops a specified trigger.
  """
  def stop_trigger(client, input, options \\ []) do
    request(client, "StopTrigger", input, options)
  end

  @doc """
  Stops the execution of the specified workflow run.
  """
  def stop_workflow_run(client, input, options \\ []) do
    request(client, "StopWorkflowRun", input, options)
  end

  @doc """
  Adds tags to a resource. A tag is a label you can assign to an AWS
  resource. In AWS Glue, you can tag only certain resources. For information
  about what resources you can tag, see [AWS Tags in AWS
  Glue](https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html).
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes tags from a resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Modifies an existing classifier (a `GrokClassifier`, an `XMLClassifier`, a
  `JsonClassifier`, or a `CsvClassifier`, depending on which field is
  present).
  """
  def update_classifier(client, input, options \\ []) do
    request(client, "UpdateClassifier", input, options)
  end

  @doc """
  Creates or updates partition statistics of columns.
  """
  def update_column_statistics_for_partition(client, input, options \\ []) do
    request(client, "UpdateColumnStatisticsForPartition", input, options)
  end

  @doc """
  Creates or updates table statistics of columns.
  """
  def update_column_statistics_for_table(client, input, options \\ []) do
    request(client, "UpdateColumnStatisticsForTable", input, options)
  end

  @doc """
  Updates a connection definition in the Data Catalog.
  """
  def update_connection(client, input, options \\ []) do
    request(client, "UpdateConnection", input, options)
  end

  @doc """
  Updates a crawler. If a crawler is running, you must stop it using
  `StopCrawler` before updating it.
  """
  def update_crawler(client, input, options \\ []) do
    request(client, "UpdateCrawler", input, options)
  end

  @doc """
  Updates the schedule of a crawler using a `cron` expression.
  """
  def update_crawler_schedule(client, input, options \\ []) do
    request(client, "UpdateCrawlerSchedule", input, options)
  end

  @doc """
  Updates an existing database definition in a Data Catalog.
  """
  def update_database(client, input, options \\ []) do
    request(client, "UpdateDatabase", input, options)
  end

  @doc """
  Updates a specified development endpoint.
  """
  def update_dev_endpoint(client, input, options \\ []) do
    request(client, "UpdateDevEndpoint", input, options)
  end

  @doc """
  Updates an existing job definition.
  """
  def update_job(client, input, options \\ []) do
    request(client, "UpdateJob", input, options)
  end

  @doc """
  Updates an existing machine learning transform. Call this operation to tune
  the algorithm parameters to achieve better results.

  After calling this operation, you can call the `StartMLEvaluationTaskRun`
  operation to assess how well your new parameters achieved your goals (such
  as improving the quality of your machine learning transform, or making it
  more cost-effective).
  """
  def update_m_l_transform(client, input, options \\ []) do
    request(client, "UpdateMLTransform", input, options)
  end

  @doc """
  Updates a partition.
  """
  def update_partition(client, input, options \\ []) do
    request(client, "UpdatePartition", input, options)
  end

  @doc """
  Updates a metadata table in the Data Catalog.
  """
  def update_table(client, input, options \\ []) do
    request(client, "UpdateTable", input, options)
  end

  @doc """
  Updates a trigger definition.
  """
  def update_trigger(client, input, options \\ []) do
    request(client, "UpdateTrigger", input, options)
  end

  @doc """
  Updates an existing function definition in the Data Catalog.
  """
  def update_user_defined_function(client, input, options \\ []) do
    request(client, "UpdateUserDefinedFunction", input, options)
  end

  @doc """
  Updates an existing workflow.
  """
  def update_workflow(client, input, options \\ []) do
    request(client, "UpdateWorkflow", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "glue"}
    host = build_host("glue", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSGlue.#{action}"}
    ]

    payload = Poison.Encoder.encode(input, %{})
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)

    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
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
end
