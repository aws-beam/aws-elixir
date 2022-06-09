# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DatabaseMigration do
  @moduledoc """
  Database Migration Service

  Database Migration Service (DMS) can migrate your data to and from the most
  widely used commercial and open-source databases such as Oracle, PostgreSQL,
  Microsoft SQL Server, Amazon Redshift, MariaDB, Amazon Aurora, MySQL, and SAP
  Adaptive Server Enterprise (ASE).

  The service supports homogeneous migrations such as Oracle to Oracle, as well as
  heterogeneous migrations between different database platforms, such as Oracle to
  MySQL or SQL Server to PostgreSQL.

  For more information about DMS, see [What Is Database Migration Service?](https://docs.aws.amazon.com/dms/latest/userguide/Welcome.html) in the
  *Database Migration Service User Guide.*
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2016-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "dms",
      global?: false,
      protocol: "json",
      service_id: "Database Migration Service",
      signature_version: "v4",
      signing_name: "dms",
      target_prefix: "AmazonDMSv20160101"
    }
  end

  @doc """
  Adds metadata tags to an DMS resource, including replication instance, endpoint,
  security group, and migration task.

  These tags can also be used with cost allocation reporting to track cost
  associated with DMS resources, or used in a Condition statement in an IAM policy
  for DMS. For more information, see [ `Tag`
  ](https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html) data type
  description.
  """
  def add_tags_to_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddTagsToResource", input, options)
  end

  @doc """
  Applies a pending maintenance action to a resource (for example, to a
  replication instance).
  """
  def apply_pending_maintenance_action(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ApplyPendingMaintenanceAction", input, options)
  end

  @doc """
  Cancels a single premigration assessment run.

  This operation prevents any individual assessments from running if they haven't
  started running. It also attempts to cancel any individual assessments that are
  currently running.
  """
  def cancel_replication_task_assessment_run(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CancelReplicationTaskAssessmentRun", input, options)
  end

  @doc """
  Creates an endpoint using the provided settings.

  For a MySQL source or target endpoint, don't explicitly specify the database
  using the `DatabaseName` request parameter on the `CreateEndpoint` API call.
  Specifying `DatabaseName` when you create a MySQL endpoint replicates all the
  task tables to this single database. For MySQL endpoints, you specify the
  database only when you specify the schema in the table-mapping rules of the DMS
  task.
  """
  def create_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateEndpoint", input, options)
  end

  @doc """
  Creates an DMS event notification subscription.

  You can specify the type of source (`SourceType`) you want to be notified of,
  provide a list of DMS source IDs (`SourceIds`) that triggers the events, and
  provide a list of event categories (`EventCategories`) for events you want to be
  notified of. If you specify both the `SourceType` and `SourceIds`, such as
  `SourceType = replication-instance` and `SourceIdentifier = my-replinstance`,
  you will be notified of all the replication instance events for the specified
  source. If you specify a `SourceType` but don't specify a `SourceIdentifier`,
  you receive notice of the events for that source type for all your DMS sources.
  If you don't specify either `SourceType` nor `SourceIdentifier`, you will be
  notified of events generated from all DMS sources belonging to your customer
  account.

  For more information about DMS events, see [Working with Events and Notifications](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html)
  in the *Database Migration Service User Guide.*
  """
  def create_event_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateEventSubscription", input, options)
  end

  @doc """
  Creates a Fleet Advisor collector using the specified parameters.
  """
  def create_fleet_advisor_collector(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateFleetAdvisorCollector", input, options)
  end

  @doc """
  Creates the replication instance using the specified parameters.

  DMS requires that your account have certain roles with appropriate permissions
  before you can create a replication instance. For information on the required
  roles, see [Creating the IAM Roles to Use With the CLI and DMS API](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.APIRole).
  For information on the required permissions, see [IAM Permissions Needed to Use DMS](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.IAMPermissions).
  """
  def create_replication_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateReplicationInstance", input, options)
  end

  @doc """
  Creates a replication subnet group given a list of the subnet IDs in a VPC.

  The VPC needs to have at least one subnet in at least two availability zones in
  the Amazon Web Services Region, otherwise the service will throw a
  `ReplicationSubnetGroupDoesNotCoverEnoughAZs` exception.
  """
  def create_replication_subnet_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateReplicationSubnetGroup", input, options)
  end

  @doc """
  Creates a replication task using the specified parameters.
  """
  def create_replication_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateReplicationTask", input, options)
  end

  @doc """
  Deletes the specified certificate.
  """
  def delete_certificate(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteCertificate", input, options)
  end

  @doc """
  Deletes the connection between a replication instance and an endpoint.
  """
  def delete_connection(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteConnection", input, options)
  end

  @doc """
  Deletes the specified endpoint.

  All tasks associated with the endpoint must be deleted before you can delete the
  endpoint.
  """
  def delete_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEndpoint", input, options)
  end

  @doc """
  Deletes an DMS event subscription.
  """
  def delete_event_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEventSubscription", input, options)
  end

  @doc """
  Deletes the specified Fleet Advisor collector.
  """
  def delete_fleet_advisor_collector(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteFleetAdvisorCollector", input, options)
  end

  @doc """
  Deletes the specified Fleet Advisor collector databases.
  """
  def delete_fleet_advisor_databases(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteFleetAdvisorDatabases", input, options)
  end

  @doc """
  Deletes the specified replication instance.

  You must delete any migration tasks that are associated with the replication
  instance before you can delete it.
  """
  def delete_replication_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteReplicationInstance", input, options)
  end

  @doc """
  Deletes a subnet group.
  """
  def delete_replication_subnet_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteReplicationSubnetGroup", input, options)
  end

  @doc """
  Deletes the specified replication task.
  """
  def delete_replication_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteReplicationTask", input, options)
  end

  @doc """
  Deletes the record of a single premigration assessment run.

  This operation removes all metadata that DMS maintains about this assessment
  run. However, the operation leaves untouched all information about this
  assessment run that is stored in your Amazon S3 bucket.
  """
  def delete_replication_task_assessment_run(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteReplicationTaskAssessmentRun", input, options)
  end

  @doc """
  Lists all of the DMS attributes for a customer account.

  These attributes include DMS quotas for the account and a unique account
  identifier in a particular DMS region. DMS quotas include a list of resource
  quotas supported by the account, such as the number of replication instances
  allowed. The description for each resource quota, includes the quota name,
  current usage toward that quota, and the quota's maximum value. DMS uses the
  unique account identifier to name each artifact used by DMS in the given region.

  This command does not take any parameters.
  """
  def describe_account_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAccountAttributes", input, options)
  end

  @doc """
  Provides a list of individual assessments that you can specify for a new
  premigration assessment run, given one or more parameters.

  If you specify an existing migration task, this operation provides the default
  individual assessments you can specify for that task. Otherwise, the specified
  parameters model elements of a possible migration task on which to base a
  premigration assessment run.

  To use these migration task modeling parameters, you must specify an existing
  replication instance, a source database engine, a target database engine, and a
  migration type. This combination of parameters potentially limits the default
  individual assessments available for an assessment run created for a
  corresponding migration task.

  If you specify no parameters, this operation provides a list of all possible
  individual assessments that you can specify for an assessment run. If you
  specify any one of the task modeling parameters, you must specify all of them or
  the operation cannot provide a list of individual assessments. The only
  parameter that you can specify alone is for an existing migration task. The
  specified task definition then determines the default list of individual
  assessments that you can specify in an assessment run for the task.
  """
  def describe_applicable_individual_assessments(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeApplicableIndividualAssessments",
      input,
      options
    )
  end

  @doc """
  Provides a description of the certificate.
  """
  def describe_certificates(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCertificates", input, options)
  end

  @doc """
  Describes the status of the connections that have been made between the
  replication instance and an endpoint.

  Connections are created when you test an endpoint.
  """
  def describe_connections(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeConnections", input, options)
  end

  @doc """
  Returns information about the possible endpoint settings available when you
  create an endpoint for a specific database engine.
  """
  def describe_endpoint_settings(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEndpointSettings", input, options)
  end

  @doc """
  Returns information about the type of endpoints available.
  """
  def describe_endpoint_types(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEndpointTypes", input, options)
  end

  @doc """
  Returns information about the endpoints for your account in the current region.
  """
  def describe_endpoints(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEndpoints", input, options)
  end

  @doc """
  Lists categories for all event source types, or, if specified, for a specified
  source type.

  You can see a list of the event categories and source types in [Working with Events and
  Notifications](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html)
  in the *Database Migration Service User Guide.*
  """
  def describe_event_categories(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEventCategories", input, options)
  end

  @doc """
  Lists all the event subscriptions for a customer account.

  The description of a subscription includes `SubscriptionName`, `SNSTopicARN`,
  `CustomerID`, `SourceType`, `SourceID`, `CreationTime`, and `Status`.

  If you specify `SubscriptionName`, this action lists the description for that
  subscription.
  """
  def describe_event_subscriptions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEventSubscriptions", input, options)
  end

  @doc """
  Lists events for a given source identifier and source type.

  You can also specify a start and end time. For more information on DMS events,
  see [Working with Events and Notifications](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html)
  in the *Database Migration Service User Guide.*
  """
  def describe_events(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEvents", input, options)
  end

  @doc """
  Returns a list of the Fleet Advisor collectors in your account.
  """
  def describe_fleet_advisor_collectors(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFleetAdvisorCollectors", input, options)
  end

  @doc """
  Returns a list of Fleet Advisor databases in your account.
  """
  def describe_fleet_advisor_databases(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFleetAdvisorDatabases", input, options)
  end

  @doc """
  Provides descriptions of large-scale assessment (LSA) analyses produced by your
  Fleet Advisor collectors.
  """
  def describe_fleet_advisor_lsa_analysis(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFleetAdvisorLsaAnalysis", input, options)
  end

  @doc """
  Provides descriptions of the schemas discovered by your Fleet Advisor
  collectors.
  """
  def describe_fleet_advisor_schema_object_summary(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeFleetAdvisorSchemaObjectSummary",
      input,
      options
    )
  end

  @doc """
  Returns a list of schemas detected by Fleet Advisor Collectors in your account.
  """
  def describe_fleet_advisor_schemas(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFleetAdvisorSchemas", input, options)
  end

  @doc """
  Returns information about the replication instance types that can be created in
  the specified region.
  """
  def describe_orderable_replication_instances(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeOrderableReplicationInstances",
      input,
      options
    )
  end

  @doc """
  For internal use only
  """
  def describe_pending_maintenance_actions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribePendingMaintenanceActions", input, options)
  end

  @doc """
  Returns the status of the RefreshSchemas operation.
  """
  def describe_refresh_schemas_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeRefreshSchemasStatus", input, options)
  end

  @doc """
  Returns information about the task logs for the specified task.
  """
  def describe_replication_instance_task_logs(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeReplicationInstanceTaskLogs",
      input,
      options
    )
  end

  @doc """
  Returns information about replication instances for your account in the current
  region.
  """
  def describe_replication_instances(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeReplicationInstances", input, options)
  end

  @doc """
  Returns information about the replication subnet groups.
  """
  def describe_replication_subnet_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeReplicationSubnetGroups", input, options)
  end

  @doc """
  Returns the task assessment results from the Amazon S3 bucket that DMS creates
  in your Amazon Web Services account.

  This action always returns the latest results.

  For more information about DMS task assessments, see [Creating a task assessment report](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html)
  in the *Database Migration Service User Guide*.
  """
  def describe_replication_task_assessment_results(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeReplicationTaskAssessmentResults",
      input,
      options
    )
  end

  @doc """
  Returns a paginated list of premigration assessment runs based on filter
  settings.

  These filter settings can specify a combination of premigration assessment runs,
  migration tasks, replication instances, and assessment run status values.

  This operation doesn't return information about individual assessments. For this
  information, see the `DescribeReplicationTaskIndividualAssessments` operation.
  """
  def describe_replication_task_assessment_runs(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeReplicationTaskAssessmentRuns",
      input,
      options
    )
  end

  @doc """
  Returns a paginated list of individual assessments based on filter settings.

  These filter settings can specify a combination of premigration assessment runs,
  migration tasks, and assessment status values.
  """
  def describe_replication_task_individual_assessments(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeReplicationTaskIndividualAssessments",
      input,
      options
    )
  end

  @doc """
  Returns information about replication tasks for your account in the current
  region.
  """
  def describe_replication_tasks(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeReplicationTasks", input, options)
  end

  @doc """
  Returns information about the schema for the specified endpoint.
  """
  def describe_schemas(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeSchemas", input, options)
  end

  @doc """
  Returns table statistics on the database migration task, including table name,
  rows inserted, rows updated, and rows deleted.

  Note that the "last updated" column the DMS console only indicates the time that
  DMS last updated the table statistics record for a table. It does not indicate
  the time of the last update to the table.
  """
  def describe_table_statistics(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTableStatistics", input, options)
  end

  @doc """
  Uploads the specified certificate.
  """
  def import_certificate(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ImportCertificate", input, options)
  end

  @doc """
  Lists all metadata tags attached to an DMS resource, including replication
  instance, endpoint, security group, and migration task.

  For more information, see [ `Tag`
  ](https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html) data type
  description.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Modifies the specified endpoint.

  For a MySQL source or target endpoint, don't explicitly specify the database
  using the `DatabaseName` request parameter on the `ModifyEndpoint` API call.
  Specifying `DatabaseName` when you modify a MySQL endpoint replicates all the
  task tables to this single database. For MySQL endpoints, you specify the
  database only when you specify the schema in the table-mapping rules of the DMS
  task.
  """
  def modify_endpoint(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyEndpoint", input, options)
  end

  @doc """
  Modifies an existing DMS event notification subscription.
  """
  def modify_event_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyEventSubscription", input, options)
  end

  @doc """
  Modifies the replication instance to apply new settings.

  You can change one or more parameters by specifying these parameters and the new
  values in the request.

  Some settings are applied during the maintenance window.
  """
  def modify_replication_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyReplicationInstance", input, options)
  end

  @doc """
  Modifies the settings for the specified replication subnet group.
  """
  def modify_replication_subnet_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyReplicationSubnetGroup", input, options)
  end

  @doc """
  Modifies the specified replication task.

  You can't modify the task endpoints. The task must be stopped before you can
  modify it.

  For more information about DMS tasks, see [Working with Migration Tasks](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html) in the
  *Database Migration Service User Guide*.
  """
  def modify_replication_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyReplicationTask", input, options)
  end

  @doc """
  Moves a replication task from its current replication instance to a different
  target replication instance using the specified parameters.

  The target replication instance must be created with the same or later DMS
  version as the current replication instance.
  """
  def move_replication_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "MoveReplicationTask", input, options)
  end

  @doc """
  Reboots a replication instance.

  Rebooting results in a momentary outage, until the replication instance becomes
  available again.
  """
  def reboot_replication_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RebootReplicationInstance", input, options)
  end

  @doc """
  Populates the schema for the specified endpoint.

  This is an asynchronous operation and can take several minutes. You can check
  the status of this operation by calling the DescribeRefreshSchemasStatus
  operation.
  """
  def refresh_schemas(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RefreshSchemas", input, options)
  end

  @doc """
  Reloads the target database table with the source data.

  You can only use this operation with a task in the `RUNNING` state, otherwise
  the service will throw an `InvalidResourceStateFault` exception.
  """
  def reload_tables(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ReloadTables", input, options)
  end

  @doc """
  Removes metadata tags from an DMS resource, including replication instance,
  endpoint, security group, and migration task.

  For more information, see [ `Tag`
  ](https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html) data type
  description.
  """
  def remove_tags_from_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveTagsFromResource", input, options)
  end

  @doc """
  Runs large-scale assessment (LSA) analysis on every Fleet Advisor collector in
  your account.
  """
  def run_fleet_advisor_lsa_analysis(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RunFleetAdvisorLsaAnalysis", input, options)
  end

  @doc """
  Starts the replication task.

  For more information about DMS tasks, see [Working with Migration Tasks
  ](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html) in the
  *Database Migration Service User Guide.*
  """
  def start_replication_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartReplicationTask", input, options)
  end

  @doc """
  Starts the replication task assessment for unsupported data types in the source
  database.

  You can only use this operation for a task if the following conditions are true:

    * The task must be in the `stopped` state.

    * The task must have successful connections to the source and
  target.

  If either of these conditions are not met, an `InvalidResourceStateFault` error
  will result.

  For information about DMS task assessments, see [Creating a task assessment report](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html)
  in the *Database Migration Service User Guide*.
  """
  def start_replication_task_assessment(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartReplicationTaskAssessment", input, options)
  end

  @doc """
  Starts a new premigration assessment run for one or more individual assessments
  of a migration task.

  The assessments that you can specify depend on the source and target database
  engine and the migration type defined for the given task. To run this operation,
  your migration task must already be created. After you run this operation, you
  can review the status of each individual assessment. You can also run the
  migration task manually after the assessment run and its individual assessments
  complete.
  """
  def start_replication_task_assessment_run(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartReplicationTaskAssessmentRun", input, options)
  end

  @doc """
  Stops the replication task.
  """
  def stop_replication_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopReplicationTask", input, options)
  end

  @doc """
  Tests the connection between the replication instance and the endpoint.
  """
  def test_connection(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TestConnection", input, options)
  end
end
