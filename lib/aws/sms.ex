# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.SMS do
  @moduledoc """
  Amazon Server Migration Service automates the process of migrating servers
  to EC2.
  """

  @doc """
  The CreateReplicationJob API is used to create a ReplicationJob to
  replicate a server on AWS. Call this API to first create a ReplicationJob,
  which will then schedule periodic ReplicationRuns to replicate your server
  to AWS. Each ReplicationRun will result in the creation of an AWS AMI.
  """
  def create_replication_job(client, input, options \\ []) do
    request(client, "CreateReplicationJob", input, options)
  end

  @doc """
  The DeleteReplicationJob API is used to delete a ReplicationJob, resulting
  in no further ReplicationRuns. This will delete the contents of the S3
  bucket used to store SMS artifacts, but will not delete any AMIs created by
  the SMS service.
  """
  def delete_replication_job(client, input, options \\ []) do
    request(client, "DeleteReplicationJob", input, options)
  end

  @doc """
  The DeleteServerCatalog API clears all servers from your server catalog.
  This means that these servers will no longer be accessible to the Server
  Migration Service.
  """
  def delete_server_catalog(client, input, options \\ []) do
    request(client, "DeleteServerCatalog", input, options)
  end

  @doc """
  The DisassociateConnector API will disassociate a connector from the Server
  Migration Service, rendering it unavailable to support replication jobs.
  """
  def disassociate_connector(client, input, options \\ []) do
    request(client, "DisassociateConnector", input, options)
  end

  @doc """
  The GetConnectors API returns a list of connectors that are registered with
  the Server Migration Service.
  """
  def get_connectors(client, input, options \\ []) do
    request(client, "GetConnectors", input, options)
  end

  @doc """
  The GetReplicationJobs API will return all of your ReplicationJobs and
  their details. This API returns a paginated list, that may be consecutively
  called with nextToken to retrieve all ReplicationJobs.
  """
  def get_replication_jobs(client, input, options \\ []) do
    request(client, "GetReplicationJobs", input, options)
  end

  @doc """
  The GetReplicationRuns API will return all ReplicationRuns for a given
  ReplicationJob. This API returns a paginated list, that may be
  consecutively called with nextToken to retrieve all ReplicationRuns for a
  ReplicationJob.
  """
  def get_replication_runs(client, input, options \\ []) do
    request(client, "GetReplicationRuns", input, options)
  end

  @doc """
  The GetServers API returns a list of all servers in your server catalog.
  For this call to succeed, you must previously have called
  ImportServerCatalog.
  """
  def get_servers(client, input, options \\ []) do
    request(client, "GetServers", input, options)
  end

  @doc """
  The ImportServerCatalog API is used to gather the complete list of
  on-premises servers on your premises. This API call requires connectors to
  be installed and monitoring all servers you would like imported. This API
  call returns immediately, but may take some time to retrieve all of the
  servers.
  """
  def import_server_catalog(client, input, options \\ []) do
    request(client, "ImportServerCatalog", input, options)
  end

  @doc """
  The StartOnDemandReplicationRun API is used to start a ReplicationRun on
  demand (in addition to those that are scheduled based on your frequency).
  This ReplicationRun will start immediately. StartOnDemandReplicationRun is
  subject to limits on how many on demand ReplicationRuns you may call per
  24-hour period.
  """
  def start_on_demand_replication_run(client, input, options \\ []) do
    request(client, "StartOnDemandReplicationRun", input, options)
  end

  @doc """
  The UpdateReplicationJob API is used to change the settings of your
  existing ReplicationJob created using CreateReplicationJob. Calling this
  API will affect the next scheduled ReplicationRun.
  """
  def update_replication_job(client, input, options \\ []) do
    request(client, "UpdateReplicationJob", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "sms"}
    host = get_host("sms", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AWSServerMigrationService_V2016_10_24.#{action}"}]
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
