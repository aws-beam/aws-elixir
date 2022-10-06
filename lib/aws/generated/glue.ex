# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Glue do
  @moduledoc """
  Glue

  Defines the public endpoint for the Glue service.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2017-03-31",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "glue",
      global?: false,
      protocol: "json",
      service_id: "Glue",
      signature_version: "v4",
      signing_name: "glue",
      target_prefix: "AWSGlue"
    }
  end

  @doc """
  Creates one or more partitions in a batch operation.
  """
  def batch_create_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchCreatePartition", input, options)
  end

  @doc """
  Deletes a list of connection definitions from the Data Catalog.
  """
  def batch_delete_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteConnection", input, options)
  end

  @doc """
  Deletes one or more partitions in a batch operation.
  """
  def batch_delete_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeletePartition", input, options)
  end

  @doc """
  Deletes multiple tables at once.

  After completing this operation, you no longer have access to the table versions
  and partitions that belong to the deleted table. Glue deletes these "orphaned"
  resources asynchronously in a timely manner, at the discretion of the service.

  To ensure the immediate deletion of all related resources, before calling
  `BatchDeleteTable`, use `DeleteTableVersion` or `BatchDeleteTableVersion`, and
  `DeletePartition` or `BatchDeletePartition`, to delete any resources that belong
  to the table.
  """
  def batch_delete_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteTable", input, options)
  end

  @doc """
  Deletes a specified batch of versions of a table.
  """
  def batch_delete_table_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteTableVersion", input, options)
  end

  @doc """
  Retrieves information about a list of blueprints.
  """
  def batch_get_blueprints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetBlueprints", input, options)
  end

  @doc """
  Returns a list of resource metadata for a given list of crawler names.

  After calling the `ListCrawlers` operation, you can call this operation to
  access the data to which you have been granted permissions. This operation
  supports all IAM permissions, including permission conditions that uses tags.
  """
  def batch_get_crawlers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetCrawlers", input, options)
  end

  @doc """
  Retrieves the details for the custom patterns specified by a list of names.
  """
  def batch_get_custom_entity_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetCustomEntityTypes", input, options)
  end

  @doc """
  Returns a list of resource metadata for a given list of development endpoint
  names.

  After calling the `ListDevEndpoints` operation, you can call this operation to
  access the data to which you have been granted permissions. This operation
  supports all IAM permissions, including permission conditions that uses tags.
  """
  def batch_get_dev_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetDevEndpoints", input, options)
  end

  @doc """
  Returns a list of resource metadata for a given list of job names.

  After calling the `ListJobs` operation, you can call this operation to access
  the data to which you have been granted permissions. This operation supports all
  IAM permissions, including permission conditions that uses tags.
  """
  def batch_get_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetJobs", input, options)
  end

  @doc """
  Retrieves partitions in a batch request.
  """
  def batch_get_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetPartition", input, options)
  end

  @doc """
  Returns a list of resource metadata for a given list of trigger names.

  After calling the `ListTriggers` operation, you can call this operation to
  access the data to which you have been granted permissions. This operation
  supports all IAM permissions, including permission conditions that uses tags.
  """
  def batch_get_triggers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetTriggers", input, options)
  end

  @doc """
  Returns a list of resource metadata for a given list of workflow names.

  After calling the `ListWorkflows` operation, you can call this operation to
  access the data to which you have been granted permissions. This operation
  supports all IAM permissions, including permission conditions that uses tags.
  """
  def batch_get_workflows(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetWorkflows", input, options)
  end

  @doc """
  Stops one or more job runs for a specified job definition.
  """
  def batch_stop_job_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchStopJobRun", input, options)
  end

  @doc """
  Updates one or more partitions in a batch operation.
  """
  def batch_update_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchUpdatePartition", input, options)
  end

  @doc """
  Cancels (stops) a task run.

  Machine learning task runs are asynchronous tasks that Glue runs on your behalf
  as part of various machine learning workflows. You can cancel a machine learning
  task run at any time by calling `CancelMLTaskRun` with a task run's parent
  transform's `TransformID` and the task run's `TaskRunId`.
  """
  def cancel_ml_task_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelMLTaskRun", input, options)
  end

  @doc """
  Cancels the statement.
  """
  def cancel_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelStatement", input, options)
  end

  @doc """
  Validates the supplied schema.

  This call has no side effects, it simply validates using the supplied schema
  using `DataFormat` as the format. Since it does not take a schema set name, no
  compatibility checks are performed.
  """
  def check_schema_version_validity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CheckSchemaVersionValidity", input, options)
  end

  @doc """
  Registers a blueprint with Glue.
  """
  def create_blueprint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBlueprint", input, options)
  end

  @doc """
  Creates a classifier in the user's account.

  This can be a `GrokClassifier`, an `XMLClassifier`, a `JsonClassifier`, or a
  `CsvClassifier`, depending on which field of the request is present.
  """
  def create_classifier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateClassifier", input, options)
  end

  @doc """
  Creates a connection definition in the Data Catalog.
  """
  def create_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConnection", input, options)
  end

  @doc """
  Creates a new crawler with specified targets, role, configuration, and optional
  schedule.

  At least one crawl target must be specified, in the `s3Targets` field, the
  `jdbcTargets` field, or the `DynamoDBTargets` field.
  """
  def create_crawler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCrawler", input, options)
  end

  @doc """
  Creates a custom pattern that is used to detect sensitive data across the
  columns and rows of your structured data.

  Each custom pattern you create specifies a regular expression and an optional
  list of context words. If no context words are passed only a regular expression
  is checked.
  """
  def create_custom_entity_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCustomEntityType", input, options)
  end

  @doc """
  Creates a new database in a Data Catalog.
  """
  def create_database(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDatabase", input, options)
  end

  @doc """
  Creates a new development endpoint.
  """
  def create_dev_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDevEndpoint", input, options)
  end

  @doc """
  Creates a new job definition.
  """
  def create_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateJob", input, options)
  end

  @doc """
  Creates an Glue machine learning transform.

  This operation creates the transform and all the necessary parameters to train
  it.

  Call this operation as the first step in the process of using a machine learning
  transform (such as the `FindMatches` transform) for deduplicating data. You can
  provide an optional `Description`, in addition to the parameters that you want
  to use for your algorithm.

  You must also specify certain parameters for the tasks that Glue runs on your
  behalf as part of learning from your data and creating a high-quality machine
  learning transform. These parameters include `Role`, and optionally,
  `AllocatedCapacity`, `Timeout`, and `MaxRetries`. For more information, see
  [Jobs](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html).
  """
  def create_ml_transform(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateMLTransform", input, options)
  end

  @doc """
  Creates a new partition.
  """
  def create_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePartition", input, options)
  end

  @doc """
  Creates a specified partition index in an existing table.
  """
  def create_partition_index(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePartitionIndex", input, options)
  end

  @doc """
  Creates a new registry which may be used to hold a collection of schemas.
  """
  def create_registry(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRegistry", input, options)
  end

  @doc """
  Creates a new schema set and registers the schema definition.

  Returns an error if the schema set already exists without actually registering
  the version.

  When the schema set is created, a version checkpoint will be set to the first
  version. Compatibility mode "DISABLED" restricts any additional schema versions
  from being added after the first schema version. For all other compatibility
  modes, validation of compatibility settings will be applied only from the second
  version onwards when the `RegisterSchemaVersion` API is used.

  When this API is called without a `RegistryId`, this will create an entry for a
  "default-registry" in the registry database tables, if it is not already
  present.
  """
  def create_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSchema", input, options)
  end

  @doc """
  Transforms a directed acyclic graph (DAG) into code.
  """
  def create_script(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateScript", input, options)
  end

  @doc """
  Creates a new security configuration.

  A security configuration is a set of security properties that can be used by
  Glue. You can use a security configuration to encrypt data at rest. For
  information about using security configurations in Glue, see [Encrypting Data Written by Crawlers, Jobs, and Development
  Endpoints](https://docs.aws.amazon.com/glue/latest/dg/encryption-security-configuration.html).
  """
  def create_security_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSecurityConfiguration", input, options)
  end

  @doc """
  Creates a new session.
  """
  def create_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSession", input, options)
  end

  @doc """
  Creates a new table definition in the Data Catalog.
  """
  def create_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTable", input, options)
  end

  @doc """
  Creates a new trigger.
  """
  def create_trigger(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTrigger", input, options)
  end

  @doc """
  Creates a new function definition in the Data Catalog.
  """
  def create_user_defined_function(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUserDefinedFunction", input, options)
  end

  @doc """
  Creates a new workflow.
  """
  def create_workflow(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkflow", input, options)
  end

  @doc """
  Deletes an existing blueprint.
  """
  def delete_blueprint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBlueprint", input, options)
  end

  @doc """
  Removes a classifier from the Data Catalog.
  """
  def delete_classifier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteClassifier", input, options)
  end

  @doc """
  Delete the partition column statistics of a column.

  The Identity and Access Management (IAM) permission required for this operation
  is `DeletePartition`.
  """
  def delete_column_statistics_for_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteColumnStatisticsForPartition", input, options)
  end

  @doc """
  Retrieves table statistics of columns.

  The Identity and Access Management (IAM) permission required for this operation
  is `DeleteTable`.
  """
  def delete_column_statistics_for_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteColumnStatisticsForTable", input, options)
  end

  @doc """
  Deletes a connection from the Data Catalog.
  """
  def delete_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConnection", input, options)
  end

  @doc """
  Removes a specified crawler from the Glue Data Catalog, unless the crawler state
  is `RUNNING`.
  """
  def delete_crawler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCrawler", input, options)
  end

  @doc """
  Deletes a custom pattern by specifying its name.
  """
  def delete_custom_entity_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCustomEntityType", input, options)
  end

  @doc """
  Removes a specified database from a Data Catalog.

  After completing this operation, you no longer have access to the tables (and
  all table versions and partitions that might belong to the tables) and the
  user-defined functions in the deleted database. Glue deletes these "orphaned"
  resources asynchronously in a timely manner, at the discretion of the service.

  To ensure the immediate deletion of all related resources, before calling
  `DeleteDatabase`, use `DeleteTableVersion` or `BatchDeleteTableVersion`,
  `DeletePartition` or `BatchDeletePartition`, `DeleteUserDefinedFunction`, and
  `DeleteTable` or `BatchDeleteTable`, to delete any resources that belong to the
  database.
  """
  def delete_database(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDatabase", input, options)
  end

  @doc """
  Deletes a specified development endpoint.
  """
  def delete_dev_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDevEndpoint", input, options)
  end

  @doc """
  Deletes a specified job definition.

  If the job definition is not found, no exception is thrown.
  """
  def delete_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteJob", input, options)
  end

  @doc """
  Deletes an Glue machine learning transform.

  Machine learning transforms are a special type of transform that use machine
  learning to learn the details of the transformation to be performed by learning
  from examples provided by humans. These transformations are then saved by Glue.
  If you no longer need a transform, you can delete it by calling
  `DeleteMLTransforms`. However, any Glue jobs that still reference the deleted
  transform will no longer succeed.
  """
  def delete_ml_transform(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteMLTransform", input, options)
  end

  @doc """
  Deletes a specified partition.
  """
  def delete_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePartition", input, options)
  end

  @doc """
  Deletes a specified partition index from an existing table.
  """
  def delete_partition_index(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePartitionIndex", input, options)
  end

  @doc """
  Delete the entire registry including schema and all of its versions.

  To get the status of the delete operation, you can call the `GetRegistry` API
  after the asynchronous call. Deleting a registry will deactivate all online
  operations for the registry such as the `UpdateRegistry`, `CreateSchema`,
  `UpdateSchema`, and `RegisterSchemaVersion` APIs.
  """
  def delete_registry(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRegistry", input, options)
  end

  @doc """
  Deletes a specified policy.
  """
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes the entire schema set, including the schema set and all of its versions.

  To get the status of the delete operation, you can call `GetSchema` API after
  the asynchronous call. Deleting a registry will deactivate all online operations
  for the schema, such as the `GetSchemaByDefinition`, and `RegisterSchemaVersion`
  APIs.
  """
  def delete_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSchema", input, options)
  end

  @doc """
  Remove versions from the specified schema.

  A version number or range may be supplied. If the compatibility mode forbids
  deleting of a version that is necessary, such as BACKWARDS_FULL, an error is
  returned. Calling the `GetSchemaVersions` API after this call will list the
  status of the deleted versions.

  When the range of version numbers contain check pointed version, the API will
  return a 409 conflict and will not proceed with the deletion. You have to remove
  the checkpoint first using the `DeleteSchemaCheckpoint` API before using this
  API.

  You cannot use the `DeleteSchemaVersions` API to delete the first schema version
  in the schema set. The first schema version can only be deleted by the
  `DeleteSchema` API. This operation will also delete the attached
  `SchemaVersionMetadata` under the schema versions. Hard deletes will be enforced
  on the database.

  If the compatibility mode forbids deleting of a version that is necessary, such
  as BACKWARDS_FULL, an error is returned.
  """
  def delete_schema_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSchemaVersions", input, options)
  end

  @doc """
  Deletes a specified security configuration.
  """
  def delete_security_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSecurityConfiguration", input, options)
  end

  @doc """
  Deletes the session.
  """
  def delete_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSession", input, options)
  end

  @doc """
  Removes a table definition from the Data Catalog.

  After completing this operation, you no longer have access to the table versions
  and partitions that belong to the deleted table. Glue deletes these "orphaned"
  resources asynchronously in a timely manner, at the discretion of the service.

  To ensure the immediate deletion of all related resources, before calling
  `DeleteTable`, use `DeleteTableVersion` or `BatchDeleteTableVersion`, and
  `DeletePartition` or `BatchDeletePartition`, to delete any resources that belong
  to the table.
  """
  def delete_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTable", input, options)
  end

  @doc """
  Deletes a specified version of a table.
  """
  def delete_table_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTableVersion", input, options)
  end

  @doc """
  Deletes a specified trigger.

  If the trigger is not found, no exception is thrown.
  """
  def delete_trigger(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTrigger", input, options)
  end

  @doc """
  Deletes an existing function definition from the Data Catalog.
  """
  def delete_user_defined_function(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUserDefinedFunction", input, options)
  end

  @doc """
  Deletes a workflow.
  """
  def delete_workflow(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWorkflow", input, options)
  end

  @doc """
  Retrieves the details of a blueprint.
  """
  def get_blueprint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetBlueprint", input, options)
  end

  @doc """
  Retrieves the details of a blueprint run.
  """
  def get_blueprint_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetBlueprintRun", input, options)
  end

  @doc """
  Retrieves the details of blueprint runs for a specified blueprint.
  """
  def get_blueprint_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetBlueprintRuns", input, options)
  end

  @doc """
  Retrieves the status of a migration operation.
  """
  def get_catalog_import_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCatalogImportStatus", input, options)
  end

  @doc """
  Retrieve a classifier by name.
  """
  def get_classifier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetClassifier", input, options)
  end

  @doc """
  Lists all classifier objects in the Data Catalog.
  """
  def get_classifiers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetClassifiers", input, options)
  end

  @doc """
  Retrieves partition statistics of columns.

  The Identity and Access Management (IAM) permission required for this operation
  is `GetPartition`.
  """
  def get_column_statistics_for_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetColumnStatisticsForPartition", input, options)
  end

  @doc """
  Retrieves table statistics of columns.

  The Identity and Access Management (IAM) permission required for this operation
  is `GetTable`.
  """
  def get_column_statistics_for_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetColumnStatisticsForTable", input, options)
  end

  @doc """
  Retrieves a connection definition from the Data Catalog.
  """
  def get_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConnection", input, options)
  end

  @doc """
  Retrieves a list of connection definitions from the Data Catalog.
  """
  def get_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConnections", input, options)
  end

  @doc """
  Retrieves metadata for a specified crawler.
  """
  def get_crawler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCrawler", input, options)
  end

  @doc """
  Retrieves metrics about specified crawlers.
  """
  def get_crawler_metrics(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCrawlerMetrics", input, options)
  end

  @doc """
  Retrieves metadata for all crawlers defined in the customer account.
  """
  def get_crawlers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCrawlers", input, options)
  end

  @doc """
  Retrieves the details of a custom pattern by specifying its name.
  """
  def get_custom_entity_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCustomEntityType", input, options)
  end

  @doc """
  Retrieves the security configuration for a specified catalog.
  """
  def get_data_catalog_encryption_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDataCatalogEncryptionSettings", input, options)
  end

  @doc """
  Retrieves the definition of a specified database.
  """
  def get_database(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDatabase", input, options)
  end

  @doc """
  Retrieves all databases defined in a given Data Catalog.
  """
  def get_databases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDatabases", input, options)
  end

  @doc """
  Transforms a Python script into a directed acyclic graph (DAG).
  """
  def get_dataflow_graph(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDataflowGraph", input, options)
  end

  @doc """
  Retrieves information about a specified development endpoint.

  When you create a development endpoint in a virtual private cloud (VPC), Glue
  returns only a private IP address, and the public IP address field is not
  populated. When you create a non-VPC development endpoint, Glue returns only a
  public IP address.
  """
  def get_dev_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDevEndpoint", input, options)
  end

  @doc """
  Retrieves all the development endpoints in this AWS account.

  When you create a development endpoint in a virtual private cloud (VPC), Glue
  returns only a private IP address and the public IP address field is not
  populated. When you create a non-VPC development endpoint, Glue returns only a
  public IP address.
  """
  def get_dev_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDevEndpoints", input, options)
  end

  @doc """
  Retrieves an existing job definition.
  """
  def get_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetJob", input, options)
  end

  @doc """
  Returns information on a job bookmark entry.
  """
  def get_job_bookmark(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetJobBookmark", input, options)
  end

  @doc """
  Retrieves the metadata for a given job run.
  """
  def get_job_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetJobRun", input, options)
  end

  @doc """
  Retrieves metadata for all runs of a given job definition.
  """
  def get_job_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetJobRuns", input, options)
  end

  @doc """
  Retrieves all current job definitions.
  """
  def get_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetJobs", input, options)
  end

  @doc """
  Creates mappings.
  """
  def get_mapping(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMapping", input, options)
  end

  @doc """
  Gets details for a specific task run on a machine learning transform.

  Machine learning task runs are asynchronous tasks that Glue runs on your behalf
  as part of various machine learning workflows. You can check the stats of any
  task run by calling `GetMLTaskRun` with the `TaskRunID` and its parent
  transform's `TransformID`.
  """
  def get_ml_task_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMLTaskRun", input, options)
  end

  @doc """
  Gets a list of runs for a machine learning transform.

  Machine learning task runs are asynchronous tasks that Glue runs on your behalf
  as part of various machine learning workflows. You can get a sortable,
  filterable list of machine learning task runs by calling `GetMLTaskRuns` with
  their parent transform's `TransformID` and other optional parameters as
  documented in this section.

  This operation returns a list of historic runs and must be paginated.
  """
  def get_ml_task_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMLTaskRuns", input, options)
  end

  @doc """
  Gets an Glue machine learning transform artifact and all its corresponding
  metadata.

  Machine learning transforms are a special type of transform that use machine
  learning to learn the details of the transformation to be performed by learning
  from examples provided by humans. These transformations are then saved by Glue.
  You can retrieve their metadata by calling `GetMLTransform`.
  """
  def get_ml_transform(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMLTransform", input, options)
  end

  @doc """
  Gets a sortable, filterable list of existing Glue machine learning transforms.

  Machine learning transforms are a special type of transform that use machine
  learning to learn the details of the transformation to be performed by learning
  from examples provided by humans. These transformations are then saved by Glue,
  and you can retrieve their metadata by calling `GetMLTransforms`.
  """
  def get_ml_transforms(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetMLTransforms", input, options)
  end

  @doc """
  Retrieves information about a specified partition.
  """
  def get_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPartition", input, options)
  end

  @doc """
  Retrieves the partition indexes associated with a table.
  """
  def get_partition_indexes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPartitionIndexes", input, options)
  end

  @doc """
  Retrieves information about the partitions in a table.
  """
  def get_partitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPartitions", input, options)
  end

  @doc """
  Gets code to perform a specified mapping.
  """
  def get_plan(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPlan", input, options)
  end

  @doc """
  Describes the specified registry in detail.
  """
  def get_registry(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRegistry", input, options)
  end

  @doc """
  Retrieves the resource policies set on individual resources by Resource Access
  Manager during cross-account permission grants.

  Also retrieves the Data Catalog resource policy.

  If you enabled metadata encryption in Data Catalog settings, and you do not have
  permission on the KMS key, the operation can't return the Data Catalog resource
  policy.
  """
  def get_resource_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourcePolicies", input, options)
  end

  @doc """
  Retrieves a specified resource policy.
  """
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourcePolicy", input, options)
  end

  @doc """
  Describes the specified schema in detail.
  """
  def get_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSchema", input, options)
  end

  @doc """
  Retrieves a schema by the `SchemaDefinition`.

  The schema definition is sent to the Schema Registry, canonicalized, and hashed.
  If the hash is matched within the scope of the `SchemaName` or ARN (or the
  default registry, if none is supplied), that schema’s metadata is returned.
  Otherwise, a 404 or NotFound error is returned. Schema versions in `Deleted`
  statuses will not be included in the results.
  """
  def get_schema_by_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSchemaByDefinition", input, options)
  end

  @doc """
  Get the specified schema by its unique ID assigned when a version of the schema
  is created or registered.

  Schema versions in Deleted status will not be included in the results.
  """
  def get_schema_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSchemaVersion", input, options)
  end

  @doc """
  Fetches the schema version difference in the specified difference type between
  two stored schema versions in the Schema Registry.

  This API allows you to compare two schema versions between two schema
  definitions under the same schema.
  """
  def get_schema_versions_diff(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSchemaVersionsDiff", input, options)
  end

  @doc """
  Retrieves a specified security configuration.
  """
  def get_security_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSecurityConfiguration", input, options)
  end

  @doc """
  Retrieves a list of all security configurations.
  """
  def get_security_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSecurityConfigurations", input, options)
  end

  @doc """
  Retrieves the session.
  """
  def get_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSession", input, options)
  end

  @doc """
  Retrieves the statement.
  """
  def get_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetStatement", input, options)
  end

  @doc """
  Retrieves the `Table` definition in a Data Catalog for a specified table.
  """
  def get_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTable", input, options)
  end

  @doc """
  Retrieves a specified version of a table.
  """
  def get_table_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTableVersion", input, options)
  end

  @doc """
  Retrieves a list of strings that identify available versions of a specified
  table.
  """
  def get_table_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTableVersions", input, options)
  end

  @doc """
  Retrieves the definitions of some or all of the tables in a given `Database`.
  """
  def get_tables(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTables", input, options)
  end

  @doc """
  Retrieves a list of tags associated with a resource.
  """
  def get_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTags", input, options)
  end

  @doc """
  Retrieves the definition of a trigger.
  """
  def get_trigger(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTrigger", input, options)
  end

  @doc """
  Gets all the triggers associated with a job.
  """
  def get_triggers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTriggers", input, options)
  end

  def get_unfiltered_partition_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUnfilteredPartitionMetadata", input, options)
  end

  def get_unfiltered_partitions_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUnfilteredPartitionsMetadata", input, options)
  end

  def get_unfiltered_table_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUnfilteredTableMetadata", input, options)
  end

  @doc """
  Retrieves a specified function definition from the Data Catalog.
  """
  def get_user_defined_function(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUserDefinedFunction", input, options)
  end

  @doc """
  Retrieves multiple function definitions from the Data Catalog.
  """
  def get_user_defined_functions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUserDefinedFunctions", input, options)
  end

  @doc """
  Retrieves resource metadata for a workflow.
  """
  def get_workflow(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWorkflow", input, options)
  end

  @doc """
  Retrieves the metadata for a given workflow run.
  """
  def get_workflow_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWorkflowRun", input, options)
  end

  @doc """
  Retrieves the workflow run properties which were set during the run.
  """
  def get_workflow_run_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWorkflowRunProperties", input, options)
  end

  @doc """
  Retrieves metadata for all runs of a given workflow.
  """
  def get_workflow_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWorkflowRuns", input, options)
  end

  @doc """
  Imports an existing Amazon Athena Data Catalog to Glue.
  """
  def import_catalog_to_glue(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportCatalogToGlue", input, options)
  end

  @doc """
  Lists all the blueprint names in an account.
  """
  def list_blueprints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBlueprints", input, options)
  end

  @doc """
  Retrieves the names of all crawler resources in this Amazon Web Services
  account, or the resources with the specified tag.

  This operation allows you to see which resources are available in your account,
  and their names.

  This operation takes the optional `Tags` field, which you can use as a filter on
  the response so that tagged resources can be retrieved as a group. If you choose
  to use tags filtering, only resources with the tag are retrieved.
  """
  def list_crawlers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCrawlers", input, options)
  end

  @doc """
  Returns all the crawls of a specified crawler.

  Returns only the crawls that have occurred since the launch date of the crawler
  history feature, and only retains up to 12 months of crawls. Older crawls will
  not be returned.

  You may use this API to:

    * Retrive all the crawls of a specified crawler.

    * Retrieve all the crawls of a specified crawler within a limited
  count.

    * Retrieve all the crawls of a specified crawler in a specific time
  range.

    * Retrieve all the crawls of a specified crawler with a particular
  state, crawl ID, or DPU hour value.
  """
  def list_crawls(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCrawls", input, options)
  end

  @doc """
  Lists all the custom patterns that have been created.
  """
  def list_custom_entity_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCustomEntityTypes", input, options)
  end

  @doc """
  Retrieves the names of all `DevEndpoint` resources in this Amazon Web Services
  account, or the resources with the specified tag.

  This operation allows you to see which resources are available in your account,
  and their names.

  This operation takes the optional `Tags` field, which you can use as a filter on
  the response so that tagged resources can be retrieved as a group. If you choose
  to use tags filtering, only resources with the tag are retrieved.
  """
  def list_dev_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDevEndpoints", input, options)
  end

  @doc """
  Retrieves the names of all job resources in this Amazon Web Services account, or
  the resources with the specified tag.

  This operation allows you to see which resources are available in your account,
  and their names.

  This operation takes the optional `Tags` field, which you can use as a filter on
  the response so that tagged resources can be retrieved as a group. If you choose
  to use tags filtering, only resources with the tag are retrieved.
  """
  def list_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListJobs", input, options)
  end

  @doc """
  Retrieves a sortable, filterable list of existing Glue machine learning
  transforms in this Amazon Web Services account, or the resources with the
  specified tag.

  This operation takes the optional `Tags` field, which you can use as a filter of
  the responses so that tagged resources can be retrieved as a group. If you
  choose to use tag filtering, only resources with the tags are retrieved.
  """
  def list_ml_transforms(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMLTransforms", input, options)
  end

  @doc """
  Returns a list of registries that you have created, with minimal registry
  information.

  Registries in the `Deleting` status will not be included in the results. Empty
  results will be returned if there are no registries available.
  """
  def list_registries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRegistries", input, options)
  end

  @doc """
  Returns a list of schema versions that you have created, with minimal
  information.

  Schema versions in Deleted status will not be included in the results. Empty
  results will be returned if there are no schema versions available.
  """
  def list_schema_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSchemaVersions", input, options)
  end

  @doc """
  Returns a list of schemas with minimal details.

  Schemas in Deleting status will not be included in the results. Empty results
  will be returned if there are no schemas available.

  When the `RegistryId` is not provided, all the schemas across registries will be
  part of the API response.
  """
  def list_schemas(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSchemas", input, options)
  end

  @doc """
  Retrieve a list of sessions.
  """
  def list_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSessions", input, options)
  end

  @doc """
  Lists statements for the session.
  """
  def list_statements(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListStatements", input, options)
  end

  @doc """
  Retrieves the names of all trigger resources in this Amazon Web Services
  account, or the resources with the specified tag.

  This operation allows you to see which resources are available in your account,
  and their names.

  This operation takes the optional `Tags` field, which you can use as a filter on
  the response so that tagged resources can be retrieved as a group. If you choose
  to use tags filtering, only resources with the tag are retrieved.
  """
  def list_triggers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTriggers", input, options)
  end

  @doc """
  Lists names of workflows created in the account.
  """
  def list_workflows(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWorkflows", input, options)
  end

  @doc """
  Sets the security configuration for a specified catalog.

  After the configuration has been set, the specified encryption is applied to
  every catalog write thereafter.
  """
  def put_data_catalog_encryption_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutDataCatalogEncryptionSettings", input, options)
  end

  @doc """
  Sets the Data Catalog resource policy for access control.
  """
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Puts the metadata key value pair for a specified schema version ID.

  A maximum of 10 key value pairs will be allowed per schema version. They can be
  added over one or more calls.
  """
  def put_schema_version_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutSchemaVersionMetadata", input, options)
  end

  @doc """
  Puts the specified workflow run properties for the given workflow run.

  If a property already exists for the specified run, then it overrides the value
  otherwise adds the property to existing properties.
  """
  def put_workflow_run_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutWorkflowRunProperties", input, options)
  end

  @doc """
  Queries for the schema version metadata information.
  """
  def query_schema_version_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "QuerySchemaVersionMetadata", input, options)
  end

  @doc """
  Adds a new version to the existing schema.

  Returns an error if new version of schema does not meet the compatibility
  requirements of the schema set. This API will not create a new schema set and
  will return a 404 error if the schema set is not already present in the Schema
  Registry.

  If this is the first schema definition to be registered in the Schema Registry,
  this API will store the schema version and return immediately. Otherwise, this
  call has the potential to run longer than other operations due to compatibility
  modes. You can call the `GetSchemaVersion` API with the `SchemaVersionId` to
  check compatibility modes.

  If the same schema definition is already stored in Schema Registry as a version,
  the schema ID of the existing schema is returned to the caller.
  """
  def register_schema_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterSchemaVersion", input, options)
  end

  @doc """
  Removes a key value pair from the schema version metadata for the specified
  schema version ID.
  """
  def remove_schema_version_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveSchemaVersionMetadata", input, options)
  end

  @doc """
  Resets a bookmark entry.
  """
  def reset_job_bookmark(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResetJobBookmark", input, options)
  end

  @doc """
  Restarts selected nodes of a previous partially completed workflow run and
  resumes the workflow run.

  The selected nodes and all nodes that are downstream from the selected nodes are
  run.
  """
  def resume_workflow_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResumeWorkflowRun", input, options)
  end

  @doc """
  Executes the statement.
  """
  def run_statement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RunStatement", input, options)
  end

  @doc """
  Searches a set of tables based on properties in the table metadata as well as on
  the parent database.

  You can search against text or filter conditions.

  You can only get tables that you have access to based on the security policies
  defined in Lake Formation. You need at least a read-only access to the table for
  it to be returned. If you do not have access to all the columns in the table,
  these columns will not be searched against when returning the list of tables
  back to you. If you have access to the columns but not the data in the columns,
  those columns and the associated metadata for those columns will be included in
  the search.
  """
  def search_tables(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchTables", input, options)
  end

  @doc """
  Starts a new run of the specified blueprint.
  """
  def start_blueprint_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartBlueprintRun", input, options)
  end

  @doc """
  Starts a crawl using the specified crawler, regardless of what is scheduled.

  If the crawler is already running, returns a
  [CrawlerRunningException](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-exceptions.html#aws-glue-api-exceptions-CrawlerRunningException).
  """
  def start_crawler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartCrawler", input, options)
  end

  @doc """
  Changes the schedule state of the specified crawler to `SCHEDULED`, unless the
  crawler is already running or the schedule state is already `SCHEDULED`.
  """
  def start_crawler_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartCrawlerSchedule", input, options)
  end

  @doc """
  Begins an asynchronous task to export all labeled data for a particular
  transform.

  This task is the only label-related API call that is not part of the typical
  active learning workflow. You typically use `StartExportLabelsTaskRun` when you
  want to work with all of your existing labels at the same time, such as when you
  want to remove or change labels that were previously submitted as truth. This
  API operation accepts the `TransformId` whose labels you want to export and an
  Amazon Simple Storage Service (Amazon S3) path to export the labels to. The
  operation returns a `TaskRunId`. You can check on the status of your task run by
  calling the `GetMLTaskRun` API.
  """
  def start_export_labels_task_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartExportLabelsTaskRun", input, options)
  end

  @doc """
  Enables you to provide additional labels (examples of truth) to be used to teach
  the machine learning transform and improve its quality.

  This API operation is generally used as part of the active learning workflow
  that starts with the `StartMLLabelingSetGenerationTaskRun` call and that
  ultimately results in improving the quality of your machine learning transform.

  After the `StartMLLabelingSetGenerationTaskRun` finishes, Glue machine learning
  will have generated a series of questions for humans to answer. (Answering these
  questions is often called 'labeling' in the machine learning workflows). In the
  case of the `FindMatches` transform, these questions are of the form, “What is
  the correct way to group these rows together into groups composed entirely of
  matching records?” After the labeling process is finished, users upload their
  answers/labels with a call to `StartImportLabelsTaskRun`. After
  `StartImportLabelsTaskRun` finishes, all future runs of the machine learning
  transform use the new and improved labels and perform a higher-quality
  transformation.

  By default, `StartMLLabelingSetGenerationTaskRun` continually learns from and
  combines all labels that you upload unless you set `Replace` to true. If you set
  `Replace` to true, `StartImportLabelsTaskRun` deletes and forgets all previously
  uploaded labels and learns only from the exact set that you upload. Replacing
  labels can be helpful if you realize that you previously uploaded incorrect
  labels, and you believe that they are having a negative effect on your transform
  quality.

  You can check on the status of your task run by calling the `GetMLTaskRun`
  operation.
  """
  def start_import_labels_task_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartImportLabelsTaskRun", input, options)
  end

  @doc """
  Starts a job run using a job definition.
  """
  def start_job_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartJobRun", input, options)
  end

  @doc """
  Starts a task to estimate the quality of the transform.

  When you provide label sets as examples of truth, Glue machine learning uses
  some of those examples to learn from them. The rest of the labels are used as a
  test to estimate quality.

  Returns a unique identifier for the run. You can call `GetMLTaskRun` to get more
  information about the stats of the `EvaluationTaskRun`.
  """
  def start_ml_evaluation_task_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMLEvaluationTaskRun", input, options)
  end

  @doc """
  Starts the active learning workflow for your machine learning transform to
  improve the transform's quality by generating label sets and adding labels.

  When the `StartMLLabelingSetGenerationTaskRun` finishes, Glue will have
  generated a "labeling set" or a set of questions for humans to answer.

  In the case of the `FindMatches` transform, these questions are of the form,
  “What is the correct way to group these rows together into groups composed
  entirely of matching records?”

  After the labeling process is finished, you can upload your labels with a call
  to `StartImportLabelsTaskRun`. After `StartImportLabelsTaskRun` finishes, all
  future runs of the machine learning transform will use the new and improved
  labels and perform a higher-quality transformation.
  """
  def start_ml_labeling_set_generation_task_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMLLabelingSetGenerationTaskRun", input, options)
  end

  @doc """
  Starts an existing trigger.

  See [Triggering Jobs](https://docs.aws.amazon.com/glue/latest/dg/trigger-job.html) for
  information about how different types of trigger are started.
  """
  def start_trigger(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartTrigger", input, options)
  end

  @doc """
  Starts a new run of the specified workflow.
  """
  def start_workflow_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartWorkflowRun", input, options)
  end

  @doc """
  If the specified crawler is running, stops the crawl.
  """
  def stop_crawler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopCrawler", input, options)
  end

  @doc """
  Sets the schedule state of the specified crawler to `NOT_SCHEDULED`, but does
  not stop the crawler if it is already running.
  """
  def stop_crawler_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopCrawlerSchedule", input, options)
  end

  @doc """
  Stops the session.
  """
  def stop_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopSession", input, options)
  end

  @doc """
  Stops a specified trigger.
  """
  def stop_trigger(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopTrigger", input, options)
  end

  @doc """
  Stops the execution of the specified workflow run.
  """
  def stop_workflow_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopWorkflowRun", input, options)
  end

  @doc """
  Adds tags to a resource.

  A tag is a label you can assign to an Amazon Web Services resource. In Glue, you
  can tag only certain resources. For information about what resources you can
  tag, see [Amazon Web Services Tags in Glue](https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html).
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes tags from a resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates a registered blueprint.
  """
  def update_blueprint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateBlueprint", input, options)
  end

  @doc """
  Modifies an existing classifier (a `GrokClassifier`, an `XMLClassifier`, a
  `JsonClassifier`, or a `CsvClassifier`, depending on which field is present).
  """
  def update_classifier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateClassifier", input, options)
  end

  @doc """
  Creates or updates partition statistics of columns.

  The Identity and Access Management (IAM) permission required for this operation
  is `UpdatePartition`.
  """
  def update_column_statistics_for_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateColumnStatisticsForPartition", input, options)
  end

  @doc """
  Creates or updates table statistics of columns.

  The Identity and Access Management (IAM) permission required for this operation
  is `UpdateTable`.
  """
  def update_column_statistics_for_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateColumnStatisticsForTable", input, options)
  end

  @doc """
  Updates a connection definition in the Data Catalog.
  """
  def update_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateConnection", input, options)
  end

  @doc """
  Updates a crawler.

  If a crawler is running, you must stop it using `StopCrawler` before updating
  it.
  """
  def update_crawler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCrawler", input, options)
  end

  @doc """
  Updates the schedule of a crawler using a `cron` expression.
  """
  def update_crawler_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCrawlerSchedule", input, options)
  end

  @doc """
  Updates an existing database definition in a Data Catalog.
  """
  def update_database(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDatabase", input, options)
  end

  @doc """
  Updates a specified development endpoint.
  """
  def update_dev_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDevEndpoint", input, options)
  end

  @doc """
  Updates an existing job definition.

  The previous job definition is completely overwritten by this information.
  """
  def update_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateJob", input, options)
  end

  @doc """
  Synchronizes a job from the source control repository.

  This operation takes the job artifacts that are located in the remote repository
  and updates the Glue internal stores with these artifacts.

  This API supports optional parameters which take in the repository information.
  """
  def update_job_from_source_control(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateJobFromSourceControl", input, options)
  end

  @doc """
  Updates an existing machine learning transform.

  Call this operation to tune the algorithm parameters to achieve better results.

  After calling this operation, you can call the `StartMLEvaluationTaskRun`
  operation to assess how well your new parameters achieved your goals (such as
  improving the quality of your machine learning transform, or making it more
  cost-effective).
  """
  def update_ml_transform(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMLTransform", input, options)
  end

  @doc """
  Updates a partition.
  """
  def update_partition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePartition", input, options)
  end

  @doc """
  Updates an existing registry which is used to hold a collection of schemas.

  The updated properties relate to the registry, and do not modify any of the
  schemas within the registry.
  """
  def update_registry(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRegistry", input, options)
  end

  @doc """
  Updates the description, compatibility setting, or version checkpoint for a
  schema set.

  For updating the compatibility setting, the call will not validate compatibility
  for the entire set of schema versions with the new compatibility setting. If the
  value for `Compatibility` is provided, the `VersionNumber` (a checkpoint) is
  also required. The API will validate the checkpoint version number for
  consistency.

  If the value for the `VersionNumber` (checkpoint) is provided, `Compatibility`
  is optional and this can be used to set/reset a checkpoint for the schema.

  This update will happen only if the schema is in the AVAILABLE state.
  """
  def update_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSchema", input, options)
  end

  @doc """
  Synchronizes a job to the source control repository.

  This operation takes the job artifacts from the Glue internal stores and makes a
  commit to the remote repository that is configured on the job.

  This API supports optional parameters which take in the repository information.
  """
  def update_source_control_from_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSourceControlFromJob", input, options)
  end

  @doc """
  Updates a metadata table in the Data Catalog.
  """
  def update_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTable", input, options)
  end

  @doc """
  Updates a trigger definition.
  """
  def update_trigger(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTrigger", input, options)
  end

  @doc """
  Updates an existing function definition in the Data Catalog.
  """
  def update_user_defined_function(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateUserDefinedFunction", input, options)
  end

  @doc """
  Updates an existing workflow.
  """
  def update_workflow(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWorkflow", input, options)
  end
end
