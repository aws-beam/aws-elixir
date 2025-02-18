# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TimestreamInfluxDB do
  @moduledoc """
  Amazon Timestream for InfluxDB is a managed time-series database engine that
  makes it easy for application developers and DevOps teams to run InfluxDB
  databases on Amazon Web Services for near real-time time-series applications
  using open-source APIs.

  With Amazon Timestream for InfluxDB, it is easy to set up, operate, and scale
  time-series workloads that can answer queries with single-digit millisecond
  query response time.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_db_instances_for_cluster_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("dbClusterId") => String.t()
      }
      
  """
  @type list_db_instances_for_cluster_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_db_parameter_groups_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_db_parameter_groups_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_db_cluster_input() :: %{
        optional("dbInstanceType") => list(any()),
        optional("dbParameterGroupIdentifier") => String.t(),
        optional("failoverMode") => list(any()),
        optional("logDeliveryConfiguration") => log_delivery_configuration(),
        optional("port") => integer(),
        required("dbClusterId") => String.t()
      }
      
  """
  @type update_db_cluster_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_instance_output() :: %{
        "allocatedStorage" => integer(),
        "arn" => String.t(),
        "availabilityZone" => [String.t()],
        "dbClusterId" => String.t(),
        "dbInstanceType" => list(any()),
        "dbParameterGroupIdentifier" => String.t(),
        "dbStorageType" => list(any()),
        "deploymentType" => list(any()),
        "endpoint" => [String.t()],
        "id" => String.t(),
        "influxAuthParametersSecretArn" => [String.t()],
        "instanceMode" => list(any()),
        "logDeliveryConfiguration" => log_delivery_configuration(),
        "name" => String.t(),
        "networkType" => list(any()),
        "port" => integer(),
        "publiclyAccessible" => [boolean()],
        "secondaryAvailabilityZone" => [String.t()],
        "status" => list(any()),
        "vpcSecurityGroupIds" => list(String.t()()),
        "vpcSubnetIds" => list(String.t()())
      }
      
  """
  @type delete_db_instance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_db_clusters_output() :: %{
        "items" => list(db_cluster_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_db_clusters_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_parameter_group_summary() :: %{
        "arn" => String.t(),
        "description" => [String.t()],
        "id" => String.t(),
        "name" => String.t()
      }
      
  """
  @type db_parameter_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_instance_input() :: %{
        required("identifier") => String.t()
      }
      
  """
  @type delete_db_instance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_db_instances_for_cluster_output() :: %{
        "items" => list(db_instance_for_cluster_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_db_instances_for_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      influx_dbv2_parameters() :: %{
        "storageRetentionCheckInterval" => duration(),
        "sessionRenewDisabled" => [boolean()],
        "storageCompactThroughputBurst" => [float()],
        "influxqlMaxSelectSeries" => [float()],
        "storageSeriesIdSetCacheSize" => [float()],
        "logLevel" => list(any()),
        "pprofDisabled" => [boolean()],
        "queryMaxMemoryBytes" => [float()],
        "storageWalMaxWriteDelay" => duration(),
        "fluxLogEnabled" => [boolean()],
        "storageCacheMaxMemorySize" => [float()],
        "influxqlMaxSelectBuckets" => [float()],
        "queryConcurrency" => [integer()],
        "httpReadTimeout" => duration(),
        "sessionLength" => [integer()],
        "metricsDisabled" => [boolean()],
        "uiDisabled" => [boolean()],
        "storageMaxIndexLogFileSize" => [float()],
        "tracingType" => list(any()),
        "noTasks" => [boolean()],
        "queryInitialMemoryBytes" => [float()],
        "queryQueueSize" => [integer()],
        "storageNoValidateFieldSize" => [boolean()],
        "storageCacheSnapshotWriteColdDuration" => duration(),
        "httpWriteTimeout" => duration(),
        "storageWalMaxConcurrentWrites" => [integer()],
        "storageSeriesFileMaxConcurrentSnapshotCompactions" => [integer()],
        "influxqlMaxSelectPoint" => [float()],
        "queryMemoryBytes" => [float()],
        "storageCacheSnapshotMemorySize" => [float()],
        "httpIdleTimeout" => duration(),
        "httpReadHeaderTimeout" => duration(),
        "storageCompactFullWriteColdDuration" => duration(),
        "storageMaxConcurrentCompactions" => [integer()]
      }
      
  """
  @type influx_dbv2_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_db_instance_output() :: %{
        "allocatedStorage" => integer(),
        "arn" => String.t(),
        "availabilityZone" => [String.t()],
        "dbClusterId" => String.t(),
        "dbInstanceType" => list(any()),
        "dbParameterGroupIdentifier" => String.t(),
        "dbStorageType" => list(any()),
        "deploymentType" => list(any()),
        "endpoint" => [String.t()],
        "id" => String.t(),
        "influxAuthParametersSecretArn" => [String.t()],
        "instanceMode" => list(any()),
        "logDeliveryConfiguration" => log_delivery_configuration(),
        "name" => String.t(),
        "networkType" => list(any()),
        "port" => integer(),
        "publiclyAccessible" => [boolean()],
        "secondaryAvailabilityZone" => [String.t()],
        "status" => list(any()),
        "vpcSecurityGroupIds" => list(String.t()()),
        "vpcSubnetIds" => list(String.t()())
      }
      
  """
  @type get_db_instance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_instance_summary() :: %{
        "allocatedStorage" => integer(),
        "arn" => String.t(),
        "dbInstanceType" => list(any()),
        "dbStorageType" => list(any()),
        "deploymentType" => list(any()),
        "endpoint" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "networkType" => list(any()),
        "port" => integer(),
        "status" => list(any())
      }
      
  """
  @type db_instance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_input() :: %{
        optional("bucket") => String.t(),
        optional("dbParameterGroupIdentifier") => String.t(),
        optional("dbStorageType") => list(any()),
        optional("failoverMode") => list(any()),
        optional("logDeliveryConfiguration") => log_delivery_configuration(),
        optional("networkType") => list(any()),
        optional("organization") => String.t(),
        optional("port") => integer(),
        optional("publiclyAccessible") => [boolean()],
        optional("tags") => map(),
        optional("username") => String.t(),
        required("allocatedStorage") => integer(),
        required("dbInstanceType") => list(any()),
        required("deploymentType") => list(any()),
        required("name") => String.t(),
        required("password") => String.t(),
        required("vpcSecurityGroupIds") => list(String.t()()),
        required("vpcSubnetIds") => list(String.t()())
      }
      
  """
  @type create_db_cluster_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_db_parameter_group_output() :: %{
        "arn" => String.t(),
        "description" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "parameters" => list()
      }
      
  """
  @type get_db_parameter_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_db_clusters_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_db_clusters_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_db_instance_input() :: %{
        optional("allocatedStorage") => integer(),
        optional("dbInstanceType") => list(any()),
        optional("dbParameterGroupIdentifier") => String.t(),
        optional("dbStorageType") => list(any()),
        optional("deploymentType") => list(any()),
        optional("logDeliveryConfiguration") => log_delivery_configuration(),
        optional("port") => integer(),
        required("identifier") => String.t()
      }
      
  """
  @type update_db_instance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_cluster_output() :: %{
        "dbClusterId" => String.t(),
        "dbClusterStatus" => list(any())
      }
      
  """
  @type create_db_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      log_delivery_configuration() :: %{
        "s3Configuration" => s3_configuration()
      }
      
  """
  @type log_delivery_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_db_cluster_output() :: %{
        "allocatedStorage" => integer(),
        "arn" => String.t(),
        "dbInstanceType" => list(any()),
        "dbParameterGroupIdentifier" => String.t(),
        "dbStorageType" => list(any()),
        "deploymentType" => list(any()),
        "endpoint" => [String.t()],
        "failoverMode" => list(any()),
        "id" => String.t(),
        "influxAuthParametersSecretArn" => [String.t()],
        "logDeliveryConfiguration" => log_delivery_configuration(),
        "name" => String.t(),
        "networkType" => list(any()),
        "port" => integer(),
        "publiclyAccessible" => [boolean()],
        "readerEndpoint" => [String.t()],
        "status" => list(any()),
        "vpcSecurityGroupIds" => list(String.t()()),
        "vpcSubnetIds" => list(String.t()())
      }
      
  """
  @type get_db_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_db_parameter_group_input() :: %{
        required("identifier") => String.t()
      }
      
  """
  @type get_db_parameter_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_db_parameter_groups_output() :: %{
        "items" => list(db_parameter_group_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_db_parameter_groups_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_instance_output() :: %{
        "allocatedStorage" => integer(),
        "arn" => String.t(),
        "availabilityZone" => [String.t()],
        "dbClusterId" => String.t(),
        "dbInstanceType" => list(any()),
        "dbParameterGroupIdentifier" => String.t(),
        "dbStorageType" => list(any()),
        "deploymentType" => list(any()),
        "endpoint" => [String.t()],
        "id" => String.t(),
        "influxAuthParametersSecretArn" => [String.t()],
        "instanceMode" => list(any()),
        "logDeliveryConfiguration" => log_delivery_configuration(),
        "name" => String.t(),
        "networkType" => list(any()),
        "port" => integer(),
        "publiclyAccessible" => [boolean()],
        "secondaryAvailabilityZone" => [String.t()],
        "status" => list(any()),
        "vpcSecurityGroupIds" => list(String.t()()),
        "vpcSubnetIds" => list(String.t()())
      }
      
  """
  @type create_db_instance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_instance_for_cluster_summary() :: %{
        "allocatedStorage" => integer(),
        "arn" => String.t(),
        "dbInstanceType" => list(any()),
        "dbStorageType" => list(any()),
        "deploymentType" => list(any()),
        "endpoint" => [String.t()],
        "id" => String.t(),
        "instanceMode" => list(any()),
        "name" => String.t(),
        "networkType" => list(any()),
        "port" => integer(),
        "status" => list(any())
      }
      
  """
  @type db_instance_for_cluster_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_db_cluster_input() :: %{
        required("dbClusterId") => String.t()
      }
      
  """
  @type get_db_cluster_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_db_instances_output() :: %{
        "items" => list(db_instance_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_db_instances_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_parameter_group_input() :: %{
        optional("description") => [String.t()],
        optional("parameters") => list(),
        optional("tags") => map(),
        required("name") => String.t()
      }
      
  """
  @type create_db_parameter_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_db_instances_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_db_instances_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_db_instance_output() :: %{
        "allocatedStorage" => integer(),
        "arn" => String.t(),
        "availabilityZone" => [String.t()],
        "dbClusterId" => String.t(),
        "dbInstanceType" => list(any()),
        "dbParameterGroupIdentifier" => String.t(),
        "dbStorageType" => list(any()),
        "deploymentType" => list(any()),
        "endpoint" => [String.t()],
        "id" => String.t(),
        "influxAuthParametersSecretArn" => [String.t()],
        "instanceMode" => list(any()),
        "logDeliveryConfiguration" => log_delivery_configuration(),
        "name" => String.t(),
        "networkType" => list(any()),
        "port" => integer(),
        "publiclyAccessible" => [boolean()],
        "secondaryAvailabilityZone" => [String.t()],
        "status" => list(any()),
        "vpcSecurityGroupIds" => list(String.t()()),
        "vpcSubnetIds" => list(String.t()())
      }
      
  """
  @type update_db_instance_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duration() :: %{
        "durationType" => list(any()),
        "value" => [float()]
      }
      
  """
  @type duration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_db_cluster_output() :: %{
        "dbClusterStatus" => list(any())
      }
      
  """
  @type update_db_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => [String.t()],
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_input() :: %{
        required("dbClusterId") => String.t()
      }
      
  """
  @type delete_db_cluster_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_configuration() :: %{
        "bucketName" => [String.t()],
        "enabled" => [boolean()]
      }
      
  """
  @type s3_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_db_instance_input() :: %{
        required("identifier") => String.t()
      }
      
  """
  @type get_db_instance_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_db_cluster_output() :: %{
        "dbClusterStatus" => list(any())
      }
      
  """
  @type delete_db_cluster_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_cluster_summary() :: %{
        "allocatedStorage" => integer(),
        "arn" => String.t(),
        "dbInstanceType" => list(any()),
        "dbStorageType" => list(any()),
        "deploymentType" => list(any()),
        "endpoint" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "networkType" => list(any()),
        "port" => integer(),
        "readerEndpoint" => [String.t()],
        "status" => list(any())
      }
      
  """
  @type db_cluster_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_parameter_group_output() :: %{
        "arn" => String.t(),
        "description" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "parameters" => list()
      }
      
  """
  @type create_db_parameter_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_db_instance_input() :: %{
        optional("bucket") => String.t(),
        optional("dbParameterGroupIdentifier") => String.t(),
        optional("dbStorageType") => list(any()),
        optional("deploymentType") => list(any()),
        optional("logDeliveryConfiguration") => log_delivery_configuration(),
        optional("networkType") => list(any()),
        optional("organization") => String.t(),
        optional("port") => integer(),
        optional("publiclyAccessible") => [boolean()],
        optional("tags") => map(),
        optional("username") => String.t(),
        required("allocatedStorage") => integer(),
        required("dbInstanceType") => list(any()),
        required("name") => String.t(),
        required("password") => String.t(),
        required("vpcSecurityGroupIds") => list(String.t()()),
        required("vpcSubnetIds") => list(String.t()())
      }
      
  """
  @type create_db_instance_input() :: %{String.t() => any()}

  @type create_db_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_db_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_db_parameter_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_db_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_db_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_db_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_db_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_db_parameter_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_db_clusters_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_db_instances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_db_instances_for_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_db_parameter_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() :: resource_not_found_exception()

  @type tag_resource_errors() ::
          service_quota_exceeded_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: resource_not_found_exception()

  @type update_db_cluster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_db_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2023-01-27",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "timestream-influxdb",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Timestream InfluxDB",
      signature_version: "v4",
      signing_name: "timestream-influxdb",
      target_prefix: "AmazonTimestreamInfluxDB"
    }
  end

  @doc """
  Creates a new Timestream for InfluxDB cluster.
  """
  @spec create_db_cluster(map(), create_db_cluster_input(), list()) ::
          {:ok, create_db_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_db_cluster_errors()}
  def create_db_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDbCluster", input, options)
  end

  @doc """
  Creates a new Timestream for InfluxDB DB instance.
  """
  @spec create_db_instance(map(), create_db_instance_input(), list()) ::
          {:ok, create_db_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_db_instance_errors()}
  def create_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDbInstance", input, options)
  end

  @doc """
  Creates a new Timestream for InfluxDB DB parameter group to associate with DB
  instances.
  """
  @spec create_db_parameter_group(map(), create_db_parameter_group_input(), list()) ::
          {:ok, create_db_parameter_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_db_parameter_group_errors()}
  def create_db_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDbParameterGroup", input, options)
  end

  @doc """
  Deletes a Timestream for InfluxDB cluster.
  """
  @spec delete_db_cluster(map(), delete_db_cluster_input(), list()) ::
          {:ok, delete_db_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_db_cluster_errors()}
  def delete_db_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDbCluster", input, options)
  end

  @doc """
  Deletes a Timestream for InfluxDB DB instance.
  """
  @spec delete_db_instance(map(), delete_db_instance_input(), list()) ::
          {:ok, delete_db_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_db_instance_errors()}
  def delete_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDbInstance", input, options)
  end

  @doc """
  Retrieves information about a Timestream for InfluxDB cluster.
  """
  @spec get_db_cluster(map(), get_db_cluster_input(), list()) ::
          {:ok, get_db_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_db_cluster_errors()}
  def get_db_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDbCluster", input, options)
  end

  @doc """
  Returns a Timestream for InfluxDB DB instance.
  """
  @spec get_db_instance(map(), get_db_instance_input(), list()) ::
          {:ok, get_db_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_db_instance_errors()}
  def get_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDbInstance", input, options)
  end

  @doc """
  Returns a Timestream for InfluxDB DB parameter group.
  """
  @spec get_db_parameter_group(map(), get_db_parameter_group_input(), list()) ::
          {:ok, get_db_parameter_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_db_parameter_group_errors()}
  def get_db_parameter_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDbParameterGroup", input, options)
  end

  @doc """
  Returns a list of Timestream for InfluxDB DB clusters.
  """
  @spec list_db_clusters(map(), list_db_clusters_input(), list()) ::
          {:ok, list_db_clusters_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_db_clusters_errors()}
  def list_db_clusters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDbClusters", input, options)
  end

  @doc """
  Returns a list of Timestream for InfluxDB DB instances.
  """
  @spec list_db_instances(map(), list_db_instances_input(), list()) ::
          {:ok, list_db_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_db_instances_errors()}
  def list_db_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDbInstances", input, options)
  end

  @doc """
  Returns a list of Timestream for InfluxDB clusters.
  """
  @spec list_db_instances_for_cluster(map(), list_db_instances_for_cluster_input(), list()) ::
          {:ok, list_db_instances_for_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_db_instances_for_cluster_errors()}
  def list_db_instances_for_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDbInstancesForCluster", input, options)
  end

  @doc """
  Returns a list of Timestream for InfluxDB DB parameter groups.
  """
  @spec list_db_parameter_groups(map(), list_db_parameter_groups_input(), list()) ::
          {:ok, list_db_parameter_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_db_parameter_groups_errors()}
  def list_db_parameter_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDbParameterGroups", input, options)
  end

  @doc """
  A list of tags applied to the resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Tags are composed of a Key/Value pairs.

  You can use tags to categorize and track your Timestream for InfluxDB resources.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the tag from the specified resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates a Timestream for InfluxDB cluster.
  """
  @spec update_db_cluster(map(), update_db_cluster_input(), list()) ::
          {:ok, update_db_cluster_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_db_cluster_errors()}
  def update_db_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDbCluster", input, options)
  end

  @doc """
  Updates a Timestream for InfluxDB DB instance.
  """
  @spec update_db_instance(map(), update_db_instance_input(), list()) ::
          {:ok, update_db_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_db_instance_errors()}
  def update_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDbInstance", input, options)
  end
end
