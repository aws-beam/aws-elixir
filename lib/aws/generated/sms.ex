# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SMS do
  @moduledoc """
  ## Product update

  As of March 31, 2022, Amazon Web Services will discontinue Server Migration
  Service (Amazon Web Services SMS).

  Going forward, we recommend [Amazon Web Services Application Migration Service](http://aws.amazon.com/application-migration-service) (Amazon Web
  Services MGN) as the primary migration service for lift-and-shift migrations.

  You can initiate new migration jobs in Server Migration Service until January 1,
  2022. Complete these active migration projects by March 31, 2022. For more
  information, see [When to Choose AWS Application Migration Service](http://aws.amazon.com/application-migration-service/when-to-choose-aws-mgn/).

  Server Migration Service (Server Migration Service) makes it easier and faster
  for you to migrate your on-premises workloads to Amazon Web Services. To learn
  more about Server Migration Service, see the following resources:

    * [Server Migration Service product page](http://aws.amazon.com/server-migration-service/)

    * [Server Migration Service User Guide](https://docs.aws.amazon.com/server-migration-service/latest/userguide/)
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "SMS",
      api_version: "2016-10-24",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "sms",
      global?: false,
      protocol: "json",
      service_id: "SMS",
      signature_version: "v4",
      signing_name: "sms",
      target_prefix: "AWSServerMigrationService_V2016_10_24"
    }
  end

  @doc """
  Creates an application.

  An application consists of one or more server groups. Each server group contain
  one or more servers.
  """
  def create_app(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateApp", input, options)
  end

  @doc """
  Creates a replication job.

  The replication job schedules periodic replication runs to replicate your server
  to Amazon Web Services. Each replication run creates an Amazon Machine Image
  (AMI).
  """
  def create_replication_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateReplicationJob", input, options)
  end

  @doc """
  Deletes the specified application.

  Optionally deletes the launched stack associated with the application and all
  Server Migration Service replication jobs for servers in the application.
  """
  def delete_app(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteApp", input, options)
  end

  @doc """
  Deletes the launch configuration for the specified application.
  """
  def delete_app_launch_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAppLaunchConfiguration", input, options)
  end

  @doc """
  Deletes the replication configuration for the specified application.
  """
  def delete_app_replication_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAppReplicationConfiguration", input, options)
  end

  @doc """
  Deletes the validation configuration for the specified application.
  """
  def delete_app_validation_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAppValidationConfiguration", input, options)
  end

  @doc """
  Deletes the specified replication job.

  After you delete a replication job, there are no further replication runs.
  Amazon Web Services deletes the contents of the Amazon S3 bucket used to store
  Server Migration Service artifacts. The AMIs created by the replication runs are
  not deleted.
  """
  def delete_replication_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteReplicationJob", input, options)
  end

  @doc """
  Deletes all servers from your server catalog.
  """
  def delete_server_catalog(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteServerCatalog", input, options)
  end

  @doc """
  Disassociates the specified connector from Server Migration Service.

  After you disassociate a connector, it is no longer available to support
  replication jobs.
  """
  def disassociate_connector(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateConnector", input, options)
  end

  @doc """
  Generates a target change set for a currently launched stack and writes it to an
  Amazon S3 object in the customer’s Amazon S3 bucket.
  """
  def generate_change_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GenerateChangeSet", input, options)
  end

  @doc """
  Generates an CloudFormation template based on the current launch configuration
  and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.
  """
  def generate_template(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GenerateTemplate", input, options)
  end

  @doc """
  Retrieve information about the specified application.
  """
  def get_app(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetApp", input, options)
  end

  @doc """
  Retrieves the application launch configuration associated with the specified
  application.
  """
  def get_app_launch_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAppLaunchConfiguration", input, options)
  end

  @doc """
  Retrieves the application replication configuration associated with the
  specified application.
  """
  def get_app_replication_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAppReplicationConfiguration", input, options)
  end

  @doc """
  Retrieves information about a configuration for validating an application.
  """
  def get_app_validation_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAppValidationConfiguration", input, options)
  end

  @doc """
  Retrieves output from validating an application.
  """
  def get_app_validation_output(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAppValidationOutput", input, options)
  end

  @doc """
  Describes the connectors registered with the Server Migration Service.
  """
  def get_connectors(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetConnectors", input, options)
  end

  @doc """
  Describes the specified replication job or all of your replication jobs.
  """
  def get_replication_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetReplicationJobs", input, options)
  end

  @doc """
  Describes the replication runs for the specified replication job.
  """
  def get_replication_runs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetReplicationRuns", input, options)
  end

  @doc """
  Describes the servers in your server catalog.

  Before you can describe your servers, you must import them using
  `ImportServerCatalog`.
  """
  def get_servers(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetServers", input, options)
  end

  @doc """
  Allows application import from Migration Hub.
  """
  def import_app_catalog(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ImportAppCatalog", input, options)
  end

  @doc """
  Gathers a complete list of on-premises servers.

  Connectors must be installed and monitoring all servers to import.

  This call returns immediately, but might take additional time to retrieve all
  the servers.
  """
  def import_server_catalog(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ImportServerCatalog", input, options)
  end

  @doc """
  Launches the specified application as a stack in CloudFormation.
  """
  def launch_app(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "LaunchApp", input, options)
  end

  @doc """
  Retrieves summaries for all applications.
  """
  def list_apps(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListApps", input, options)
  end

  @doc """
  Provides information to Server Migration Service about whether application
  validation is successful.
  """
  def notify_app_validation_output(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "NotifyAppValidationOutput", input, options)
  end

  @doc """
  Creates or updates the launch configuration for the specified application.
  """
  def put_app_launch_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutAppLaunchConfiguration", input, options)
  end

  @doc """
  Creates or updates the replication configuration for the specified application.
  """
  def put_app_replication_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutAppReplicationConfiguration", input, options)
  end

  @doc """
  Creates or updates a validation configuration for the specified application.
  """
  def put_app_validation_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutAppValidationConfiguration", input, options)
  end

  @doc """
  Starts replicating the specified application by creating replication jobs for
  each server in the application.
  """
  def start_app_replication(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartAppReplication", input, options)
  end

  @doc """
  Starts an on-demand replication run for the specified application.
  """
  def start_on_demand_app_replication(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartOnDemandAppReplication", input, options)
  end

  @doc """
  Starts an on-demand replication run for the specified replication job.

  This replication run starts immediately. This replication run is in addition to
  the ones already scheduled.

  There is a limit on the number of on-demand replications runs that you can
  request in a 24-hour period.
  """
  def start_on_demand_replication_run(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartOnDemandReplicationRun", input, options)
  end

  @doc """
  Stops replicating the specified application by deleting the replication job for
  each server in the application.
  """
  def stop_app_replication(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopAppReplication", input, options)
  end

  @doc """
  Terminates the stack for the specified application.
  """
  def terminate_app(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TerminateApp", input, options)
  end

  @doc """
  Updates the specified application.
  """
  def update_app(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateApp", input, options)
  end

  @doc """
  Updates the specified settings for the specified replication job.
  """
  def update_replication_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateReplicationJob", input, options)
  end
end
