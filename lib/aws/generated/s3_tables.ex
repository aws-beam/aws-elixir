# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.S3Tables do
  @moduledoc """
  An Amazon S3 table represents a structured dataset consisting of tabular data in
  [Apache Parquet](https://parquet.apache.org/docs/) format and related metadata.  This data is stored inside an S3 table as a subresource. All tables in a table
  bucket are stored in the [Apache
  Iceberg](https://iceberg.apache.org/docs/latest/) table format. Through
  integration with the [Amazon Web Services Glue Data Catalog](https://docs.aws.amazon.com/https:/docs.aws.amazon.com/glue/latest/dg/catalog-and-crawler.html)
  you can interact with your tables using Amazon Web Services analytics services,
  such as [Amazon Athena](https://docs.aws.amazon.com/https:/docs.aws.amazon.com/athena/) and
  [Amazon Redshift](https://docs.aws.amazon.com/https:/docs.aws.amazon.com/redshift/).
  Amazon S3 manages maintenance of your tables through automatic file compaction
  and snapshot management. For more information, see [Amazon S3 table buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      put_table_maintenance_configuration_request() :: %{
        required("value") => table_maintenance_configuration_value()
      }

  """
  @type put_table_maintenance_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_bucket_policy_request() :: %{}

  """
  @type get_table_bucket_policy_request() :: %{}

  @typedoc """

  ## Example:

      list_table_buckets_request() :: %{
        optional("continuationToken") => String.t() | atom(),
        optional("maxBuckets") => integer(),
        optional("prefix") => [String.t() | atom()]
      }

  """
  @type list_table_buckets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      encryption_configuration() :: %{
        "kmsKeyArn" => [String.t() | atom()],
        "sseAlgorithm" => list(any())
      }

  """
  @type encryption_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iceberg_snapshot_management_settings() :: %{
        "maxSnapshotAgeHours" => integer(),
        "minSnapshotsToKeep" => integer()
      }

  """
  @type iceberg_snapshot_management_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_table_policy_request() :: %{}

  """
  @type delete_table_policy_request() :: %{}

  @typedoc """

  ## Example:

      update_table_metadata_location_request() :: %{
        required("metadataLocation") => String.t() | atom(),
        required("versionToken") => String.t() | atom()
      }

  """
  @type update_table_metadata_location_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_table_bucket_policy_request() :: %{
        required("resourcePolicy") => String.t() | atom()
      }

  """
  @type put_table_bucket_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_bucket_policy_response() :: %{
        "resourcePolicy" => String.t() | atom()
      }

  """
  @type get_table_bucket_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_namespaces_request() :: %{
        optional("continuationToken") => String.t() | atom(),
        optional("maxNamespaces") => integer(),
        optional("prefix") => [String.t() | atom()]
      }

  """
  @type list_namespaces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_encryption_response() :: %{
        "encryptionConfiguration" => encryption_configuration()
      }

  """
  @type get_table_encryption_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_table_request() :: %{
        optional("versionToken") => String.t() | atom()
      }

  """
  @type delete_table_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type forbidden_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_bucket_encryption_response() :: %{
        "encryptionConfiguration" => encryption_configuration()
      }

  """
  @type get_table_bucket_encryption_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      namespace_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t() | atom(),
        "namespace" => list(String.t() | atom()),
        "namespaceId" => String.t() | atom(),
        "ownerAccountId" => String.t() | atom(),
        "tableBucketId" => String.t() | atom()
      }

  """
  @type namespace_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      table_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "modifiedAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "namespace" => list(String.t() | atom()),
        "namespaceId" => String.t() | atom(),
        "tableARN" => String.t() | atom(),
        "tableBucketId" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type table_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_request() :: %{
        optional("name") => String.t() | atom(),
        optional("namespace") => String.t() | atom(),
        optional("tableArn") => String.t() | atom(),
        optional("tableBucketARN") => String.t() | atom()
      }

  """
  @type get_table_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_maintenance_configuration_response() :: %{
        "configuration" => map(),
        "tableARN" => String.t() | atom()
      }

  """
  @type get_table_maintenance_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_table_metadata_location_response() :: %{
        "metadataLocation" => String.t() | atom(),
        "name" => String.t() | atom(),
        "namespace" => list(String.t() | atom()),
        "tableARN" => String.t() | atom(),
        "versionToken" => String.t() | atom()
      }

  """
  @type update_table_metadata_location_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_table_request() :: %{
        optional("encryptionConfiguration") => encryption_configuration(),
        optional("metadata") => list(),
        required("format") => list(any()),
        required("name") => String.t() | atom()
      }

  """
  @type create_table_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_response() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t() | atom(),
        "format" => list(any()),
        "managedByService" => [String.t() | atom()],
        "metadataLocation" => String.t() | atom(),
        "modifiedAt" => [non_neg_integer()],
        "modifiedBy" => String.t() | atom(),
        "name" => String.t() | atom(),
        "namespace" => list(String.t() | atom()),
        "namespaceId" => String.t() | atom(),
        "ownerAccountId" => String.t() | atom(),
        "tableARN" => String.t() | atom(),
        "tableBucketId" => String.t() | atom(),
        "type" => list(any()),
        "versionToken" => String.t() | atom(),
        "warehouseLocation" => String.t() | atom()
      }

  """
  @type get_table_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_policy_request() :: %{}

  """
  @type get_table_policy_request() :: %{}

  @typedoc """

  ## Example:

      get_table_maintenance_job_status_response() :: %{
        "status" => map(),
        "tableARN" => String.t() | atom()
      }

  """
  @type get_table_maintenance_job_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_bucket_encryption_request() :: %{}

  """
  @type get_table_bucket_encryption_request() :: %{}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type too_many_requests_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      table_maintenance_configuration_value() :: %{
        "settings" => list(),
        "status" => list(any())
      }

  """
  @type table_maintenance_configuration_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_maintenance_configuration_request() :: %{}

  """
  @type get_table_maintenance_configuration_request() :: %{}

  @typedoc """

  ## Example:

      get_namespace_response() :: %{
        "createdAt" => [non_neg_integer()],
        "createdBy" => String.t() | atom(),
        "namespace" => list(String.t() | atom()),
        "namespaceId" => String.t() | atom(),
        "ownerAccountId" => String.t() | atom(),
        "tableBucketId" => String.t() | atom()
      }

  """
  @type get_namespace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_namespace_request() :: %{
        required("namespace") => list(String.t() | atom())
      }

  """
  @type create_namespace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iceberg_metadata() :: %{
        "schema" => iceberg_schema()
      }

  """
  @type iceberg_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tables_response() :: %{
        "continuationToken" => String.t() | atom(),
        "tables" => list(table_summary())
      }

  """
  @type list_tables_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_table_response() :: %{
        "tableARN" => String.t() | atom(),
        "versionToken" => String.t() | atom()
      }

  """
  @type create_table_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_bucket_maintenance_configuration_request() :: %{}

  """
  @type get_table_bucket_maintenance_configuration_request() :: %{}

  @typedoc """

  ## Example:

      delete_table_bucket_policy_request() :: %{}

  """
  @type delete_table_bucket_policy_request() :: %{}

  @typedoc """

  ## Example:

      get_table_encryption_request() :: %{}

  """
  @type get_table_encryption_request() :: %{}

  @typedoc """

  ## Example:

      delete_table_bucket_encryption_request() :: %{}

  """
  @type delete_table_bucket_encryption_request() :: %{}

  @typedoc """

  ## Example:

      put_table_bucket_maintenance_configuration_request() :: %{
        required("value") => table_bucket_maintenance_configuration_value()
      }

  """
  @type put_table_bucket_maintenance_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_table_bucket_response() :: %{
        "arn" => String.t() | atom()
      }

  """
  @type create_table_bucket_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_bucket_request() :: %{}

  """
  @type get_table_bucket_request() :: %{}

  @typedoc """

  ## Example:

      get_table_metadata_location_request() :: %{}

  """
  @type get_table_metadata_location_request() :: %{}

  @typedoc """

  ## Example:

      create_table_bucket_request() :: %{
        optional("encryptionConfiguration") => encryption_configuration(),
        required("name") => String.t() | atom()
      }

  """
  @type create_table_bucket_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_maintenance_job_status_request() :: %{}

  """
  @type get_table_maintenance_job_status_request() :: %{}

  @typedoc """

  ## Example:

      iceberg_unreferenced_file_removal_settings() :: %{
        "nonCurrentDays" => integer(),
        "unreferencedDays" => integer()
      }

  """
  @type iceberg_unreferenced_file_removal_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      table_maintenance_job_status_value() :: %{
        "failureMessage" => [String.t() | atom()],
        "lastRunTimestamp" => [non_neg_integer()],
        "status" => list(any())
      }

  """
  @type table_maintenance_job_status_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_policy_response() :: %{
        "resourcePolicy" => String.t() | atom()
      }

  """
  @type get_table_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_table_buckets_response() :: %{
        "continuationToken" => String.t() | atom(),
        "tableBuckets" => list(table_bucket_summary())
      }

  """
  @type list_table_buckets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      schema_field() :: %{
        "name" => [String.t() | atom()],
        "required" => [boolean()],
        "type" => [String.t() | atom()]
      }

  """
  @type schema_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_namespace_response() :: %{
        "namespace" => list(String.t() | atom()),
        "tableBucketARN" => String.t() | atom()
      }

  """
  @type create_namespace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_bucket_maintenance_configuration_response() :: %{
        "configuration" => map(),
        "tableBucketARN" => String.t() | atom()
      }

  """
  @type get_table_bucket_maintenance_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iceberg_compaction_settings() :: %{
        "strategy" => list(any()),
        "targetFileSizeMB" => integer()
      }

  """
  @type iceberg_compaction_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rename_table_request() :: %{
        optional("newName") => String.t() | atom(),
        optional("newNamespaceName") => String.t() | atom(),
        optional("versionToken") => String.t() | atom()
      }

  """
  @type rename_table_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_error_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_namespaces_response() :: %{
        "continuationToken" => String.t() | atom(),
        "namespaces" => list(namespace_summary())
      }

  """
  @type list_namespaces_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_namespace_request() :: %{}

  """
  @type delete_namespace_request() :: %{}

  @typedoc """

  ## Example:

      get_table_metadata_location_response() :: %{
        "metadataLocation" => String.t() | atom(),
        "versionToken" => String.t() | atom(),
        "warehouseLocation" => String.t() | atom()
      }

  """
  @type get_table_metadata_location_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iceberg_schema() :: %{
        "fields" => list(schema_field())
      }

  """
  @type iceberg_schema() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type bad_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_bucket_response() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "ownerAccountId" => String.t() | atom(),
        "tableBucketId" => String.t() | atom()
      }

  """
  @type get_table_bucket_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      table_bucket_maintenance_configuration_value() :: %{
        "settings" => list(),
        "status" => list(any())
      }

  """
  @type table_bucket_maintenance_configuration_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_table_policy_request() :: %{
        required("resourcePolicy") => String.t() | atom()
      }

  """
  @type put_table_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_table_bucket_request() :: %{}

  """
  @type delete_table_bucket_request() :: %{}

  @typedoc """

  ## Example:

      put_table_bucket_encryption_request() :: %{
        required("encryptionConfiguration") => encryption_configuration()
      }

  """
  @type put_table_bucket_encryption_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      table_bucket_summary() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "ownerAccountId" => String.t() | atom(),
        "tableBucketId" => String.t() | atom()
      }

  """
  @type table_bucket_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_namespace_request() :: %{}

  """
  @type get_namespace_request() :: %{}

  @typedoc """

  ## Example:

      list_tables_request() :: %{
        optional("continuationToken") => String.t() | atom(),
        optional("maxTables") => integer(),
        optional("namespace") => String.t() | atom(),
        optional("prefix") => [String.t() | atom()]
      }

  """
  @type list_tables_request() :: %{(String.t() | atom()) => any()}

  @type create_namespace_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_table_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_table_bucket_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_namespace_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_table_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_table_bucket_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_table_bucket_encryption_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_table_bucket_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_table_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_namespace_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_table_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_table_bucket_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_table_bucket_encryption_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_table_bucket_maintenance_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_table_bucket_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_table_encryption_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_table_maintenance_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_table_maintenance_job_status_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_table_metadata_location_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type get_table_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_namespaces_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_table_buckets_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | access_denied_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_tables_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type put_table_bucket_encryption_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type put_table_bucket_maintenance_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type put_table_bucket_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type put_table_maintenance_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type put_table_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type rename_table_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_table_metadata_location_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "s3tables",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "S3Tables",
      signature_version: "v4",
      signing_name: "s3tables",
      target_prefix: nil
    }
  end

  @doc """
  Creates a namespace.

  A namespace is a logical grouping of tables within your table bucket, which you
  can use to organize tables. For more information, see [Create a namespace](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace-create.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:CreateNamespace` permission to use this operation.
  """
  @spec create_namespace(map(), String.t() | atom(), create_namespace_request(), list()) ::
          {:ok, create_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_namespace_errors()}
  def create_namespace(%Client{} = client, table_bucket_arn, input, options \\ []) do
    url_path = "/namespaces/#{AWS.Util.encode_uri(table_bucket_arn)}"
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

  @doc """
  Creates a new table associated with the given namespace in a table bucket.

  For more information, see [Creating an Amazon S3 table](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-create.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

     You must have the `s3tables:CreateTable` permission to use this
  operation.

     If you use this operation with the optional `metadata` request
  parameter you must have the `s3tables:PutTableData` permission.

     If you use this operation with the optional
  `encryptionConfiguration` request parameter you must have the
  `s3tables:PutTableEncryption` permission.

  Additionally, If you choose SSE-KMS encryption you must grant the S3 Tables
  maintenance principal access to your KMS key. For more information, see
  [Permissions requirements for S3 Tables SSE-KMS encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html).
  """
  @spec create_table(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_table_request(),
          list()
        ) ::
          {:ok, create_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_table_errors()}
  def create_table(%Client{} = client, namespace, table_bucket_arn, input, options \\ []) do
    url_path =
      "/tables/#{AWS.Util.encode_uri(table_bucket_arn)}/#{AWS.Util.encode_uri(namespace)}"

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

  @doc """
  Creates a table bucket.

  For more information, see [Creating a table bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-create.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

     You must have the `s3tables:CreateTableBucket` permission to use
  this operation.

     If you use this operation with the optional
  `encryptionConfiguration` parameter you must have the
  `s3tables:PutTableBucketEncryption` permission.
  """
  @spec create_table_bucket(map(), create_table_bucket_request(), list()) ::
          {:ok, create_table_bucket_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_table_bucket_errors()}
  def create_table_bucket(%Client{} = client, input, options \\ []) do
    url_path = "/buckets"
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

  @doc """
  Deletes a namespace.

  For more information, see [Delete a namespace](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace-delete.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:DeleteNamespace` permission to use this operation.
  """
  @spec delete_namespace(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_namespace_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_namespace_errors()}
  def delete_namespace(%Client{} = client, namespace, table_bucket_arn, input, options \\ []) do
    url_path =
      "/namespaces/#{AWS.Util.encode_uri(table_bucket_arn)}/#{AWS.Util.encode_uri(namespace)}"

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
      204
    )
  end

  @doc """
  Deletes a table.

  For more information, see [Deleting an Amazon S3 table](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-delete.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:DeleteTable` permission to use this operation.
  """
  @spec delete_table(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_table_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_table_errors()}
  def delete_table(%Client{} = client, name, namespace, table_bucket_arn, input, options \\ []) do
    url_path =
      "/tables/#{AWS.Util.encode_uri(table_bucket_arn)}/#{AWS.Util.encode_uri(namespace)}/#{AWS.Util.encode_uri(name)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"versionToken", "versionToken"}
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
      204
    )
  end

  @doc """
  Deletes a table bucket.

  For more information, see [Deleting a table bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-delete.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:DeleteTableBucket` permission to use this operation.
  """
  @spec delete_table_bucket(map(), String.t() | atom(), delete_table_bucket_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_table_bucket_errors()}
  def delete_table_bucket(%Client{} = client, table_bucket_arn, input, options \\ []) do
    url_path = "/buckets/#{AWS.Util.encode_uri(table_bucket_arn)}"
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
      204
    )
  end

  @doc """
  Deletes the encryption configuration for a table bucket.

  ## Definitions

  ### Permissions

  You must have the `s3tables:DeleteTableBucketEncryption` permission to use this
  operation.
  """
  @spec delete_table_bucket_encryption(
          map(),
          String.t() | atom(),
          delete_table_bucket_encryption_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_table_bucket_encryption_errors()}
  def delete_table_bucket_encryption(%Client{} = client, table_bucket_arn, input, options \\ []) do
    url_path = "/buckets/#{AWS.Util.encode_uri(table_bucket_arn)}/encryption"
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
      204
    )
  end

  @doc """
  Deletes a table bucket policy.

  For more information, see [Deleting a table bucket policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-delete)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:DeleteTableBucketPolicy` permission to use this
  operation.
  """
  @spec delete_table_bucket_policy(
          map(),
          String.t() | atom(),
          delete_table_bucket_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_table_bucket_policy_errors()}
  def delete_table_bucket_policy(%Client{} = client, table_bucket_arn, input, options \\ []) do
    url_path = "/buckets/#{AWS.Util.encode_uri(table_bucket_arn)}/policy"
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
      204
    )
  end

  @doc """
  Deletes a table policy.

  For more information, see [Deleting a table policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-delete)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:DeleteTablePolicy` permission to use this operation.
  """
  @spec delete_table_policy(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_table_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_table_policy_errors()}
  def delete_table_policy(
        %Client{} = client,
        name,
        namespace,
        table_bucket_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/tables/#{AWS.Util.encode_uri(table_bucket_arn)}/#{AWS.Util.encode_uri(namespace)}/#{AWS.Util.encode_uri(name)}/policy"

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
      204
    )
  end

  @doc """
  Gets details about a namespace.

  For more information, see [Table namespaces](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:GetNamespace` permission to use this operation.
  """
  @spec get_namespace(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_namespace_errors()}
  def get_namespace(%Client{} = client, namespace, table_bucket_arn, options \\ []) do
    url_path =
      "/namespaces/#{AWS.Util.encode_uri(table_bucket_arn)}/#{AWS.Util.encode_uri(namespace)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about a table.

  For more information, see [S3 Tables](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:GetTable` permission to use this operation.
  """
  @spec get_table(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_table_errors()}
  def get_table(
        %Client{} = client,
        name \\ nil,
        namespace \\ nil,
        table_arn \\ nil,
        table_bucket_arn \\ nil,
        options \\ []
      ) do
    url_path = "/get-table"
    headers = []
    query_params = []

    query_params =
      if !is_nil(table_bucket_arn) do
        [{"tableBucketARN", table_bucket_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(table_arn) do
        [{"tableArn", table_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details on a table bucket.

  For more information, see [Viewing details about an Amazon S3 table bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-details.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:GetTableBucket` permission to use this operation.
  """
  @spec get_table_bucket(map(), String.t() | atom(), list()) ::
          {:ok, get_table_bucket_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_table_bucket_errors()}
  def get_table_bucket(%Client{} = client, table_bucket_arn, options \\ []) do
    url_path = "/buckets/#{AWS.Util.encode_uri(table_bucket_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the encryption configuration for a table bucket.

  ## Definitions

  ### Permissions

  You must have the `s3tables:GetTableBucketEncryption` permission to use this
  operation.
  """
  @spec get_table_bucket_encryption(map(), String.t() | atom(), list()) ::
          {:ok, get_table_bucket_encryption_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_table_bucket_encryption_errors()}
  def get_table_bucket_encryption(%Client{} = client, table_bucket_arn, options \\ []) do
    url_path = "/buckets/#{AWS.Util.encode_uri(table_bucket_arn)}/encryption"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about a maintenance configuration for a given table bucket.

  For more information, see [Amazon S3 table bucket maintenance](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-table-buckets-maintenance.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:GetTableBucketMaintenanceConfiguration` permission
  to use this operation.
  """
  @spec get_table_bucket_maintenance_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_table_bucket_maintenance_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_table_bucket_maintenance_configuration_errors()}
  def get_table_bucket_maintenance_configuration(
        %Client{} = client,
        table_bucket_arn,
        options \\ []
      ) do
    url_path = "/buckets/#{AWS.Util.encode_uri(table_bucket_arn)}/maintenance"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about a table bucket policy.

  For more information, see [Viewing a table bucket policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-get)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:GetTableBucketPolicy` permission to use this
  operation.
  """
  @spec get_table_bucket_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_table_bucket_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_table_bucket_policy_errors()}
  def get_table_bucket_policy(%Client{} = client, table_bucket_arn, options \\ []) do
    url_path = "/buckets/#{AWS.Util.encode_uri(table_bucket_arn)}/policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the encryption configuration for a table.

  ## Definitions

  ### Permissions

  You must have the `s3tables:GetTableEncryption` permission to use this
  operation.
  """
  @spec get_table_encryption(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_table_encryption_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_table_encryption_errors()}
  def get_table_encryption(%Client{} = client, name, namespace, table_bucket_arn, options \\ []) do
    url_path =
      "/tables/#{AWS.Util.encode_uri(table_bucket_arn)}/#{AWS.Util.encode_uri(namespace)}/#{AWS.Util.encode_uri(name)}/encryption"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about the maintenance configuration of a table.

  For more information, see [S3 Tables maintenance](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

     You must have the `s3tables:GetTableMaintenanceConfiguration`
  permission to use this operation.

     You must have the `s3tables:GetTableData` permission to use set the
  compaction strategy to `sort` or `zorder`.
  """
  @spec get_table_maintenance_configuration(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_table_maintenance_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_table_maintenance_configuration_errors()}
  def get_table_maintenance_configuration(
        %Client{} = client,
        name,
        namespace,
        table_bucket_arn,
        options \\ []
      ) do
    url_path =
      "/tables/#{AWS.Util.encode_uri(table_bucket_arn)}/#{AWS.Util.encode_uri(namespace)}/#{AWS.Util.encode_uri(name)}/maintenance"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the status of a maintenance job for a table.

  For more information, see [S3 Tables maintenance](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:GetTableMaintenanceJobStatus` permission to use this
  operation.
  """
  @spec get_table_maintenance_job_status(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_table_maintenance_job_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_table_maintenance_job_status_errors()}
  def get_table_maintenance_job_status(
        %Client{} = client,
        name,
        namespace,
        table_bucket_arn,
        options \\ []
      ) do
    url_path =
      "/tables/#{AWS.Util.encode_uri(table_bucket_arn)}/#{AWS.Util.encode_uri(namespace)}/#{AWS.Util.encode_uri(name)}/maintenance-job-status"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the location of the table metadata.

  ## Definitions

  ### Permissions

  You must have the `s3tables:GetTableMetadataLocation` permission to use this
  operation.
  """
  @spec get_table_metadata_location(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_table_metadata_location_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_table_metadata_location_errors()}
  def get_table_metadata_location(
        %Client{} = client,
        name,
        namespace,
        table_bucket_arn,
        options \\ []
      ) do
    url_path =
      "/tables/#{AWS.Util.encode_uri(table_bucket_arn)}/#{AWS.Util.encode_uri(namespace)}/#{AWS.Util.encode_uri(name)}/metadata-location"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about a table policy.

  For more information, see [Viewing a table policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-get)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:GetTablePolicy` permission to use this operation.
  """
  @spec get_table_policy(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_table_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_table_policy_errors()}
  def get_table_policy(%Client{} = client, name, namespace, table_bucket_arn, options \\ []) do
    url_path =
      "/tables/#{AWS.Util.encode_uri(table_bucket_arn)}/#{AWS.Util.encode_uri(namespace)}/#{AWS.Util.encode_uri(name)}/policy"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the namespaces within a table bucket.

  For more information, see [Table namespaces](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:ListNamespaces` permission to use this operation.
  """
  @spec list_namespaces(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_namespaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_namespaces_errors()}
  def list_namespaces(
        %Client{} = client,
        table_bucket_arn,
        continuation_token \\ nil,
        max_namespaces \\ nil,
        prefix \\ nil,
        options \\ []
      ) do
    url_path = "/namespaces/#{AWS.Util.encode_uri(table_bucket_arn)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(prefix) do
        [{"prefix", prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_namespaces) do
        [{"maxNamespaces", max_namespaces} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(continuation_token) do
        [{"continuationToken", continuation_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists table buckets for your account.

  For more information, see [S3 Table buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:ListTableBuckets` permission to use this operation.
  """
  @spec list_table_buckets(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_table_buckets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_table_buckets_errors()}
  def list_table_buckets(
        %Client{} = client,
        continuation_token \\ nil,
        max_buckets \\ nil,
        prefix \\ nil,
        options \\ []
      ) do
    url_path = "/buckets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(prefix) do
        [{"prefix", prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_buckets) do
        [{"maxBuckets", max_buckets} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(continuation_token) do
        [{"continuationToken", continuation_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List tables in the given table bucket.

  For more information, see [S3 Tables](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:ListTables` permission to use this operation.
  """
  @spec list_tables(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_tables_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tables_errors()}
  def list_tables(
        %Client{} = client,
        table_bucket_arn,
        continuation_token \\ nil,
        max_tables \\ nil,
        namespace \\ nil,
        prefix \\ nil,
        options \\ []
      ) do
    url_path = "/tables/#{AWS.Util.encode_uri(table_bucket_arn)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(prefix) do
        [{"prefix", prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(namespace) do
        [{"namespace", namespace} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_tables) do
        [{"maxTables", max_tables} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(continuation_token) do
        [{"continuationToken", continuation_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sets the encryption configuration for a table bucket.

  ## Definitions

  ### Permissions

  You must have the `s3tables:PutTableBucketEncryption` permission to use this
  operation.

  If you choose SSE-KMS encryption you must grant the S3 Tables maintenance
  principal access to your KMS key. For more information, see [Permissions requirements for S3 Tables SSE-KMS
  encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html)
  in the *Amazon Simple Storage Service User Guide*.
  """
  @spec put_table_bucket_encryption(
          map(),
          String.t() | atom(),
          put_table_bucket_encryption_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_table_bucket_encryption_errors()}
  def put_table_bucket_encryption(%Client{} = client, table_bucket_arn, input, options \\ []) do
    url_path = "/buckets/#{AWS.Util.encode_uri(table_bucket_arn)}/encryption"
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

  @doc """
  Creates a new maintenance configuration or replaces an existing maintenance
  configuration for a table bucket.

  For more information, see [Amazon S3 table bucket maintenance](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-table-buckets-maintenance.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:PutTableBucketMaintenanceConfiguration` permission
  to use this operation.
  """
  @spec put_table_bucket_maintenance_configuration(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          put_table_bucket_maintenance_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_table_bucket_maintenance_configuration_errors()}
  def put_table_bucket_maintenance_configuration(
        %Client{} = client,
        table_bucket_arn,
        type,
        input,
        options \\ []
      ) do
    url_path =
      "/buckets/#{AWS.Util.encode_uri(table_bucket_arn)}/maintenance/#{AWS.Util.encode_uri(type)}"

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
      204
    )
  end

  @doc """
  Creates a new maintenance configuration or replaces an existing table bucket
  policy for a table bucket.

  For more information, see [Adding a table bucket policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-add)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:PutTableBucketPolicy` permission to use this
  operation.
  """
  @spec put_table_bucket_policy(
          map(),
          String.t() | atom(),
          put_table_bucket_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_table_bucket_policy_errors()}
  def put_table_bucket_policy(%Client{} = client, table_bucket_arn, input, options \\ []) do
    url_path = "/buckets/#{AWS.Util.encode_uri(table_bucket_arn)}/policy"
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

  @doc """
  Creates a new maintenance configuration or replaces an existing maintenance
  configuration for a table.

  For more information, see [S3 Tables maintenance](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:PutTableMaintenanceConfiguration` permission to use
  this operation.
  """
  @spec put_table_maintenance_configuration(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          put_table_maintenance_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_table_maintenance_configuration_errors()}
  def put_table_maintenance_configuration(
        %Client{} = client,
        name,
        namespace,
        table_bucket_arn,
        type,
        input,
        options \\ []
      ) do
    url_path =
      "/tables/#{AWS.Util.encode_uri(table_bucket_arn)}/#{AWS.Util.encode_uri(namespace)}/#{AWS.Util.encode_uri(name)}/maintenance/#{AWS.Util.encode_uri(type)}"

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
      204
    )
  end

  @doc """
  Creates a new maintenance configuration or replaces an existing table policy for
  a table.

  For more information, see [Adding a table policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-add)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:PutTablePolicy` permission to use this operation.
  """
  @spec put_table_policy(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          put_table_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_table_policy_errors()}
  def put_table_policy(
        %Client{} = client,
        name,
        namespace,
        table_bucket_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/tables/#{AWS.Util.encode_uri(table_bucket_arn)}/#{AWS.Util.encode_uri(namespace)}/#{AWS.Util.encode_uri(name)}/policy"

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

  @doc """
  Renames a table or a namespace.

  For more information, see [S3 Tables](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html)
  in the *Amazon Simple Storage Service User Guide*.

  ## Definitions

  ### Permissions

  You must have the `s3tables:RenameTable` permission to use this operation.
  """
  @spec rename_table(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          rename_table_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, rename_table_errors()}
  def rename_table(%Client{} = client, name, namespace, table_bucket_arn, input, options \\ []) do
    url_path =
      "/tables/#{AWS.Util.encode_uri(table_bucket_arn)}/#{AWS.Util.encode_uri(namespace)}/#{AWS.Util.encode_uri(name)}/rename"

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
      204
    )
  end

  @doc """
  Updates the metadata location for a table.

  The metadata location of a table must be an S3 URI that begins with the table's
  warehouse location. The metadata location for an Apache Iceberg table must end
  with `.metadata.json`, or if the metadata file is Gzip-compressed,
  `.metadata.json.gz`.

  ## Definitions

  ### Permissions

  You must have the `s3tables:UpdateTableMetadataLocation` permission to use this
  operation.
  """
  @spec update_table_metadata_location(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_table_metadata_location_request(),
          list()
        ) ::
          {:ok, update_table_metadata_location_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_table_metadata_location_errors()}
  def update_table_metadata_location(
        %Client{} = client,
        name,
        namespace,
        table_bucket_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/tables/#{AWS.Util.encode_uri(table_bucket_arn)}/#{AWS.Util.encode_uri(namespace)}/#{AWS.Util.encode_uri(name)}/metadata-location"

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
