# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DocDBElastic do
  @moduledoc """
  Amazon DocumentDB elastic clusters

  Amazon DocumentDB elastic-clusters support workloads with millions of
  reads/writes per second and petabytes of storage capacity.

  Amazon DocumentDB elastic clusters also simplify how developers interact with
  Amazon DocumentDB elastic-clusters by eliminating the need to choose, manage or
  upgrade instances.

  Amazon DocumentDB elastic-clusters were created to:

    *
  provide a solution for customers looking for a database that provides virtually
  limitless scale with rich query capabilities and MongoDB API compatibility.

    *
  give customers higher connection limits, and to reduce downtime from patching.

    *
  continue investing in a cloud-native, elastic, and class leading architecture
  for JSON workloads.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      apply_pending_maintenance_action_input() :: %{
        optional("applyOn") => String.t() | Atom.t(),
        required("applyAction") => String.t() | Atom.t(),
        required("optInType") => String.t() | Atom.t(),
        required("resourceArn") => String.t() | Atom.t()
      }

  """
  @type apply_pending_maintenance_action_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cluster_snapshot_in_list() :: %{
        "clusterArn" => [String.t() | Atom.t()],
        "snapshotArn" => [String.t() | Atom.t()],
        "snapshotCreationTime" => [String.t() | Atom.t()],
        "snapshotName" => [String.t() | Atom.t()],
        "status" => String.t() | Atom.t()
      }

  """
  @type cluster_snapshot_in_list() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_cluster_input() :: %{
        optional("adminUserPassword") => String.t() | Atom.t(),
        optional("authType") => String.t() | Atom.t(),
        optional("backupRetentionPeriod") => [integer()],
        optional("clientToken") => [String.t() | Atom.t()],
        optional("preferredBackupWindow") => [String.t() | Atom.t()],
        optional("preferredMaintenanceWindow") => [String.t() | Atom.t()],
        optional("shardCapacity") => [integer()],
        optional("shardCount") => [integer()],
        optional("shardInstanceCount") => [integer()],
        optional("subnetIds") => list([String.t() | Atom.t()]()),
        optional("vpcSecurityGroupIds") => list([String.t() | Atom.t()]())
      }

  """
  @type update_cluster_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_cluster_snapshot_output() :: %{
        required("snapshot") => cluster_snapshot()
      }

  """
  @type create_cluster_snapshot_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      restore_cluster_from_snapshot_output() :: %{
        required("cluster") => cluster()
      }

  """
  @type restore_cluster_from_snapshot_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_cluster_output() :: %{
        "cluster" => cluster()
      }

  """
  @type start_cluster_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_cluster_input() :: %{
        optional("backupRetentionPeriod") => [integer()],
        optional("clientToken") => [String.t() | Atom.t()],
        optional("kmsKeyId") => [String.t() | Atom.t()],
        optional("preferredBackupWindow") => [String.t() | Atom.t()],
        optional("preferredMaintenanceWindow") => [String.t() | Atom.t()],
        optional("shardInstanceCount") => [integer()],
        optional("subnetIds") => list([String.t() | Atom.t()]()),
        optional("tags") => map(),
        optional("vpcSecurityGroupIds") => list([String.t() | Atom.t()]()),
        required("adminUserName") => [String.t() | Atom.t()],
        required("adminUserPassword") => String.t() | Atom.t(),
        required("authType") => String.t() | Atom.t(),
        required("clusterName") => [String.t() | Atom.t()],
        required("shardCapacity") => [integer()],
        required("shardCount") => [integer()]
      }

  """
  @type create_cluster_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      copy_cluster_snapshot_input() :: %{
        optional("copyTags") => [boolean()],
        optional("kmsKeyId") => [String.t() | Atom.t()],
        optional("tags") => map(),
        required("targetSnapshotName") => [String.t() | Atom.t()]
      }

  """
  @type copy_cluster_snapshot_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_cluster_input() :: %{}

  """
  @type get_cluster_input() :: %{}

  @typedoc """

  ## Example:

      list_cluster_snapshots_input() :: %{
        optional("clusterArn") => [String.t() | Atom.t()],
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | Atom.t(),
        optional("snapshotType") => [String.t() | Atom.t()]
      }

  """
  @type list_cluster_snapshots_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stop_cluster_input() :: %{}

  """
  @type stop_cluster_input() :: %{}

  @typedoc """

  ## Example:

      list_clusters_output() :: %{
        optional("clusters") => list(cluster_in_list()),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_clusters_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_pending_maintenance_actions_output() :: %{
        "nextToken" => String.t() | Atom.t(),
        "resourcePendingMaintenanceActions" => list(resource_pending_maintenance_action())
      }

  """
  @type list_pending_maintenance_actions_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "resourceId" => [String.t() | Atom.t()],
        "resourceType" => [String.t() | Atom.t()]
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "resourceId" => [String.t() | Atom.t()],
        "resourceType" => [String.t() | Atom.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stop_cluster_output() :: %{
        "cluster" => cluster()
      }

  """
  @type stop_cluster_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_cluster_output() :: %{
        required("cluster") => cluster()
      }

  """
  @type delete_cluster_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cluster() :: %{
        "adminUserName" => [String.t() | Atom.t()],
        "authType" => String.t() | Atom.t(),
        "backupRetentionPeriod" => [integer()],
        "clusterArn" => [String.t() | Atom.t()],
        "clusterEndpoint" => [String.t() | Atom.t()],
        "clusterName" => [String.t() | Atom.t()],
        "createTime" => [String.t() | Atom.t()],
        "kmsKeyId" => [String.t() | Atom.t()],
        "preferredBackupWindow" => [String.t() | Atom.t()],
        "preferredMaintenanceWindow" => [String.t() | Atom.t()],
        "shardCapacity" => [integer()],
        "shardCount" => [integer()],
        "shardInstanceCount" => [integer()],
        "shards" => list(shard()),
        "status" => String.t() | Atom.t(),
        "subnetIds" => list([String.t() | Atom.t()]()),
        "vpcSecurityGroupIds" => list([String.t() | Atom.t()]())
      }

  """
  @type cluster() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_cluster_output() :: %{
        required("cluster") => cluster()
      }

  """
  @type get_cluster_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_clusters_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_clusters_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | Atom.t()],
        "name" => [String.t() | Atom.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_cluster_output() :: %{
        required("cluster") => cluster()
      }

  """
  @type update_cluster_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cluster_snapshot() :: %{
        "adminUserName" => [String.t() | Atom.t()],
        "clusterArn" => [String.t() | Atom.t()],
        "clusterCreationTime" => [String.t() | Atom.t()],
        "kmsKeyId" => [String.t() | Atom.t()],
        "snapshotArn" => [String.t() | Atom.t()],
        "snapshotCreationTime" => [String.t() | Atom.t()],
        "snapshotName" => [String.t() | Atom.t()],
        "snapshotType" => String.t() | Atom.t(),
        "status" => String.t() | Atom.t(),
        "subnetIds" => list([String.t() | Atom.t()]()),
        "vpcSecurityGroupIds" => list([String.t() | Atom.t()]())
      }

  """
  @type cluster_snapshot() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_cluster_input() :: %{}

  """
  @type delete_cluster_input() :: %{}

  @typedoc """

  ## Example:

      list_cluster_snapshots_output() :: %{
        optional("nextToken") => String.t() | Atom.t(),
        optional("snapshots") => list(cluster_snapshot_in_list())
      }

  """
  @type list_cluster_snapshots_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_cluster_output() :: %{
        required("cluster") => cluster()
      }

  """
  @type create_cluster_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      shard() :: %{
        "createTime" => [String.t() | Atom.t()],
        "shardId" => [String.t() | Atom.t()],
        "status" => String.t() | Atom.t()
      }

  """
  @type shard() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      delete_cluster_snapshot_output() :: %{
        required("snapshot") => cluster_snapshot()
      }

  """
  @type delete_cluster_snapshot_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_cluster_snapshot_input() :: %{}

  """
  @type delete_cluster_snapshot_input() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | Atom.t()],
        "reason" => String.t() | Atom.t()
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_pending_maintenance_action() :: %{
        "pendingMaintenanceActionDetails" => list(pending_maintenance_action_details()),
        "resourceArn" => [String.t() | Atom.t()]
      }

  """
  @type resource_pending_maintenance_action() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      apply_pending_maintenance_action_output() :: %{
        "resourcePendingMaintenanceAction" => resource_pending_maintenance_action()
      }

  """
  @type apply_pending_maintenance_action_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_cluster_snapshot_input() :: %{
        optional("tags") => map(),
        required("clusterArn") => [String.t() | Atom.t()],
        required("snapshotName") => [String.t() | Atom.t()]
      }

  """
  @type create_cluster_snapshot_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      restore_cluster_from_snapshot_input() :: %{
        optional("kmsKeyId") => [String.t() | Atom.t()],
        optional("shardCapacity") => [integer()],
        optional("shardInstanceCount") => [integer()],
        optional("subnetIds") => list([String.t() | Atom.t()]()),
        optional("tags") => map(),
        optional("vpcSecurityGroupIds") => list([String.t() | Atom.t()]()),
        required("clusterName") => [String.t() | Atom.t()]
      }

  """
  @type restore_cluster_from_snapshot_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_cluster_input() :: %{}

  """
  @type start_cluster_input() :: %{}

  @typedoc """

  ## Example:

      get_pending_maintenance_action_output() :: %{
        "resourcePendingMaintenanceAction" => resource_pending_maintenance_action()
      }

  """
  @type get_pending_maintenance_action_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cluster_in_list() :: %{
        "clusterArn" => [String.t() | Atom.t()],
        "clusterName" => [String.t() | Atom.t()],
        "status" => String.t() | Atom.t()
      }

  """
  @type cluster_in_list() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_cluster_snapshot_input() :: %{}

  """
  @type get_cluster_snapshot_input() :: %{}

  @typedoc """

  ## Example:

      get_pending_maintenance_action_input() :: %{}

  """
  @type get_pending_maintenance_action_input() :: %{}

  @typedoc """

  ## Example:

      get_cluster_snapshot_output() :: %{
        required("snapshot") => cluster_snapshot()
      }

  """
  @type get_cluster_snapshot_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      copy_cluster_snapshot_output() :: %{
        "snapshot" => cluster_snapshot()
      }

  """
  @type copy_cluster_snapshot_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_pending_maintenance_actions_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_pending_maintenance_actions_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      pending_maintenance_action_details() :: %{
        "action" => [String.t() | Atom.t()],
        "autoAppliedAfterDate" => [String.t() | Atom.t()],
        "currentApplyDate" => [String.t() | Atom.t()],
        "description" => [String.t() | Atom.t()],
        "forcedApplyDate" => [String.t() | Atom.t()],
        "optInStatus" => [String.t() | Atom.t()]
      }

  """
  @type pending_maintenance_action_details() :: %{String.t() | Atom.t() => any()}

  @type apply_pending_maintenance_action_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type copy_cluster_snapshot_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_cluster_snapshot_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_cluster_snapshot_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_cluster_snapshot_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_pending_maintenance_action_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_cluster_snapshots_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_clusters_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_pending_maintenance_actions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type restore_cluster_from_snapshot_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type stop_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-11-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "docdb-elastic",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "DocDB Elastic",
      signature_version: "v4",
      signing_name: "docdb-elastic",
      target_prefix: nil
    }
  end

  @doc """
  The type of pending maintenance action to be applied to the resource.
  """
  @spec apply_pending_maintenance_action(map(), apply_pending_maintenance_action_input(), list()) ::
          {:ok, apply_pending_maintenance_action_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, apply_pending_maintenance_action_errors()}
  def apply_pending_maintenance_action(%Client{} = client, input, options \\ []) do
    url_path = "/pending-action"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Copies a snapshot of an elastic cluster.
  """
  @spec copy_cluster_snapshot(map(), String.t() | Atom.t(), copy_cluster_snapshot_input(), list()) ::
          {:ok, copy_cluster_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, copy_cluster_snapshot_errors()}
  def copy_cluster_snapshot(%Client{} = client, snapshot_arn, input, options \\ []) do
    url_path = "/cluster-snapshot/#{AWS.Util.encode_uri(snapshot_arn)}/copy"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new Amazon DocumentDB elastic cluster and returns its cluster
  structure.
  """
  @spec create_cluster(map(), create_cluster_input(), list()) ::
          {:ok, create_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cluster_errors()}
  def create_cluster(%Client{} = client, input, options \\ []) do
    url_path = "/cluster"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a snapshot of an elastic cluster.
  """
  @spec create_cluster_snapshot(map(), create_cluster_snapshot_input(), list()) ::
          {:ok, create_cluster_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cluster_snapshot_errors()}
  def create_cluster_snapshot(%Client{} = client, input, options \\ []) do
    url_path = "/cluster-snapshot"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Delete an elastic cluster.
  """
  @spec delete_cluster(map(), String.t() | Atom.t(), delete_cluster_input(), list()) ::
          {:ok, delete_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cluster_errors()}
  def delete_cluster(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Delete an elastic cluster snapshot.
  """
  @spec delete_cluster_snapshot(
          map(),
          String.t() | Atom.t(),
          delete_cluster_snapshot_input(),
          list()
        ) ::
          {:ok, delete_cluster_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cluster_snapshot_errors()}
  def delete_cluster_snapshot(%Client{} = client, snapshot_arn, input, options \\ []) do
    url_path = "/cluster-snapshot/#{AWS.Util.encode_uri(snapshot_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns information about a specific elastic cluster.
  """
  @spec get_cluster(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cluster_errors()}
  def get_cluster(%Client{} = client, cluster_arn, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a specific elastic cluster snapshot
  """
  @spec get_cluster_snapshot(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_cluster_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cluster_snapshot_errors()}
  def get_cluster_snapshot(%Client{} = client, snapshot_arn, options \\ []) do
    url_path = "/cluster-snapshot/#{AWS.Util.encode_uri(snapshot_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves all maintenance actions that are pending.
  """
  @spec get_pending_maintenance_action(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_pending_maintenance_action_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_pending_maintenance_action_errors()}
  def get_pending_maintenance_action(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/pending-action/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about snapshots for a specified elastic cluster.
  """
  @spec list_cluster_snapshots(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_cluster_snapshots_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cluster_snapshots_errors()}
  def list_cluster_snapshots(
        %Client{} = client,
        cluster_arn \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        snapshot_type \\ nil,
        options \\ []
      ) do
    url_path = "/cluster-snapshots"
    headers = []
    query_params = []

    query_params =
      if !is_nil(snapshot_type) do
        [{"snapshotType", snapshot_type} | query_params]
      else
        query_params
      end

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

    query_params =
      if !is_nil(cluster_arn) do
        [{"clusterArn", cluster_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about provisioned Amazon DocumentDB elastic clusters.
  """
  @spec list_clusters(map(), String.t() | Atom.t() | nil, String.t() | Atom.t() | nil, list()) ::
          {:ok, list_clusters_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_clusters_errors()}
  def list_clusters(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/clusters"
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
  Retrieves a list of all maintenance actions that are pending.
  """
  @spec list_pending_maintenance_actions(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_pending_maintenance_actions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_pending_maintenance_actions_errors()}
  def list_pending_maintenance_actions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/pending-actions"
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
  Lists all tags on a elastic cluster resource
  """
  @spec list_tags_for_resource(map(), String.t() | Atom.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Restores an elastic cluster from a snapshot.
  """
  @spec restore_cluster_from_snapshot(
          map(),
          String.t() | Atom.t(),
          restore_cluster_from_snapshot_input(),
          list()
        ) ::
          {:ok, restore_cluster_from_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, restore_cluster_from_snapshot_errors()}
  def restore_cluster_from_snapshot(%Client{} = client, snapshot_arn, input, options \\ []) do
    url_path = "/cluster-snapshot/#{AWS.Util.encode_uri(snapshot_arn)}/restore"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Restarts the stopped elastic cluster that is specified by `clusterARN`.
  """
  @spec start_cluster(map(), String.t() | Atom.t(), start_cluster_input(), list()) ::
          {:ok, start_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_cluster_errors()}
  def start_cluster(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}/start"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Stops the running elastic cluster that is specified by `clusterArn`.

  The elastic cluster must be in the *available* state.
  """
  @spec stop_cluster(map(), String.t() | Atom.t(), stop_cluster_input(), list()) ::
          {:ok, stop_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_cluster_errors()}
  def stop_cluster(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}/stop"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds metadata tags to an elastic cluster resource
  """
  @spec tag_resource(map(), String.t() | Atom.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes metadata tags from an elastic cluster resource
  """
  @spec untag_resource(map(), String.t() | Atom.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Modifies an elastic cluster.

  This includes updating admin-username/password,
  upgrading the API version, and setting up a backup window and maintenance window
  """
  @spec update_cluster(map(), String.t() | Atom.t(), update_cluster_input(), list()) ::
          {:ok, update_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_cluster_errors()}
  def update_cluster(%Client{} = client, cluster_arn, input, options \\ []) do
    url_path = "/cluster/#{AWS.Util.encode_uri(cluster_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
