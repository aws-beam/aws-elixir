# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SMS do
  @moduledoc """
  AWS Server Migration Service

  AWS Server Migration Service (AWS SMS) makes it easier and faster for you
  to migrate your on-premises workloads to AWS. To learn more about AWS SMS,
  see the following resources:

  <ul> <li> [AWS Server Migration Service product
  page](http://aws.amazon.com/server-migration-service/)

  </li> <li> [AWS Server Migration Service User
  Guide](https://docs.aws.amazon.com/server-migration-service/latest/userguide/)

  </li> </ul>
  """

  @doc """
  Creates an application. An application consists of one or more server
  groups. Each server group contain one or more servers.
  """
  def create_app(client, input, options \\ []) do
    request(client, "CreateApp", input, options)
  end

  @doc """
  Creates a replication job. The replication job schedules periodic
  replication runs to replicate your server to AWS. Each replication run
  creates an Amazon Machine Image (AMI).
  """
  def create_replication_job(client, input, options \\ []) do
    request(client, "CreateReplicationJob", input, options)
  end

  @doc """
  Deletes the specified application. Optionally deletes the launched stack
  associated with the application and all AWS SMS replication jobs for
  servers in the application.
  """
  def delete_app(client, input, options \\ []) do
    request(client, "DeleteApp", input, options)
  end

  @doc """
  Deletes the launch configuration for the specified application.
  """
  def delete_app_launch_configuration(client, input, options \\ []) do
    request(client, "DeleteAppLaunchConfiguration", input, options)
  end

  @doc """
  Deletes the replication configuration for the specified application.
  """
  def delete_app_replication_configuration(client, input, options \\ []) do
    request(client, "DeleteAppReplicationConfiguration", input, options)
  end

  @doc """
  Deletes the validation configuration for the specified application.
  """
  def delete_app_validation_configuration(client, input, options \\ []) do
    request(client, "DeleteAppValidationConfiguration", input, options)
  end

  @doc """
  Deletes the specified replication job.

  After you delete a replication job, there are no further replication runs.
  AWS deletes the contents of the Amazon S3 bucket used to store AWS SMS
  artifacts. The AMIs created by the replication runs are not deleted.
  """
  def delete_replication_job(client, input, options \\ []) do
    request(client, "DeleteReplicationJob", input, options)
  end

  @doc """
  Deletes all servers from your server catalog.
  """
  def delete_server_catalog(client, input, options \\ []) do
    request(client, "DeleteServerCatalog", input, options)
  end

  @doc """
  Disassociates the specified connector from AWS SMS.

  After you disassociate a connector, it is no longer available to support
  replication jobs.
  """
  def disassociate_connector(client, input, options \\ []) do
    request(client, "DisassociateConnector", input, options)
  end

  @doc """
  Generates a target change set for a currently launched stack and writes it
  to an Amazon S3 object in the customer’s Amazon S3 bucket.
  """
  def generate_change_set(client, input, options \\ []) do
    request(client, "GenerateChangeSet", input, options)
  end

  @doc """
  Generates an AWS CloudFormation template based on the current launch
  configuration and writes it to an Amazon S3 object in the customer’s Amazon
  S3 bucket.
  """
  def generate_template(client, input, options \\ []) do
    request(client, "GenerateTemplate", input, options)
  end

  @doc """
  Retrieve information about the specified application.
  """
  def get_app(client, input, options \\ []) do
    request(client, "GetApp", input, options)
  end

  @doc """
  Retrieves the application launch configuration associated with the
  specified application.
  """
  def get_app_launch_configuration(client, input, options \\ []) do
    request(client, "GetAppLaunchConfiguration", input, options)
  end

  @doc """
  Retrieves the application replication configuration associated with the
  specified application.
  """
  def get_app_replication_configuration(client, input, options \\ []) do
    request(client, "GetAppReplicationConfiguration", input, options)
  end

  @doc """
  Retrieves information about a configuration for validating an application.
  """
  def get_app_validation_configuration(client, input, options \\ []) do
    request(client, "GetAppValidationConfiguration", input, options)
  end

  @doc """
  Retrieves output from validating an application.
  """
  def get_app_validation_output(client, input, options \\ []) do
    request(client, "GetAppValidationOutput", input, options)
  end

  @doc """
  Describes the connectors registered with the AWS SMS.
  """
  def get_connectors(client, input, options \\ []) do
    request(client, "GetConnectors", input, options)
  end

  @doc """
  Describes the specified replication job or all of your replication jobs.
  """
  def get_replication_jobs(client, input, options \\ []) do
    request(client, "GetReplicationJobs", input, options)
  end

  @doc """
  Describes the replication runs for the specified replication job.
  """
  def get_replication_runs(client, input, options \\ []) do
    request(client, "GetReplicationRuns", input, options)
  end

  @doc """
  Describes the servers in your server catalog.

  Before you can describe your servers, you must import them using
  `ImportServerCatalog`.
  """
  def get_servers(client, input, options \\ []) do
    request(client, "GetServers", input, options)
  end

  @doc """
  Allows application import from AWS Migration Hub.
  """
  def import_app_catalog(client, input, options \\ []) do
    request(client, "ImportAppCatalog", input, options)
  end

  @doc """
  Gathers a complete list of on-premises servers. Connectors must be
  installed and monitoring all servers to import.

  This call returns immediately, but might take additional time to retrieve
  all the servers.
  """
  def import_server_catalog(client, input, options \\ []) do
    request(client, "ImportServerCatalog", input, options)
  end

  @doc """
  Launches the specified application as a stack in AWS CloudFormation.
  """
  def launch_app(client, input, options \\ []) do
    request(client, "LaunchApp", input, options)
  end

  @doc """
  Retrieves summaries for all applications.
  """
  def list_apps(client, input, options \\ []) do
    request(client, "ListApps", input, options)
  end

  @doc """
  Provides information to AWS SMS about whether application validation is
  successful.
  """
  def notify_app_validation_output(client, input, options \\ []) do
    request(client, "NotifyAppValidationOutput", input, options)
  end

  @doc """
  Creates or updates the launch configuration for the specified application.
  """
  def put_app_launch_configuration(client, input, options \\ []) do
    request(client, "PutAppLaunchConfiguration", input, options)
  end

  @doc """
  Creates or updates the replication configuration for the specified
  application.
  """
  def put_app_replication_configuration(client, input, options \\ []) do
    request(client, "PutAppReplicationConfiguration", input, options)
  end

  @doc """
  Creates or updates a validation configuration for the specified
  application.
  """
  def put_app_validation_configuration(client, input, options \\ []) do
    request(client, "PutAppValidationConfiguration", input, options)
  end

  @doc """
  Starts replicating the specified application by creating replication jobs
  for each server in the application.
  """
  def start_app_replication(client, input, options \\ []) do
    request(client, "StartAppReplication", input, options)
  end

  @doc """
  Starts an on-demand replication run for the specified application.
  """
  def start_on_demand_app_replication(client, input, options \\ []) do
    request(client, "StartOnDemandAppReplication", input, options)
  end

  @doc """
  Starts an on-demand replication run for the specified replication job. This
  replication run starts immediately. This replication run is in addition to
  the ones already scheduled.

  There is a limit on the number of on-demand replications runs that you can
  request in a 24-hour period.
  """
  def start_on_demand_replication_run(client, input, options \\ []) do
    request(client, "StartOnDemandReplicationRun", input, options)
  end

  @doc """
  Stops replicating the specified application by deleting the replication job
  for each server in the application.
  """
  def stop_app_replication(client, input, options \\ []) do
    request(client, "StopAppReplication", input, options)
  end

  @doc """
  Terminates the stack for the specified application.
  """
  def terminate_app(client, input, options \\ []) do
    request(client, "TerminateApp", input, options)
  end

  @doc """
  Updates the specified application.
  """
  def update_app(client, input, options \\ []) do
    request(client, "UpdateApp", input, options)
  end

  @doc """
  Updates the specified settings for the specified replication job.
  """
  def update_replication_job(client, input, options \\ []) do
    request(client, "UpdateReplicationJob", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "sms"}
    host = build_host("sms", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSServerMigrationService_V2016_10_24.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} -> error
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
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

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
