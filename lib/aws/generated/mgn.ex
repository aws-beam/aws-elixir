# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Mgn do
  @moduledoc """
  The Application Migration Service service.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2020-02-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mgn",
      global?: false,
      protocol: "rest-json",
      service_id: "mgn",
      signature_version: "v4",
      signing_name: "mgn",
      target_prefix: nil
    }
  end

  @doc """
  Archive application.
  """
  def archive_application(%Client{} = client, input, options \\ []) do
    url_path = "/ArchiveApplication"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Archive wave.
  """
  def archive_wave(%Client{} = client, input, options \\ []) do
    url_path = "/ArchiveWave"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associate applications to wave.
  """
  def associate_applications(%Client{} = client, input, options \\ []) do
    url_path = "/AssociateApplications"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associate source servers to application.
  """
  def associate_source_servers(%Client{} = client, input, options \\ []) do
    url_path = "/AssociateSourceServers"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Allows the user to set the SourceServer.LifeCycle.state property for specific
  Source Server IDs to one of the following: READY_FOR_TEST or READY_FOR_CUTOVER.

  This command only works if the Source Server is already launchable
  (dataReplicationInfo.lagDuration is not null.)
  """
  def change_server_life_cycle_state(%Client{} = client, input, options \\ []) do
    url_path = "/ChangeServerLifeCycleState"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Create application.
  """
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/CreateApplication"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Create Connector.
  """
  def create_connector(%Client{} = client, input, options \\ []) do
    url_path = "/CreateConnector"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new Launch Configuration Template.
  """
  def create_launch_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/CreateLaunchConfigurationTemplate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new ReplicationConfigurationTemplate.
  """
  def create_replication_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/CreateReplicationConfigurationTemplate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Create wave.
  """
  def create_wave(%Client{} = client, input, options \\ []) do
    url_path = "/CreateWave"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Delete application.
  """
  def delete_application(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteApplication"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Delete Connector.
  """
  def delete_connector(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteConnector"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a single Job by ID.
  """
  def delete_job(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteJob"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a single Launch Configuration Template by ID.
  """
  def delete_launch_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteLaunchConfigurationTemplate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a single Replication Configuration Template by ID
  """
  def delete_replication_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteReplicationConfigurationTemplate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a single source server by ID.
  """
  def delete_source_server(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteSourceServer"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a given vCenter client by ID.
  """
  def delete_vcenter_client(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteVcenterClient"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Delete wave.
  """
  def delete_wave(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteWave"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Retrieves detailed job log items with paging.
  """
  def describe_job_log_items(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeJobLogItems"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of Jobs.

  Use the JobsID and fromDate and toData filters to limit which jobs are returned.
  The response is sorted by creationDataTime - latest date first. Jobs are
  normally created by the StartTest, StartCutover, and TerminateTargetInstances
  APIs. Jobs are also created by DiagnosticLaunch and
  TerminateDiagnosticInstances, which are APIs available only to *Support* and
  only used in response to relevant support tickets.
  """
  def describe_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeJobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all Launch Configuration Templates, filtered by Launch Configuration
  Template IDs
  """
  def describe_launch_configuration_templates(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeLaunchConfigurationTemplates"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all ReplicationConfigurationTemplates, filtered by Source Server IDs.
  """
  def describe_replication_configuration_templates(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeReplicationConfigurationTemplates"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves all SourceServers or multiple SourceServers by ID.
  """
  def describe_source_servers(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeSourceServers"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of the installed vCenter clients.
  """
  def describe_vcenter_clients(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/DescribeVcenterClients"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Disassociate applications from wave.
  """
  def disassociate_applications(%Client{} = client, input, options \\ []) do
    url_path = "/DisassociateApplications"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociate source servers from application.
  """
  def disassociate_source_servers(%Client{} = client, input, options \\ []) do
    url_path = "/DisassociateSourceServers"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disconnects specific Source Servers from Application Migration Service.

  Data replication is stopped immediately. All AWS resources created by
  Application Migration Service for enabling the replication of these source
  servers will be terminated / deleted within 90 minutes. Launched Test or Cutover
  instances will NOT be terminated. If the agent on the source server has not been
  prevented from communicating with the Application Migration Service service,
  then it will receive a command to uninstall itself (within approximately 10
  minutes). The following properties of the SourceServer will be changed
  immediately: dataReplicationInfo.dataReplicationState will be set to
  DISCONNECTED; The totalStorageBytes property for each of
  dataReplicationInfo.replicatedDisks will be set to zero;
  dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will be
  nullified.
  """
  def disconnect_from_service(%Client{} = client, input, options \\ []) do
    url_path = "/DisconnectFromService"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Finalizes the cutover immediately for specific Source Servers.

  All AWS resources created by Application Migration Service for enabling the
  replication of these source servers will be terminated / deleted within 90
  minutes. Launched Test or Cutover instances will NOT be terminated. The AWS
  Replication Agent will receive a command to uninstall itself (within 10
  minutes). The following properties of the SourceServer will be changed
  immediately: dataReplicationInfo.dataReplicationState will be changed to
  DISCONNECTED; The SourceServer.lifeCycle.state will be changed to CUTOVER; The
  totalStorageBytes property fo each of dataReplicationInfo.replicatedDisks will
  be set to zero; dataReplicationInfo.lagDuration and
  dataReplicationInfo.lagDuration will be nullified.
  """
  def finalize_cutover(%Client{} = client, input, options \\ []) do
    url_path = "/FinalizeCutover"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all LaunchConfigurations available, filtered by Source Server IDs.
  """
  def get_launch_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetLaunchConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all ReplicationConfigurations, filtered by Source Server ID.
  """
  def get_replication_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetReplicationConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Initialize Application Migration Service.
  """
  def initialize_service(%Client{} = client, input, options \\ []) do
    url_path = "/InitializeService"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Retrieves all applications or multiple applications by ID.
  """
  def list_applications(%Client{} = client, input, options \\ []) do
    url_path = "/ListApplications"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  List Connectors.
  """
  def list_connectors(%Client{} = client, input, options \\ []) do
    url_path = "/ListConnectors"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  List export errors.
  """
  def list_export_errors(%Client{} = client, input, options \\ []) do
    url_path = "/ListExportErrors"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  List exports.
  """
  def list_exports(%Client{} = client, input, options \\ []) do
    url_path = "/ListExports"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  List import errors.
  """
  def list_import_errors(%Client{} = client, input, options \\ []) do
    url_path = "/ListImportErrors"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  List imports.
  """
  def list_imports(%Client{} = client, input, options \\ []) do
    url_path = "/ListImports"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  List Managed Accounts.
  """
  def list_managed_accounts(%Client{} = client, input, options \\ []) do
    url_path = "/ListManagedAccounts"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  List source server post migration custom actions.
  """
  def list_source_server_actions(%Client{} = client, input, options \\ []) do
    url_path = "/ListSourceServerActions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  List all tags for your Application Migration Service resources.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List template post migration custom actions.
  """
  def list_template_actions(%Client{} = client, input, options \\ []) do
    url_path = "/ListTemplateActions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves all waves or multiple waves by ID.
  """
  def list_waves(%Client{} = client, input, options \\ []) do
    url_path = "/ListWaves"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Archives specific Source Servers by setting the SourceServer.isArchived property
  to true for specified SourceServers by ID.

  This command only works for SourceServers with a lifecycle. state which equals
  DISCONNECTED or CUTOVER.
  """
  def mark_as_archived(%Client{} = client, input, options \\ []) do
    url_path = "/MarkAsArchived"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Pause Replication.
  """
  def pause_replication(%Client{} = client, input, options \\ []) do
    url_path = "/PauseReplication"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Put source server post migration custom action.
  """
  def put_source_server_action(%Client{} = client, input, options \\ []) do
    url_path = "/PutSourceServerAction"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Put template post migration custom action.
  """
  def put_template_action(%Client{} = client, input, options \\ []) do
    url_path = "/PutTemplateAction"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Remove source server post migration custom action.
  """
  def remove_source_server_action(%Client{} = client, input, options \\ []) do
    url_path = "/RemoveSourceServerAction"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Remove template post migration custom action.
  """
  def remove_template_action(%Client{} = client, input, options \\ []) do
    url_path = "/RemoveTemplateAction"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Resume Replication.
  """
  def resume_replication(%Client{} = client, input, options \\ []) do
    url_path = "/ResumeReplication"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Causes the data replication initiation sequence to begin immediately upon next
  Handshake for specified SourceServer IDs, regardless of when the previous
  initiation started.

  This command will not work if the SourceServer is not stalled or is in a
  DISCONNECTED or STOPPED state.
  """
  def retry_data_replication(%Client{} = client, input, options \\ []) do
    url_path = "/RetryDataReplication"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Launches a Cutover Instance for specific Source Servers.

  This command starts a LAUNCH job whose initiatedBy property is StartCutover and
  changes the SourceServer.lifeCycle.state property to CUTTING_OVER.
  """
  def start_cutover(%Client{} = client, input, options \\ []) do
    url_path = "/StartCutover"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Start export.
  """
  def start_export(%Client{} = client, input, options \\ []) do
    url_path = "/StartExport"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Start import.
  """
  def start_import(%Client{} = client, input, options \\ []) do
    url_path = "/StartImport"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Starts replication for SNAPSHOT_SHIPPING agents.
  """
  def start_replication(%Client{} = client, input, options \\ []) do
    url_path = "/StartReplication"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Launches a Test Instance for specific Source Servers.

  This command starts a LAUNCH job whose initiatedBy property is StartTest and
  changes the SourceServer.lifeCycle.state property to TESTING.
  """
  def start_test(%Client{} = client, input, options \\ []) do
    url_path = "/StartTest"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Stop Replication.
  """
  def stop_replication(%Client{} = client, input, options \\ []) do
    url_path = "/StopReplication"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds or overwrites only the specified tags for the specified Application
  Migration Service resource or resources.

  When you specify an existing tag key, the value is overwritten with the new
  value. Each resource can have a maximum of 50 tags. Each tag consists of a key
  and optional value.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts a job that terminates specific launched EC2 Test and Cutover instances.

  This command will not work for any Source Server with a lifecycle.state of
  TESTING, CUTTING_OVER, or CUTOVER.
  """
  def terminate_target_instances(%Client{} = client, input, options \\ []) do
    url_path = "/TerminateTargetInstances"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Unarchive application.
  """
  def unarchive_application(%Client{} = client, input, options \\ []) do
    url_path = "/UnarchiveApplication"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Unarchive wave.
  """
  def unarchive_wave(%Client{} = client, input, options \\ []) do
    url_path = "/UnarchiveWave"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the specified set of tags from the specified set of Application
  Migration Service resources.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update application.
  """
  def update_application(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateApplication"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update Connector.
  """
  def update_connector(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateConnector"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates multiple LaunchConfigurations by Source Server ID.
  """
  def update_launch_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateLaunchConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing Launch Configuration Template by ID.
  """
  def update_launch_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateLaunchConfigurationTemplate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Allows you to update multiple ReplicationConfigurations by Source Server ID.
  """
  def update_replication_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateReplicationConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates multiple ReplicationConfigurationTemplates by ID.
  """
  def update_replication_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateReplicationConfigurationTemplate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update Source Server.
  """
  def update_source_server(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateSourceServer"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Allows you to change between the AGENT_BASED replication type and the
  SNAPSHOT_SHIPPING replication type.
  """
  def update_source_server_replication_type(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateSourceServerReplicationType"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update wave.
  """
  def update_wave(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateWave"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
