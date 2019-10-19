# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SMS do
  @moduledoc """
  AAWS Sever Migration Service

  This is the *AWS Sever Migration Service API Reference*. It provides
  descriptions, syntax, and usage examples for each of the actions and data
  types for the AWS Sever Migration Service (AWS SMS). The topic for each
  action shows the Query API request parameters and the XML response. You can
  also view the XML request elements in the WSDL.

  Alternatively, you can use one of the AWS SDKs to access an API that's
  tailored to the programming language or platform that you're using. For
  more information, see [AWS SDKs](http://aws.amazon.com/tools/#SDKs).

  To learn more about the Server Migration Service, see the following
  resources:

  <ul> <li> [AWS Sever Migration Service product
  page](https://aws.amazon.com/server-migration-service/)

  </li> <li> [AWS Sever Migration Service User
  Guide](https://docs.aws.amazon.com/server-migration-service/latest/userguide/server-migration.html)

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
  Deletes an existing application. Optionally deletes the launched stack
  associated with the application and all AWS SMS replication jobs for
  servers in the application.
  """
  def delete_app(client, input, options \\ []) do
    request(client, "DeleteApp", input, options)
  end

  @doc """
  Deletes existing launch configuration for an application.
  """
  def delete_app_launch_configuration(client, input, options \\ []) do
    request(client, "DeleteAppLaunchConfiguration", input, options)
  end

  @doc """
  Deletes existing replication configuration for an application.
  """
  def delete_app_replication_configuration(client, input, options \\ []) do
    request(client, "DeleteAppReplicationConfiguration", input, options)
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
  Generates an Amazon CloudFormation template based on the current launch
  configuration and writes it to an Amazon S3 object in the customer’s Amazon
  S3 bucket.
  """
  def generate_template(client, input, options \\ []) do
    request(client, "GenerateTemplate", input, options)
  end

  @doc """
  Retrieve information about an application.
  """
  def get_app(client, input, options \\ []) do
    request(client, "GetApp", input, options)
  end

  @doc """
  Retrieves the application launch configuration associated with an
  application.
  """
  def get_app_launch_configuration(client, input, options \\ []) do
    request(client, "GetAppLaunchConfiguration", input, options)
  end

  @doc """
  Retrieves an application replication configuration associatd with an
  application.
  """
  def get_app_replication_configuration(client, input, options \\ []) do
    request(client, "GetAppReplicationConfiguration", input, options)
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
  Gathers a complete list of on-premises servers. Connectors must be
  installed and monitoring all servers that you want to import.

  This call returns immediately, but might take additional time to retrieve
  all the servers.
  """
  def import_server_catalog(client, input, options \\ []) do
    request(client, "ImportServerCatalog", input, options)
  end

  @doc """
  Launches an application stack.
  """
  def launch_app(client, input, options \\ []) do
    request(client, "LaunchApp", input, options)
  end

  @doc """
  Returns a list of summaries for all applications.
  """
  def list_apps(client, input, options \\ []) do
    request(client, "ListApps", input, options)
  end

  @doc """
  Creates a launch configuration for an application.
  """
  def put_app_launch_configuration(client, input, options \\ []) do
    request(client, "PutAppLaunchConfiguration", input, options)
  end

  @doc """
  Creates or updates a replication configuration for an application.
  """
  def put_app_replication_configuration(client, input, options \\ []) do
    request(client, "PutAppReplicationConfiguration", input, options)
  end

  @doc """
  Starts replicating an application.
  """
  def start_app_replication(client, input, options \\ []) do
    request(client, "StartAppReplication", input, options)
  end

  @doc """
  Starts an on-demand replication run for the specified replication job. This
  replication run starts immediately. This replication run is in addition to
  the ones already scheduled.

  There is a limit on the number of on-demand replications runs you can
  request in a 24-hour period.
  """
  def start_on_demand_replication_run(client, input, options \\ []) do
    request(client, "StartOnDemandReplicationRun", input, options)
  end

  @doc """
  Stops replicating an application.
  """
  def stop_app_replication(client, input, options \\ []) do
    request(client, "StopAppReplication", input, options)
  end

  @doc """
  Terminates the stack for an application.
  """
  def terminate_app(client, input, options \\ []) do
    request(client, "TerminateApp", input, options)
  end

  @doc """
  Updates an application.
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
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "sms"}
    host = get_host("sms", client)
    url = get_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSServerMigrationService_V2016_10_24.#{action}"},
      {"X-Amz-Security-Token", client.session_token}
    ]
    
    payload = Poison.Encoder.encode(input, [])
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
