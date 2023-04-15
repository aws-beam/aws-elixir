# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Drs do
  @moduledoc """
  AWS Elastic Disaster Recovery Service.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2020-02-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "drs",
      global?: false,
      protocol: "rest-json",
      service_id: "drs",
      signature_version: "v4",
      signing_name: "drs",
      target_prefix: nil
    }
  end

  @doc """
  Create an extended source server in the target Account based on the source
  server in staging account.
  """
  def create_extended_source_server(%Client{} = client, input, options \\ []) do
    url_path = "/CreateExtendedSourceServer"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateExtendedSourceServer",
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
      "CreateReplicationConfigurationTemplate",
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
      "DeleteJob",
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
  Deletes a single Recovery Instance by ID.

  This deletes the Recovery Instance resource from Elastic Disaster Recovery. The
  Recovery Instance must be disconnected first in order to delete it.
  """
  def delete_recovery_instance(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteRecoveryInstance"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteRecoveryInstance",
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
      "DeleteReplicationConfigurationTemplate",
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
  Deletes a single Source Server by ID.

  The Source Server must be disconnected first.
  """
  def delete_source_server(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteSourceServer"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteSourceServer",
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
  Retrieves a detailed Job log with pagination.
  """
  def describe_job_log_items(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeJobLogItems"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeJobLogItems",
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

  Use the JobsID and fromDate and toDate filters to limit which jobs are returned.
  The response is sorted by creationDataTime - latest date first. Jobs are created
  by the StartRecovery, TerminateRecoveryInstances and StartFailbackLaunch APIs.
  Jobs are also created by DiagnosticLaunch and TerminateDiagnosticInstances,
  which are APIs available only to *Support* and only used in response to relevant
  support tickets.
  """
  def describe_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeJobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeJobs",
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
  Lists all Recovery Instances or multiple Recovery Instances by ID.
  """
  def describe_recovery_instances(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeRecoveryInstances"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeRecoveryInstances",
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
  Lists all Recovery Snapshots for a single Source Server.
  """
  def describe_recovery_snapshots(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeRecoverySnapshots"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeRecoverySnapshots",
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
      "DescribeReplicationConfigurationTemplates",
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
  Lists all Source Servers or multiple Source Servers filtered by ID.
  """
  def describe_source_servers(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeSourceServers"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeSourceServers",
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
  Disconnect a Recovery Instance from Elastic Disaster Recovery.

  Data replication is stopped immediately. All AWS resources created by Elastic
  Disaster Recovery for enabling the replication of the Recovery Instance will be
  terminated / deleted within 90 minutes. If the agent on the Recovery Instance
  has not been prevented from communicating with the Elastic Disaster Recovery
  service, then it will receive a command to uninstall itself (within
  approximately 10 minutes). The following properties of the Recovery Instance
  will be changed immediately: dataReplicationInfo.dataReplicationState will be
  set to DISCONNECTED; The totalStorageBytes property for each of
  dataReplicationInfo.replicatedDisks will be set to zero;
  dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will be
  nullified.
  """
  def disconnect_recovery_instance(%Client{} = client, input, options \\ []) do
    url_path = "/DisconnectRecoveryInstance"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisconnectRecoveryInstance",
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
  Disconnects a specific Source Server from Elastic Disaster Recovery.

  Data replication is stopped immediately. All AWS resources created by Elastic
  Disaster Recovery for enabling the replication of the Source Server will be
  terminated / deleted within 90 minutes. You cannot disconnect a Source Server if
  it has a Recovery Instance. If the agent on the Source Server has not been
  prevented from communicating with the Elastic Disaster Recovery service, then it
  will receive a command to uninstall itself (within approximately 10 minutes).
  The following properties of the SourceServer will be changed immediately:
  dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The
  totalStorageBytes property for each of dataReplicationInfo.replicatedDisks will
  be set to zero; dataReplicationInfo.lagDuration and
  dataReplicationInfo.lagDuration will be nullified.
  """
  def disconnect_source_server(%Client{} = client, input, options \\ []) do
    url_path = "/DisconnectSourceServer"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisconnectSourceServer",
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
  Lists all Failback ReplicationConfigurations, filtered by Recovery Instance ID.
  """
  def get_failback_replication_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetFailbackReplicationConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetFailbackReplicationConfiguration",
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
  Gets a LaunchConfiguration, filtered by Source Server IDs.
  """
  def get_launch_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetLaunchConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetLaunchConfiguration",
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
  Gets a ReplicationConfiguration, filtered by Source Server ID.
  """
  def get_replication_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetReplicationConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetReplicationConfiguration",
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
  Initialize Elastic Disaster Recovery.
  """
  def initialize_service(%Client{} = client, input, options \\ []) do
    url_path = "/InitializeService"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "InitializeService",
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
  Returns a list of source servers on a staging account that are extensible, which
  means that: a.

  The source server is not already extended into this Account. b. The source
  server on the Account we’re reading from is not an extension of another source
  server.
  """
  def list_extensible_source_servers(%Client{} = client, input, options \\ []) do
    url_path = "/ListExtensibleSourceServers"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListExtensibleSourceServers",
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
  Returns an array of staging accounts for existing extended source servers.
  """
  def list_staging_accounts(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/ListStagingAccounts"
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

    Request.request_rest(
      client,
      meta,
      "ListStagingAccounts",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  List all tags for your Elastic Disaster Recovery resources.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListTagsForResource",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  WARNING: RetryDataReplication is deprecated.

  Causes the data replication initiation sequence to begin immediately upon next
  Handshake for the specified Source Server ID, regardless of when the previous
  initiation started. This command will work only if the Source Server is stalled
  or is in a DISCONNECTED or STOPPED state.
  """
  def retry_data_replication(%Client{} = client, input, options \\ []) do
    url_path = "/RetryDataReplication"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "RetryDataReplication",
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
  Start replication to origin / target region - applies only to protected
  instances that originated in EC2.

  For recovery instances on target region - starts replication back to origin
  region. For failback instances on origin region - starts replication to target
  region to re-protect them.
  """
  def reverse_replication(%Client{} = client, input, options \\ []) do
    url_path = "/ReverseReplication"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ReverseReplication",
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
  Initiates a Job for launching the machine that is being failed back to from the
  specified Recovery Instance.

  This will run conversion on the failback client and will reboot your machine,
  thus completing the failback process.
  """
  def start_failback_launch(%Client{} = client, input, options \\ []) do
    url_path = "/StartFailbackLaunch"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartFailbackLaunch",
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
  Launches Recovery Instances for the specified Source Servers.

  For each Source Server you may choose a point in time snapshot to launch from,
  or use an on demand snapshot.
  """
  def start_recovery(%Client{} = client, input, options \\ []) do
    url_path = "/StartRecovery"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartRecovery",
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
  Starts replication for a stopped Source Server.

  This action would make the Source Server protected again and restart billing for
  it.
  """
  def start_replication(%Client{} = client, input, options \\ []) do
    url_path = "/StartReplication"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartReplication",
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
  Stops the failback process for a specified Recovery Instance.

  This changes the Failback State of the Recovery Instance back to
  FAILBACK_NOT_STARTED.
  """
  def stop_failback(%Client{} = client, input, options \\ []) do
    url_path = "/StopFailback"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StopFailback",
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
  Stops replication for a Source Server.

  This action would make the Source Server unprotected, delete its existing
  snapshots and stop billing for it.
  """
  def stop_replication(%Client{} = client, input, options \\ []) do
    url_path = "/StopReplication"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StopReplication",
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
  Adds or overwrites only the specified tags for the specified Elastic Disaster
  Recovery resource or resources.

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
      "TagResource",
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
  Initiates a Job for terminating the EC2 resources associated with the specified
  Recovery Instances, and then will delete the Recovery Instances from the Elastic
  Disaster Recovery service.
  """
  def terminate_recovery_instances(%Client{} = client, input, options \\ []) do
    url_path = "/TerminateRecoveryInstances"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "TerminateRecoveryInstances",
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
  Deletes the specified set of tags from the specified set of Elastic Disaster
  Recovery resources.
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
      "UntagResource",
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
  Allows you to update the failback replication configuration of a Recovery
  Instance by ID.
  """
  def update_failback_replication_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateFailbackReplicationConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateFailbackReplicationConfiguration",
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
  Updates a LaunchConfiguration by Source Server ID.
  """
  def update_launch_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateLaunchConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateLaunchConfiguration",
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
  Allows you to update a ReplicationConfiguration by Source Server ID.
  """
  def update_replication_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateReplicationConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateReplicationConfiguration",
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
  Updates a ReplicationConfigurationTemplate by ID.
  """
  def update_replication_configuration_template(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateReplicationConfigurationTemplate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateReplicationConfigurationTemplate",
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
