# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Keyspaces do
  @moduledoc """
  Amazon Keyspaces (for Apache Cassandra) is a scalable,
  highly available, and managed Apache Cassandra-compatible database service.

  Amazon Keyspaces makes it easy to migrate,
  run, and scale Cassandra workloads in the Amazon Web Services Cloud. With just a
  few clicks on the Amazon Web Services Management Console or a few lines of code,
  you can create keyspaces and tables in Amazon Keyspaces, without deploying any
  infrastructure or installing software.

  In addition to supporting Cassandra Query Language (CQL) requests via
  open-source Cassandra drivers,
  Amazon Keyspaces supports data definition language (DDL) operations to manage
  keyspaces and tables using the Amazon Web Services SDK and CLI, as well as
  infrastructure as code (IaC) services and tools such as CloudFormation and
  Terraform. This API reference describes
  the supported DDL operations in detail.

  For the list of all supported CQL APIs, see [Supported Cassandra APIs, operations, and data types
  in Amazon
  Keyspaces](https://docs.aws.amazon.com/keyspaces/latest/devguide/cassandra-apis.html)
  in the *Amazon Keyspaces Developer
  Guide*.

  To learn how Amazon Keyspaces API actions are recorded with CloudTrail, see
  [Amazon Keyspaces information in CloudTrail](https://docs.aws.amazon.com/keyspaces/latest/devguide/logging-using-cloudtrail.html#service-name-info-in-cloudtrail)
  in the *Amazon Keyspaces Developer
  Guide*.

  For more information about Amazon Web Services APIs, for example how to
  implement retry logic or how to sign Amazon Web Services API requests, see
  [Amazon Web Services APIs](https://docs.aws.amazon.com/general/latest/gr/aws-apis.html) in the
  *General Reference*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      partition_key() :: %{
        "name" => String.t()
      }
      
  """
  @type partition_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_type_request() :: %{
        required("keyspaceName") => String.t(),
        required("typeName") => String.t()
      }
      
  """
  @type get_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_type_request() :: %{
        required("keyspaceName") => String.t(),
        required("typeName") => String.t()
      }
      
  """
  @type delete_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_type_response() :: %{
        "keyspaceArn" => String.t(),
        "typeName" => String.t()
      }
      
  """
  @type delete_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_table_request() :: %{
        optional("addColumns") => list(column_definition()()),
        optional("autoScalingSpecification") => auto_scaling_specification(),
        optional("capacitySpecification") => capacity_specification(),
        optional("clientSideTimestamps") => client_side_timestamps(),
        optional("defaultTimeToLive") => integer(),
        optional("encryptionSpecification") => encryption_specification(),
        optional("pointInTimeRecovery") => point_in_time_recovery(),
        optional("replicaSpecifications") => list(replica_specification()()),
        optional("ttl") => time_to_live(),
        required("keyspaceName") => String.t(),
        required("tableName") => String.t()
      }
      
  """
  @type update_table_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_keyspace_response() :: %{
        "resourceArn" => String.t()
      }
      
  """
  @type update_keyspace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_types_response() :: %{
        "nextToken" => String.t(),
        "types" => list(String.t()())
      }
      
  """
  @type list_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      keyspace_summary() :: %{
        "keyspaceName" => String.t(),
        "replicationRegions" => list(String.t()()),
        "replicationStrategy" => String.t(),
        "resourceArn" => String.t()
      }
      
  """
  @type keyspace_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_specification() :: %{
        "readCapacityAutoScaling" => auto_scaling_settings(),
        "readCapacityUnits" => float(),
        "region" => String.t()
      }
      
  """
  @type replica_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_specification() :: %{
        "regionList" => list(String.t()()),
        "replicationStrategy" => String.t()
      }
      
  """
  @type replication_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_keyspaces_response() :: %{
        optional("nextToken") => String.t(),
        required("keyspaces") => list(keyspace_summary()())
      }
      
  """
  @type list_keyspaces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schema_definition() :: %{
        "allColumns" => list(column_definition()()),
        "clusteringKeys" => list(clustering_key()()),
        "partitionKeys" => list(partition_key()()),
        "staticColumns" => list(static_column()())
      }
      
  """
  @type schema_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_table_request() :: %{
        required("keyspaceName") => String.t(),
        required("tableName") => String.t()
      }
      
  """
  @type delete_table_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      table_summary() :: %{
        "keyspaceName" => String.t(),
        "resourceArn" => String.t(),
        "tableName" => String.t()
      }
      
  """
  @type table_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_scaling_policy_configuration() :: %{
        "disableScaleIn" => boolean(),
        "scaleInCooldown" => integer(),
        "scaleOutCooldown" => integer(),
        "targetValue" => float()
      }
      
  """
  @type target_tracking_scaling_policy_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_table_request() :: %{
        required("keyspaceName") => String.t(),
        required("tableName") => String.t()
      }
      
  """
  @type get_table_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_table_request() :: %{
        optional("autoScalingSpecification") => auto_scaling_specification(),
        optional("capacitySpecification") => capacity_specification(),
        optional("clientSideTimestamps") => client_side_timestamps(),
        optional("comment") => comment(),
        optional("defaultTimeToLive") => integer(),
        optional("encryptionSpecification") => encryption_specification(),
        optional("pointInTimeRecovery") => point_in_time_recovery(),
        optional("replicaSpecifications") => list(replica_specification()()),
        optional("tags") => list(tag()()),
        optional("ttl") => time_to_live(),
        required("keyspaceName") => String.t(),
        required("schemaDefinition") => schema_definition(),
        required("tableName") => String.t()
      }
      
  """
  @type create_table_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_table_response() :: %{
        optional("capacitySpecification") => capacity_specification_summary(),
        optional("clientSideTimestamps") => client_side_timestamps(),
        optional("comment") => comment(),
        optional("creationTimestamp") => non_neg_integer(),
        optional("defaultTimeToLive") => integer(),
        optional("encryptionSpecification") => encryption_specification(),
        optional("pointInTimeRecovery") => point_in_time_recovery_summary(),
        optional("replicaSpecifications") => list(replica_specification_summary()()),
        optional("schemaDefinition") => schema_definition(),
        optional("status") => String.t(),
        optional("ttl") => time_to_live(),
        required("keyspaceName") => String.t(),
        required("resourceArn") => String.t(),
        required("tableName") => String.t()
      }
      
  """
  @type get_table_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_policy() :: %{
        "targetTrackingScalingPolicyConfiguration" => target_tracking_scaling_policy_configuration()
      }
      
  """
  @type auto_scaling_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      client_side_timestamps() :: %{
        "status" => String.t()
      }
      
  """
  @type client_side_timestamps() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tags") => list(tag()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_type_request() :: %{
        required("fieldDefinitions") => list(field_definition()()),
        required("keyspaceName") => String.t(),
        required("typeName") => String.t()
      }
      
  """
  @type create_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_specification() :: %{
        "readCapacityUnits" => float(),
        "throughputMode" => String.t(),
        "writeCapacityUnits" => float()
      }
      
  """
  @type capacity_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_keyspace_request() :: %{
        optional("replicationSpecification") => replication_specification(),
        optional("tags") => list(tag()()),
        required("keyspaceName") => String.t()
      }
      
  """
  @type create_keyspace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_keyspace_request() :: %{
        required("keyspaceName") => String.t()
      }
      
  """
  @type delete_keyspace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_settings() :: %{
        "autoScalingDisabled" => boolean(),
        "maximumUnits" => float(),
        "minimumUnits" => float(),
        "scalingPolicy" => auto_scaling_policy()
      }
      
  """
  @type auto_scaling_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_type_response() :: %{
        "directParentTypes" => list(String.t()()),
        "directReferringTables" => list(String.t()()),
        "fieldDefinitions" => list(field_definition()()),
        "keyspaceArn" => String.t(),
        "keyspaceName" => String.t(),
        "lastModifiedTimestamp" => non_neg_integer(),
        "maxNestingDepth" => integer(),
        "status" => String.t(),
        "typeName" => String.t()
      }
      
  """
  @type get_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceArn" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tables_response() :: %{
        optional("nextToken") => String.t(),
        optional("tables") => list(table_summary()())
      }
      
  """
  @type list_tables_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_specification() :: %{
        "readCapacityAutoScaling" => auto_scaling_settings(),
        "writeCapacityAutoScaling" => auto_scaling_settings()
      }
      
  """
  @type auto_scaling_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      comment() :: %{
        "message" => [String.t()]
      }
      
  """
  @type comment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_table_response() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type create_table_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      point_in_time_recovery() :: %{
        "status" => String.t()
      }
      
  """
  @type point_in_time_recovery() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      field_definition() :: %{
        "name" => String.t(),
        "type" => String.t()
      }
      
  """
  @type field_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_type_response() :: %{
        "keyspaceArn" => String.t(),
        "typeName" => String.t()
      }
      
  """
  @type create_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        optional("nextToken") => String.t(),
        optional("tags") => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_keyspace_response() :: %{}
      
  """
  @type delete_keyspace_response() :: %{}

  @typedoc """

  ## Example:
      
      replica_specification_summary() :: %{
        "capacitySpecification" => capacity_specification_summary(),
        "region" => String.t(),
        "status" => String.t()
      }
      
  """
  @type replica_specification_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_table_auto_scaling_settings_request() :: %{
        required("keyspaceName") => String.t(),
        required("tableName") => String.t()
      }
      
  """
  @type get_table_auto_scaling_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_keyspaces_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_keyspaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      point_in_time_recovery_summary() :: %{
        "earliestRestorableTimestamp" => non_neg_integer(),
        "status" => String.t()
      }
      
  """
  @type point_in_time_recovery_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_table_response() :: %{}
      
  """
  @type delete_table_response() :: %{}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_specification_summary() :: %{
        "lastUpdateToPayPerRequestTimestamp" => non_neg_integer(),
        "readCapacityUnits" => float(),
        "throughputMode" => String.t(),
        "writeCapacityUnits" => float()
      }
      
  """
  @type capacity_specification_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      clustering_key() :: %{
        "name" => String.t(),
        "orderBy" => String.t()
      }
      
  """
  @type clustering_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_table_request() :: %{
        optional("autoScalingSpecification") => auto_scaling_specification(),
        optional("capacitySpecificationOverride") => capacity_specification(),
        optional("encryptionSpecificationOverride") => encryption_specification(),
        optional("pointInTimeRecoveryOverride") => point_in_time_recovery(),
        optional("replicaSpecifications") => list(replica_specification()()),
        optional("restoreTimestamp") => non_neg_integer(),
        optional("tagsOverride") => list(tag()()),
        required("sourceKeyspaceName") => String.t(),
        required("sourceTableName") => String.t(),
        required("targetKeyspaceName") => String.t(),
        required("targetTableName") => String.t()
      }
      
  """
  @type restore_table_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_keyspace_request() :: %{
        required("keyspaceName") => String.t()
      }
      
  """
  @type get_keyspace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_keyspace_request() :: %{
        optional("clientSideTimestamps") => client_side_timestamps(),
        required("keyspaceName") => String.t(),
        required("replicationSpecification") => replication_specification()
      }
      
  """
  @type update_keyspace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_keyspace_response() :: %{
        optional("replicationGroupStatuses") => list(replication_group_status()()),
        optional("replicationRegions") => list(String.t()()),
        required("keyspaceName") => String.t(),
        required("replicationStrategy") => String.t(),
        required("resourceArn") => String.t()
      }
      
  """
  @type get_keyspace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replica_auto_scaling_specification() :: %{
        "autoScalingSpecification" => auto_scaling_specification(),
        "region" => String.t()
      }
      
  """
  @type replica_auto_scaling_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      replication_group_status() :: %{
        "keyspaceStatus" => String.t(),
        "region" => String.t(),
        "tablesReplicationProgress" => String.t()
      }
      
  """
  @type replication_group_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_table_response() :: %{
        required("restoredTableARN") => String.t()
      }
      
  """
  @type restore_table_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_table_auto_scaling_settings_response() :: %{
        "autoScalingSpecification" => auto_scaling_specification(),
        "keyspaceName" => String.t(),
        "replicaSpecifications" => list(replica_auto_scaling_specification()()),
        "resourceArn" => String.t(),
        "tableName" => String.t()
      }
      
  """
  @type get_table_auto_scaling_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_to_live() :: %{
        "status" => String.t()
      }
      
  """
  @type time_to_live() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_specification() :: %{
        "kmsKeyIdentifier" => String.t(),
        "type" => String.t()
      }
      
  """
  @type encryption_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_table_response() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type update_table_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_types_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("keyspaceName") => String.t()
      }
      
  """
  @type list_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      static_column() :: %{
        "name" => String.t()
      }
      
  """
  @type static_column() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_keyspace_response() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type create_keyspace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tables_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("keyspaceName") => String.t()
      }
      
  """
  @type list_tables_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      column_definition() :: %{
        "name" => String.t(),
        "type" => String.t()
      }
      
  """
  @type column_definition() :: %{String.t() => any()}

  @type create_keyspace_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_table_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_type_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_keyspace_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_table_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_type_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_keyspace_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_table_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_table_auto_scaling_settings_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_type_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_keyspaces_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_tables_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_types_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type restore_table_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_keyspace_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_table_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-02-10",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "cassandra",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Keyspaces",
      signature_version: "v4",
      signing_name: "cassandra",
      target_prefix: "KeyspacesService"
    }
  end

  @doc """
  The `CreateKeyspace` operation adds a new keyspace to your account.

  In an Amazon Web Services account, keyspace names
  must be unique within each Region.

  `CreateKeyspace` is an asynchronous operation. You can monitor the creation
  status of the new keyspace
  by using the `GetKeyspace` operation.

  For more information, see [Create a keyspace](https://docs.aws.amazon.com/keyspaces/latest/devguide/getting-started.keyspaces.html)
  in the *Amazon Keyspaces Developer
  Guide*.
  """
  @spec create_keyspace(map(), create_keyspace_request(), list()) ::
          {:ok, create_keyspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_keyspace_errors()}
  def create_keyspace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateKeyspace", input, options)
  end

  @doc """
  The `CreateTable` operation adds a new table to the specified keyspace.

  Within a keyspace, table names
  must be unique.

  `CreateTable` is an asynchronous operation. When the request is received, the
  status of the table is set to `CREATING`.
  You can monitor the creation status of the new table by using the `GetTable`
  operation, which returns the current `status` of the table. You can start using
  a table when the status is `ACTIVE`.

  For more information, see [Create a table](https://docs.aws.amazon.com/keyspaces/latest/devguide/getting-started.tables.html)
  in the *Amazon Keyspaces Developer
  Guide*.
  """
  @spec create_table(map(), create_table_request(), list()) ::
          {:ok, create_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_table_errors()}
  def create_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTable", input, options)
  end

  @doc """

  The `CreateType` operation creates a new user-defined type in the specified
  keyspace.

  To configure the required permissions, see [Permissions to create a UDT](https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-create)
  in the *Amazon Keyspaces Developer Guide*.

  For more information, see [User-defined types (UDTs)](https://docs.aws.amazon.com/keyspaces/latest/devguide/udts.html) in the
  *Amazon Keyspaces Developer
  Guide*.
  """
  @spec create_type(map(), create_type_request(), list()) ::
          {:ok, create_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_type_errors()}
  def create_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateType", input, options)
  end

  @doc """
  The `DeleteKeyspace` operation deletes a keyspace and all of its tables.
  """
  @spec delete_keyspace(map(), delete_keyspace_request(), list()) ::
          {:ok, delete_keyspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_keyspace_errors()}
  def delete_keyspace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteKeyspace", input, options)
  end

  @doc """
  The `DeleteTable` operation deletes a table and all of its data.

  After a `DeleteTable` request is received,
  the specified table is in the `DELETING` state until Amazon Keyspaces completes
  the deletion. If the table
  is in the `ACTIVE` state, you can delete it. If a table is either in the
  `CREATING` or `UPDATING` states, then
  Amazon Keyspaces returns a `ResourceInUseException`. If the specified table does
  not exist, Amazon Keyspaces returns
  a `ResourceNotFoundException`. If the table is already in the `DELETING` state,
  no error is returned.
  """
  @spec delete_table(map(), delete_table_request(), list()) ::
          {:ok, delete_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_table_errors()}
  def delete_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTable", input, options)
  end

  @doc """

  The `DeleteType` operation deletes a user-defined type (UDT).

  You can only delete a type that is not used in a table
  or another UDT.

  To configure the required permissions, see [Permissions to delete a UDT](https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-drop)
  in the *Amazon Keyspaces Developer Guide*.
  """
  @spec delete_type(map(), delete_type_request(), list()) ::
          {:ok, delete_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_type_errors()}
  def delete_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteType", input, options)
  end

  @doc """
  Returns the name of the specified keyspace, the Amazon Resource Name (ARN), the
  replication strategy, the Amazon Web Services Regions of
  a multi-Region keyspace, and the status of newly added Regions after an
  `UpdateKeyspace` operation.
  """
  @spec get_keyspace(map(), get_keyspace_request(), list()) ::
          {:ok, get_keyspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_keyspace_errors()}
  def get_keyspace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetKeyspace", input, options)
  end

  @doc """
  Returns information about the table, including the table's name and current
  status, the keyspace name,
  configuration settings, and metadata.

  To read table metadata using `GetTable`, the
  IAM principal needs `Select` action
  permissions for the table and the system keyspace.
  """
  @spec get_table(map(), get_table_request(), list()) ::
          {:ok, get_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_table_errors()}
  def get_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTable", input, options)
  end

  @doc """
  Returns auto scaling related settings of the specified table in JSON format.

  If the table is a multi-Region table, the
  Amazon Web Services Region specific auto scaling settings of the table are
  included.

  Amazon Keyspaces auto scaling helps you provision throughput capacity for
  variable workloads efficiently by increasing and decreasing
  your table's read and write capacity automatically in response to application
  traffic. For more information, see [Managing throughput capacity automatically with Amazon Keyspaces auto
  scaling](https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html)
  in the *Amazon Keyspaces Developer
  Guide*.

  `GetTableAutoScalingSettings` can't be used as an action in an IAM policy.

  To define permissions for `GetTableAutoScalingSettings`, you must allow the
  following two actions in the IAM policy statement's
  `Action` element:

    *

  `application-autoscaling:DescribeScalableTargets`

    *

  `application-autoscaling:DescribeScalingPolicies`
  """
  @spec get_table_auto_scaling_settings(map(), get_table_auto_scaling_settings_request(), list()) ::
          {:ok, get_table_auto_scaling_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_table_auto_scaling_settings_errors()}
  def get_table_auto_scaling_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTableAutoScalingSettings", input, options)
  end

  @doc """

  The `GetType` operation returns information about the type, for example the
  field definitions, the timestamp when the type
  was last modified, the level of nesting, the status, and details about if the
  type is used in other types and tables.

  To read keyspace metadata using `GetType`, the
  IAM principal needs `Select` action
  permissions for the system keyspace. To configure the required permissions, see
  [Permissions to view a UDT](https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-view)
  in the *Amazon Keyspaces Developer Guide*.
  """
  @spec get_type(map(), get_type_request(), list()) ::
          {:ok, get_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_type_errors()}
  def get_type(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetType", input, options)
  end

  @doc """
  The `ListKeyspaces` operation returns a list of keyspaces.
  """
  @spec list_keyspaces(map(), list_keyspaces_request(), list()) ::
          {:ok, list_keyspaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_keyspaces_errors()}
  def list_keyspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListKeyspaces", input, options)
  end

  @doc """
  The `ListTables` operation returns a list of tables for a specified keyspace.

  To read keyspace metadata using `ListTables`, the
  IAM principal needs `Select` action
  permissions for the system keyspace.
  """
  @spec list_tables(map(), list_tables_request(), list()) ::
          {:ok, list_tables_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tables_errors()}
  def list_tables(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTables", input, options)
  end

  @doc """
  Returns a list of all tags associated with the specified Amazon Keyspaces
  resource.

  To read keyspace metadata using `ListTagsForResource`, the
  IAM principal needs `Select` action
  permissions for the specified resource and the system keyspace.
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

  The `ListTypes` operation returns a list of types for a specified keyspace.

  To read keyspace metadata using `ListTypes`, the
  IAM principal needs `Select` action
  permissions for the system keyspace. To configure the required permissions, see
  [Permissions to view a UDT](https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-view)
  in the *Amazon Keyspaces Developer Guide*.
  """
  @spec list_types(map(), list_types_request(), list()) ::
          {:ok, list_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_types_errors()}
  def list_types(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTypes", input, options)
  end

  @doc """
  Restores the table to the specified point in time within the
  `earliest_restorable_timestamp` and the current time.

  For more information about restore points, see
  [
  Time window for PITR continuous
  backups](https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_window)
  in the *Amazon Keyspaces Developer Guide*.

  Any number of users can execute up to 4 concurrent restores (any type of
  restore) in a given account.

  When you restore using point in time recovery,
  Amazon Keyspaces restores your source table's schema and data to the state
  based on the selected timestamp `(day:hour:minute:second)` to a new table. The
  Time to Live (TTL) settings
  are also restored to the state based on the selected timestamp.

  In addition to the table's schema, data, and TTL settings,
  `RestoreTable` restores the capacity mode, auto scaling settings, encryption
  settings, and
  point-in-time recovery settings from the source table.
  Unlike the table's schema data and TTL settings, which are restored based on the
  selected timestamp,
  these settings are always restored based on the table's settings as of the
  current time or when the table was deleted.

  You can also overwrite
  these settings during restore:

    *
  Read/write capacity mode

    *
  Provisioned throughput capacity units

    *
  Auto scaling settings

    *
  Point-in-time (PITR) settings

    *
  Tags

  For more
  information, see [PITR restore settings](https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_settings)
  in the *Amazon Keyspaces Developer
  Guide*.

  Note that the following settings are not restored, and you must configure them
  manually for
  the new table:

    *
  Identity and Access Management (IAM) policies

    *
  Amazon CloudWatch metrics and alarms
  """
  @spec restore_table(map(), restore_table_request(), list()) ::
          {:ok, restore_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_table_errors()}
  def restore_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreTable", input, options)
  end

  @doc """
  Associates a set of tags with a Amazon Keyspaces resource.

  You can then
  activate these user-defined tags so that they appear on the Cost Management
  Console for cost allocation tracking.
  For more information, see [Adding tags and labels to Amazon Keyspaces resources](https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html)
  in the *Amazon Keyspaces Developer
  Guide*.

  For IAM policy examples that show how to control access to Amazon Keyspaces
  resources based on tags,
  see [Amazon Keyspaces resource access based on tags](https://docs.aws.amazon.com/keyspaces/latest/devguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-tags)
  in the *Amazon Keyspaces Developer Guide*.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the association of tags from a Amazon Keyspaces resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """

  Adds a new Amazon Web Services Region to the keyspace.

  You can add a new Region to a keyspace that is either a single or a multi-Region
  keyspace.
  The new replica Region is applied to all tables in the keyspace. For more
  information, see [Add an Amazon Web Services Region to a keyspace in Amazon Keyspaces](https://docs.aws.amazon.com/keyspaces/latest/devguide/keyspaces-multi-region-add-replica.html)
  in the *Amazon Keyspaces Developer
  Guide*.

  To change a single-Region to a multi-Region keyspace, you have to enable
  client-side timestamps
  for all tables in the keyspace. For more information, see
  [Client-side timestamps in Amazon Keyspaces](https://docs.aws.amazon.com/keyspaces/latest/devguide/client-side-timestamps.html)
  in the *Amazon Keyspaces Developer
  Guide*.
  """
  @spec update_keyspace(map(), update_keyspace_request(), list()) ::
          {:ok, update_keyspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_keyspace_errors()}
  def update_keyspace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateKeyspace", input, options)
  end

  @doc """
  Adds new columns to the table or updates one of the table's settings, for
  example
  capacity mode, auto scaling, encryption, point-in-time recovery, or ttl
  settings.

  Note that you can only update one specific table setting per update operation.
  """
  @spec update_table(map(), update_table_request(), list()) ::
          {:ok, update_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_table_errors()}
  def update_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTable", input, options)
  end
end
