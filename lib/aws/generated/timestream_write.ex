# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TimestreamWrite do
  @moduledoc """
  Amazon Timestream Write

  Amazon Timestream is a fast, scalable, fully managed time-series database
  service
  that makes it easy to store and analyze trillions of time-series data points per
  day.

  With
  Timestream, you can easily store and analyze IoT sensor data to derive insights
  from your IoT applications. You can analyze industrial telemetry to streamline
  equipment
  management and maintenance. You can also store and analyze log data and metrics
  to improve
  the performance and availability of your applications.

  Timestream is built from the ground up to effectively ingest, process, and
  store time-series data. It organizes data to optimize query processing. It
  automatically
  scales based on the volume of data ingested and on the query volume to ensure
  you receive
  optimal performance while inserting and querying data. As your data grows over
  time,
  Timestream’s adaptive query processing engine spans across storage tiers to
  provide fast analysis while reducing costs.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      partition_key() :: %{
        "EnforcementInRecord" => list(any()),
        "Name" => String.t() | atom(),
        "Type" => list(any())
      }
      
  """
  @type partition_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_batch_load_task_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("DataModelConfiguration") => data_model_configuration(),
        optional("RecordVersion") => float(),
        required("DataSourceConfiguration") => data_source_configuration(),
        required("ReportConfiguration") => report_configuration(),
        required("TargetDatabaseName") => String.t() | atom(),
        required("TargetTableName") => String.t() | atom()
      }
      
  """
  @type create_batch_load_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      magnetic_store_rejected_data_location() :: %{
        "S3Configuration" => s3_configuration()
      }
      
  """
  @type magnetic_store_rejected_data_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      record() :: %{
        "Dimensions" => list(dimension()),
        "MeasureName" => String.t() | atom(),
        "MeasureValue" => String.t() | atom(),
        "MeasureValueType" => list(any()),
        "MeasureValues" => list(measure_value()),
        "Time" => String.t() | atom(),
        "TimeUnit" => list(any()),
        "Version" => float()
      }
      
  """
  @type record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      database() :: %{
        "Arn" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "DatabaseName" => String.t() | atom(),
        "KmsKeyId" => String.t() | atom(),
        "LastUpdatedTime" => non_neg_integer(),
        "TableCount" => float()
      }
      
  """
  @type database() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_table_request() :: %{
        optional("MagneticStoreWriteProperties") => magnetic_store_write_properties(),
        optional("RetentionProperties") => retention_properties(),
        optional("Schema") => schema(),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type update_table_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      magnetic_store_write_properties() :: %{
        "EnableMagneticStoreWrites" => boolean(),
        "MagneticStoreRejectedDataLocation" => magnetic_store_rejected_data_location()
      }
      
  """
  @type magnetic_store_write_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_source_configuration() :: %{
        "CsvConfiguration" => csv_configuration(),
        "DataFormat" => list(any()),
        "DataSourceS3Configuration" => data_source_s3_configuration()
      }
      
  """
  @type data_source_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      measure_value() :: %{
        "Name" => String.t() | atom(),
        "Type" => list(any()),
        "Value" => String.t() | atom()
      }
      
  """
  @type measure_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      records_ingested() :: %{
        "MagneticStore" => integer(),
        "MemoryStore" => integer(),
        "Total" => integer()
      }
      
  """
  @type records_ingested() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_table_request() :: %{
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type delete_table_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_database_response() :: %{
        "Database" => database()
      }
      
  """
  @type describe_database_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_load_task_description() :: %{
        "CreationTime" => non_neg_integer(),
        "DataModelConfiguration" => data_model_configuration(),
        "DataSourceConfiguration" => data_source_configuration(),
        "ErrorMessage" => String.t() | atom(),
        "LastUpdatedTime" => non_neg_integer(),
        "ProgressReport" => batch_load_progress_report(),
        "RecordVersion" => float(),
        "ReportConfiguration" => report_configuration(),
        "ResumableUntil" => non_neg_integer(),
        "TargetDatabaseName" => String.t() | atom(),
        "TargetTableName" => String.t() | atom(),
        "TaskId" => String.t() | atom(),
        "TaskStatus" => list(any())
      }
      
  """
  @type batch_load_task_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      multi_measure_attribute_mapping() :: %{
        "MeasureValueType" => list(any()),
        "SourceColumn" => String.t() | atom(),
        "TargetMultiMeasureAttributeName" => String.t() | atom()
      }
      
  """
  @type multi_measure_attribute_mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      csv_configuration() :: %{
        "ColumnSeparator" => String.t() | atom(),
        "EscapeChar" => String.t() | atom(),
        "NullValue" => String.t() | atom(),
        "QuoteChar" => String.t() | atom(),
        "TrimWhiteSpace" => boolean()
      }
      
  """
  @type csv_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      report_s3_configuration() :: %{
        "BucketName" => String.t() | atom(),
        "EncryptionOption" => list(any()),
        "KmsKeyId" => String.t() | atom(),
        "ObjectKeyPrefix" => String.t() | atom()
      }
      
  """
  @type report_s3_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_endpoint_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_endpoint_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_database_request() :: %{
        required("DatabaseName") => String.t() | atom()
      }
      
  """
  @type describe_database_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_endpoints_response() :: %{
        "Endpoints" => list(endpoint())
      }
      
  """
  @type describe_endpoints_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_table_request() :: %{
        optional("MagneticStoreWriteProperties") => magnetic_store_write_properties(),
        optional("RetentionProperties") => retention_properties(),
        optional("Schema") => schema(),
        optional("Tags") => list(tag()),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type create_table_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_table_response() :: %{
        "Table" => table()
      }
      
  """
  @type describe_table_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_batch_load_task_response() :: %{
        "BatchLoadTaskDescription" => batch_load_task_description()
      }
      
  """
  @type describe_batch_load_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_load_task() :: %{
        "CreationTime" => non_neg_integer(),
        "DatabaseName" => String.t() | atom(),
        "LastUpdatedTime" => non_neg_integer(),
        "ResumableUntil" => non_neg_integer(),
        "TableName" => String.t() | atom(),
        "TaskId" => String.t() | atom(),
        "TaskStatus" => list(any())
      }
      
  """
  @type batch_load_task() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_model_configuration() :: %{
        "DataModel" => data_model(),
        "DataModelS3Configuration" => data_model_s3_configuration()
      }
      
  """
  @type data_model_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_endpoints_request() :: %{}
      
  """
  @type describe_endpoints_request() :: %{}

  @typedoc """

  ## Example:
      
      list_databases_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_databases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tables_response() :: %{
        "NextToken" => String.t() | atom(),
        "Tables" => list(table())
      }
      
  """
  @type list_tables_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resume_batch_load_task_response() :: %{}
      
  """
  @type resume_batch_load_task_response() :: %{}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_batch_load_task_request() :: %{
        required("TaskId") => String.t() | atom()
      }
      
  """
  @type describe_batch_load_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_table_response() :: %{
        "Table" => table()
      }
      
  """
  @type create_table_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resume_batch_load_task_request() :: %{
        required("TaskId") => String.t() | atom()
      }
      
  """
  @type resume_batch_load_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      report_configuration() :: %{
        "ReportS3Configuration" => report_s3_configuration()
      }
      
  """
  @type report_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schema() :: %{
        "CompositePartitionKey" => list(partition_key())
      }
      
  """
  @type schema() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_batch_load_task_response() :: %{
        "TaskId" => String.t() | atom()
      }
      
  """
  @type create_batch_load_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_table_request() :: %{
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type describe_table_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_batch_load_tasks_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("TaskStatus") => list(any())
      }
      
  """
  @type list_batch_load_tasks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      endpoint() :: %{
        "Address" => String.t() | atom(),
        "CachePeriodInMinutes" => float()
      }
      
  """
  @type endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_batch_load_tasks_response() :: %{
        "BatchLoadTasks" => list(batch_load_task()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_batch_load_tasks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      write_records_request() :: %{
        optional("CommonAttributes") => record(),
        required("DatabaseName") => String.t() | atom(),
        required("Records") => list(record()),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type write_records_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      multi_measure_mappings() :: %{
        "MultiMeasureAttributeMappings" => list(multi_measure_attribute_mapping()),
        "TargetMultiMeasureName" => String.t() | atom()
      }
      
  """
  @type multi_measure_mappings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_source_s3_configuration() :: %{
        "BucketName" => String.t() | atom(),
        "ObjectKeyPrefix" => String.t() | atom()
      }
      
  """
  @type data_source_s3_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      retention_properties() :: %{
        "MagneticStoreRetentionPeriodInDays" => float(),
        "MemoryStoreRetentionPeriodInHours" => float()
      }
      
  """
  @type retention_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_model_s3_configuration() :: %{
        "BucketName" => String.t() | atom(),
        "ObjectKey" => String.t() | atom()
      }
      
  """
  @type data_model_s3_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_configuration() :: %{
        "BucketName" => String.t() | atom(),
        "EncryptionOption" => list(any()),
        "KmsKeyId" => String.t() | atom(),
        "ObjectKeyPrefix" => String.t() | atom()
      }
      
  """
  @type s3_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_model() :: %{
        "DimensionMappings" => list(dimension_mapping()),
        "MeasureNameColumn" => String.t() | atom(),
        "MixedMeasureMappings" => list(mixed_measure_mapping()),
        "MultiMeasureMappings" => multi_measure_mappings(),
        "TimeColumn" => String.t() | atom(),
        "TimeUnit" => list(any())
      }
      
  """
  @type data_model() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      mixed_measure_mapping() :: %{
        "MeasureName" => String.t() | atom(),
        "MeasureValueType" => list(any()),
        "MultiMeasureAttributeMappings" => list(multi_measure_attribute_mapping()),
        "SourceColumn" => String.t() | atom(),
        "TargetMeasureName" => String.t() | atom()
      }
      
  """
  @type mixed_measure_mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_database_response() :: %{
        "Database" => database()
      }
      
  """
  @type update_database_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dimension() :: %{
        "DimensionValueType" => list(any()),
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      write_records_response() :: %{
        "RecordsIngested" => records_ingested()
      }
      
  """
  @type write_records_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_table_response() :: %{
        "Table" => table()
      }
      
  """
  @type update_table_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      table() :: %{
        "Arn" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "DatabaseName" => String.t() | atom(),
        "LastUpdatedTime" => non_neg_integer(),
        "MagneticStoreWriteProperties" => magnetic_store_write_properties(),
        "RetentionProperties" => retention_properties(),
        "Schema" => schema(),
        "TableName" => String.t() | atom(),
        "TableStatus" => list(any())
      }
      
  """
  @type table() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dimension_mapping() :: %{
        "DestinationColumn" => String.t() | atom(),
        "SourceColumn" => String.t() | atom()
      }
      
  """
  @type dimension_mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rejected_records_exception() :: %{
        "Message" => String.t() | atom(),
        "RejectedRecords" => list(rejected_record())
      }
      
  """
  @type rejected_records_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_databases_response() :: %{
        "Databases" => list(database()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_databases_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_database_response() :: %{
        "Database" => database()
      }
      
  """
  @type create_database_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_database_request() :: %{
        optional("KmsKeyId") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("DatabaseName") => String.t() | atom()
      }
      
  """
  @type create_database_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_database_request() :: %{
        required("DatabaseName") => String.t() | atom(),
        required("KmsKeyId") => String.t() | atom()
      }
      
  """
  @type update_database_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_load_progress_report() :: %{
        "BytesMetered" => float(),
        "FileFailures" => float(),
        "ParseFailures" => float(),
        "RecordIngestionFailures" => float(),
        "RecordsIngested" => float(),
        "RecordsProcessed" => float()
      }
      
  """
  @type batch_load_progress_report() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rejected_record() :: %{
        "ExistingVersion" => float(),
        "Reason" => String.t() | atom(),
        "RecordIndex" => integer()
      }
      
  """
  @type rejected_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tables_request() :: %{
        optional("DatabaseName") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_tables_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_database_request() :: %{
        required("DatabaseName") => String.t() | atom()
      }
      
  """
  @type delete_database_request() :: %{(String.t() | atom()) => any()}

  @type create_batch_load_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_endpoint_exception()

  @type create_database_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | invalid_endpoint_exception()

  @type create_table_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_endpoint_exception()

  @type delete_database_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type delete_table_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type describe_batch_load_task_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type describe_database_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type describe_endpoints_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type describe_table_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type list_batch_load_tasks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_endpoint_exception()

  @type list_databases_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | invalid_endpoint_exception()

  @type list_tables_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type resume_batch_load_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type update_database_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type update_table_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  @type write_records_errors() ::
          rejected_records_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_endpoint_exception()

  def metadata do
    %{
      api_version: "2018-11-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "ingest.timestream",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Timestream Write",
      signature_version: "v4",
      signing_name: "timestream",
      target_prefix: "Timestream_20181101"
    }
  end

  @doc """
  Creates a new Timestream batch load task.

  A batch load task processes data from
  a CSV source in an S3 location and writes to a Timestream table. A mapping from
  source to target is defined in a batch load task. Errors and events are written
  to a report
  at an S3 location. For the report, if the KMS key is not specified, the
  report will be encrypted with an S3 managed key when `SSE_S3` is the option.
  Otherwise an error is thrown. For more information, see [Amazon Web Services managed
  keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).
  [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
  For
  details, see [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-batch-load.html).
  """
  @spec create_batch_load_task(map(), create_batch_load_task_request(), list()) ::
          {:ok, create_batch_load_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_batch_load_task_errors()}
  def create_batch_load_task(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateBatchLoadTask", input, options)
  end

  @doc """
  Creates a new Timestream database.

  If the KMS key is not
  specified, the database will be encrypted with a Timestream managed KMS key
  located in your account. For more information, see [Amazon Web Services managed keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).
  [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
  For
  details, see [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-db.html).
  """
  @spec create_database(map(), create_database_request(), list()) ::
          {:ok, create_database_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_database_errors()}
  def create_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDatabase", input, options)
  end

  @doc """
  Adds a new table to an existing database in your account.

  In an Amazon Web Services account, table names must be at least unique within
  each Region if they are in the same
  database. You might have identical table names in the same Region if the tables
  are in
  separate databases. While creating the table, you must specify the table name,
  database
  name, and the retention properties. [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
  See
  [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-table.html)
  for details.
  """
  @spec create_table(map(), create_table_request(), list()) ::
          {:ok, create_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_table_errors()}
  def create_table(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTable", input, options)
  end

  @doc """
  Deletes a given Timestream database.

  *This is an irreversible
  operation. After a database is deleted, the time-series data from its tables
  cannot be
  recovered.*

  All tables in the database must be deleted first, or a ValidationException error
  will
  be thrown.

  Due to the nature of distributed retries, the operation can return either
  success or
  a ResourceNotFoundException. Clients should consider them equivalent.

  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.delete-db.html)
  for details.
  """
  @spec delete_database(map(), delete_database_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_database_errors()}
  def delete_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDatabase", input, options)
  end

  @doc """
  Deletes a given Timestream table.

  This is an irreversible operation. After a
  Timestream database table is deleted, the time-series data stored in the table
  cannot be recovered.

  Due to the nature of distributed retries, the operation can return either
  success or
  a ResourceNotFoundException. Clients should consider them equivalent.

  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.delete-table.html)
  for details.
  """
  @spec delete_table(map(), delete_table_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_table_errors()}
  def delete_table(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTable", input, options)
  end

  @doc """
  Returns information about the batch load task, including configurations,
  mappings,
  progress, and other details.

  [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
  See
  [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-batch-load.html)
  for details.
  """
  @spec describe_batch_load_task(map(), describe_batch_load_task_request(), list()) ::
          {:ok, describe_batch_load_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_batch_load_task_errors()}
  def describe_batch_load_task(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeBatchLoadTask", input, options)
  end

  @doc """
  Returns information about the database, including the database name, time that
  the
  database was created, and the total number of tables found within the database.

  [Service quotas
  apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-db.html)
  for details.
  """
  @spec describe_database(map(), describe_database_request(), list()) ::
          {:ok, describe_database_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_database_errors()}
  def describe_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDatabase", input, options)
  end

  @doc """
  Returns a list of available endpoints to make Timestream API calls against.

  This API operation is available through both the Write and Query APIs.

  Because the Timestream SDKs are designed to transparently work with the
  service’s architecture, including the management and mapping of the service
  endpoints,
  *we don't recommend that you use this API operation unless*:

    *
  You are using [VPC endpoints (Amazon Web Services PrivateLink) with Timestream](https://docs.aws.amazon.com/timestream/latest/developerguide/VPCEndpoints)

    *
  Your application uses a programming language that does not yet have SDK
  support

    *
  You require better control over the client-side implementation

  For detailed information on how and when to use and implement DescribeEndpoints,
  see
  [The Endpoint Discovery
  Pattern](https://docs.aws.amazon.com/timestream/latest/developerguide/Using.API.html#Using-API.endpoint-discovery).
  """
  @spec describe_endpoints(map(), describe_endpoints_request(), list()) ::
          {:ok, describe_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_endpoints_errors()}
  def describe_endpoints(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeEndpoints", input, options)
  end

  @doc """
  Returns information about the table, including the table name, database name,
  retention
  duration of the memory store and the magnetic store.

  [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
  See
  [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-table.html)
  for details.
  """
  @spec describe_table(map(), describe_table_request(), list()) ::
          {:ok, describe_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_table_errors()}
  def describe_table(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeTable", input, options)
  end

  @doc """
  Provides a list of batch load tasks, along with the name, status, when the task
  is
  resumable until, and other details.

  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-batch-load-tasks.html)
  for details.
  """
  @spec list_batch_load_tasks(map(), list_batch_load_tasks_request(), list()) ::
          {:ok, list_batch_load_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_batch_load_tasks_errors()}
  def list_batch_load_tasks(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListBatchLoadTasks", input, options)
  end

  @doc """
  Returns a list of your Timestream databases.

  [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
  See
  [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-db.html)
  for
  details.
  """
  @spec list_databases(map(), list_databases_request(), list()) ::
          {:ok, list_databases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_databases_errors()}
  def list_databases(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDatabases", input, options)
  end

  @doc """
  Provides a list of tables, along with the name, status, and retention properties
  of each
  table.

  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-table.html)
  for details.
  """
  @spec list_tables(map(), list_tables_request(), list()) ::
          {:ok, list_tables_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tables_errors()}
  def list_tables(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTables", input, options)
  end

  @doc """
  Lists all tags on a Timestream resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @spec resume_batch_load_task(map(), resume_batch_load_task_request(), list()) ::
          {:ok, resume_batch_load_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resume_batch_load_task_errors()}
  def resume_batch_load_task(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ResumeBatchLoadTask", input, options)
  end

  @doc """
  Associates a set of tags with a Timestream resource.

  You can then activate
  these user-defined tags so that they appear on the Billing and Cost Management
  console for
  cost allocation tracking.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the association of tags from a Timestream resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Modifies the KMS key for an existing database.

  While updating the
  database, you must specify the database name and the identifier of the new KMS
  key to be used (`KmsKeyId`). If there are any concurrent
  `UpdateDatabase` requests, first writer wins.

  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.update-db.html)
  for details.
  """
  @spec update_database(map(), update_database_request(), list()) ::
          {:ok, update_database_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_database_errors()}
  def update_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDatabase", input, options)
  end

  @doc """
  Modifies the retention duration of the memory store and magnetic store for your
  Timestream table.

  Note that the change in retention duration takes effect immediately.
  For example, if the retention period of the memory store was initially set to 2
  hours and
  then changed to 24 hours, the memory store will be capable of holding 24 hours
  of data, but
  will be populated with 24 hours of data 22 hours after this change was made.
  Timestream does not retrieve data from the magnetic store to populate the memory
  store.

  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.update-table.html)
  for details.
  """
  @spec update_table(map(), update_table_request(), list()) ::
          {:ok, update_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_table_errors()}
  def update_table(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTable", input, options)
  end

  @doc """
  Enables you to write your time-series data into Timestream.

  You can specify a
  single data point or a batch of data points to be inserted into the system.
  Timestream offers you a flexible schema that auto detects the column names and
  data
  types for your Timestream tables based on the dimension names and data types of
  the data points you specify when invoking writes into the database.

  Timestream supports eventual consistency read semantics. This means that when
  you query data immediately after writing a batch of data into Timestream, the
  query results might not reflect the results of a recently completed write
  operation. The
  results may also include some stale data. If you repeat the query request after
  a short
  time, the results should return the latest data. [Service quotas apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).

  See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.write.html)
  for
  details.

  ## Upserts

  You can use the `Version` parameter in a `WriteRecords` request to
  update data points. Timestream tracks a version number with each record.
  `Version` defaults to `1` when it's not specified for the record
  in the request. Timestream updates an existing record’s measure value along with
  its `Version` when it receives a write request with a higher
  `Version` number for that record. When it receives an update request where
  the measure value is the same as that of the existing record, Timestream still
  updates `Version`, if it is greater than the existing value of
  `Version`. You can update a data point as many times as desired, as long as
  the value of `Version` continuously increases.

  For example, suppose you write a new record without indicating `Version` in
  the request. Timestream stores this record, and set `Version` to
  `1`. Now, suppose you try to update this record with a
  `WriteRecords` request of the same record with a different measure value but,
  like before, do not provide `Version`. In this case, Timestream will
  reject this update with a `RejectedRecordsException` since the updated record’s
  version is not greater than the existing value of Version.

  However, if you were to resend the update request with `Version` set to
  `2`, Timestream would then succeed in updating the record’s value,
  and the `Version` would be set to `2`. Next, suppose you sent a
  `WriteRecords` request with this same record and an identical measure value,
  but with `Version` set to `3`. In this case, Timestream
  would only update `Version` to `3`. Any further updates would need to
  send a version number greater than `3`, or the update requests would receive a
  `RejectedRecordsException`.
  """
  @spec write_records(map(), write_records_request(), list()) ::
          {:ok, write_records_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, write_records_errors()}
  def write_records(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "WriteRecords", input, options)
  end
end
