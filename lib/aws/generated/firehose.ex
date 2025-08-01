# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Firehose do
  @moduledoc """
  Amazon Data Firehose

  Amazon Data Firehose was previously known as Amazon Kinesis Data Firehose.

  Amazon Data Firehose is a fully managed service that delivers real-time
  streaming
  data to destinations such as Amazon Simple Storage Service (Amazon S3), Amazon
  OpenSearch
  Service, Amazon Redshift, Splunk, and various other supported destinations.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      http_endpoint_request_configuration() :: %{
        "CommonAttributes" => list(http_endpoint_common_attribute()),
        "ContentEncoding" => list(any())
      }
      
  """
  @type http_endpoint_request_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      database_source_authentication_configuration() :: %{
        "SecretsManagerConfiguration" => secrets_manager_configuration()
      }
      
  """
  @type database_source_authentication_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      record() :: %{
        "Data" => binary()
      }
      
  """
  @type record() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_configuration() :: %{
        "KMSEncryptionConfig" => kms_encryption_config(),
        "NoEncryptionConfig" => list(any())
      }
      
  """
  @type encryption_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      http_endpoint_buffering_hints() :: %{
        "IntervalInSeconds" => integer(),
        "SizeInMBs" => integer()
      }
      
  """
  @type http_endpoint_buffering_hints() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_kms_resource_exception() :: %{
        "code" => String.t() | Atom.t(),
        "message" => String.t() | Atom.t()
      }
      
  """
  @type invalid_kms_resource_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      failure_description() :: %{
        "Details" => String.t() | Atom.t(),
        "Type" => list(any())
      }
      
  """
  @type failure_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_retry_options() :: %{
        "DurationInSeconds" => integer()
      }
      
  """
  @type redshift_retry_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      amazon_open_search_serverless_buffering_hints() :: %{
        "IntervalInSeconds" => integer(),
        "SizeInMBs" => integer()
      }
      
  """
  @type amazon_open_search_serverless_buffering_hints() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      database_source_configuration() :: %{
        "Columns" => database_column_list(),
        "DatabaseSourceAuthenticationConfiguration" => database_source_authentication_configuration(),
        "DatabaseSourceVPCConfiguration" => database_source_vpc_configuration(),
        "Databases" => database_list(),
        "Endpoint" => String.t() | Atom.t(),
        "Port" => integer(),
        "SSLMode" => list(any()),
        "SnapshotWatermarkTable" => String.t() | Atom.t(),
        "SurrogateKeys" => list(String.t() | Atom.t()),
        "Tables" => database_table_list(),
        "Type" => list(any())
      }
      
  """
  @type database_source_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_configuration() :: %{
        "RoleARN" => String.t() | Atom.t(),
        "SecurityGroupIds" => list(String.t() | Atom.t()),
        "SubnetIds" => list(String.t() | Atom.t())
      }
      
  """
  @type vpc_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      snowflake_vpc_configuration() :: %{
        "PrivateLinkVpceId" => String.t() | Atom.t()
      }
      
  """
  @type snowflake_vpc_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      database_source_vpc_configuration() :: %{
        "VpcEndpointServiceName" => String.t() | Atom.t()
      }
      
  """
  @type database_source_vpc_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_destination_output() :: %{}
      
  """
  @type update_destination_output() :: %{}

  @typedoc """

  ## Example:
      
      start_delivery_stream_encryption_output() :: %{}
      
  """
  @type start_delivery_stream_encryption_output() :: %{}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      direct_put_source_configuration() :: %{
        "ThroughputHintInMBs" => integer()
      }
      
  """
  @type direct_put_source_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      extended_s3_destination_description() :: %{
        "BucketARN" => String.t() | Atom.t(),
        "BufferingHints" => buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CompressionFormat" => list(any()),
        "CustomTimeZone" => String.t() | Atom.t(),
        "DataFormatConversionConfiguration" => data_format_conversion_configuration(),
        "DynamicPartitioningConfiguration" => dynamic_partitioning_configuration(),
        "EncryptionConfiguration" => encryption_configuration(),
        "ErrorOutputPrefix" => String.t() | Atom.t(),
        "FileExtension" => String.t() | Atom.t(),
        "Prefix" => String.t() | Atom.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupDescription" => s3_destination_description(),
        "S3BackupMode" => list(any())
      }
      
  """
  @type extended_s3_destination_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_delivery_stream_output() :: %{
        "HasMoreTags" => boolean(),
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_delivery_stream_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      snowflake_destination_update() :: %{
        "AccountUrl" => String.t() | Atom.t(),
        "BufferingHints" => snowflake_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ContentColumnName" => String.t() | Atom.t(),
        "DataLoadingOption" => list(any()),
        "Database" => String.t() | Atom.t(),
        "KeyPassphrase" => String.t() | Atom.t(),
        "MetaDataColumnName" => String.t() | Atom.t(),
        "PrivateKey" => String.t() | Atom.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => snowflake_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupMode" => list(any()),
        "S3Update" => s3_destination_update(),
        "Schema" => String.t() | Atom.t(),
        "SecretsManagerConfiguration" => secrets_manager_configuration(),
        "SnowflakeRoleConfiguration" => snowflake_role_configuration(),
        "Table" => String.t() | Atom.t(),
        "User" => String.t() | Atom.t()
      }
      
  """
  @type snowflake_destination_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      iceberg_destination_update() :: %{
        "AppendOnly" => boolean(),
        "BufferingHints" => buffering_hints(),
        "CatalogConfiguration" => catalog_configuration(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "DestinationTableConfigurationList" => list(destination_table_configuration()),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupMode" => list(any()),
        "S3Configuration" => s3_destination_configuration(),
        "SchemaEvolutionConfiguration" => schema_evolution_configuration(),
        "TableCreationConfiguration" => table_creation_configuration()
      }
      
  """
  @type iceberg_destination_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_delivery_stream_encryption_input() :: %{
        optional("DeliveryStreamEncryptionConfigurationInput") => delivery_stream_encryption_configuration_input(),
        required("DeliveryStreamName") => String.t() | Atom.t()
      }
      
  """
  @type start_delivery_stream_encryption_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      amazon_open_search_serverless_destination_description() :: %{
        "BufferingHints" => amazon_open_search_serverless_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CollectionEndpoint" => String.t() | Atom.t(),
        "IndexName" => String.t() | Atom.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => amazon_open_search_serverless_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupMode" => list(any()),
        "S3DestinationDescription" => s3_destination_description(),
        "VpcConfigurationDescription" => vpc_configuration_description()
      }
      
  """
  @type amazon_open_search_serverless_destination_description() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:
      
      s3_destination_update() :: %{
        "BucketARN" => String.t() | Atom.t(),
        "BufferingHints" => buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CompressionFormat" => list(any()),
        "EncryptionConfiguration" => encryption_configuration(),
        "ErrorOutputPrefix" => String.t() | Atom.t(),
        "Prefix" => String.t() | Atom.t(),
        "RoleARN" => String.t() | Atom.t()
      }
      
  """
  @type s3_destination_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_delivery_stream_input() :: %{
        optional("AmazonOpenSearchServerlessDestinationConfiguration") => amazon_open_search_serverless_destination_configuration(),
        optional("AmazonopensearchserviceDestinationConfiguration") => amazonopensearchservice_destination_configuration(),
        optional("DatabaseSourceConfiguration") => database_source_configuration(),
        optional("DeliveryStreamEncryptionConfigurationInput") => delivery_stream_encryption_configuration_input(),
        optional("DeliveryStreamType") => list(any()),
        optional("DirectPutSourceConfiguration") => direct_put_source_configuration(),
        optional("ElasticsearchDestinationConfiguration") => elasticsearch_destination_configuration(),
        optional("ExtendedS3DestinationConfiguration") => extended_s3_destination_configuration(),
        optional("HttpEndpointDestinationConfiguration") => http_endpoint_destination_configuration(),
        optional("IcebergDestinationConfiguration") => iceberg_destination_configuration(),
        optional("KinesisStreamSourceConfiguration") => kinesis_stream_source_configuration(),
        optional("MSKSourceConfiguration") => m_s_k_source_configuration(),
        optional("RedshiftDestinationConfiguration") => redshift_destination_configuration(),
        optional("S3DestinationConfiguration") => s3_destination_configuration(),
        optional("SnowflakeDestinationConfiguration") => snowflake_destination_configuration(),
        optional("SplunkDestinationConfiguration") => splunk_destination_configuration(),
        optional("Tags") => list(tag()),
        required("DeliveryStreamName") => String.t() | Atom.t()
      }
      
  """
  @type create_delivery_stream_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_configuration_description() :: %{
        "RoleARN" => String.t() | Atom.t(),
        "SecurityGroupIds" => list(String.t() | Atom.t()),
        "SubnetIds" => list(String.t() | Atom.t()),
        "VpcId" => String.t() | Atom.t()
      }
      
  """
  @type vpc_configuration_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      source_description() :: %{
        "DatabaseSourceDescription" => database_source_description(),
        "DirectPutSourceDescription" => direct_put_source_description(),
        "KinesisStreamSourceDescription" => kinesis_stream_source_description(),
        "MSKSourceDescription" => m_s_k_source_description()
      }
      
  """
  @type source_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      http_endpoint_configuration() :: %{
        "AccessKey" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "Url" => String.t() | Atom.t()
      }
      
  """
  @type http_endpoint_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      http_endpoint_destination_description() :: %{
        "BufferingHints" => http_endpoint_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "EndpointConfiguration" => http_endpoint_description(),
        "ProcessingConfiguration" => processing_configuration(),
        "RequestConfiguration" => http_endpoint_request_configuration(),
        "RetryOptions" => http_endpoint_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupMode" => list(any()),
        "S3DestinationDescription" => s3_destination_description(),
        "SecretsManagerConfiguration" => secrets_manager_configuration()
      }
      
  """
  @type http_endpoint_destination_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_record_batch_input() :: %{
        required("DeliveryStreamName") => String.t() | Atom.t(),
        required("Records") => list(record())
      }
      
  """
  @type put_record_batch_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      m_s_k_source_description() :: %{
        "AuthenticationConfiguration" => authentication_configuration(),
        "DeliveryStartTimestamp" => non_neg_integer(),
        "MSKClusterARN" => String.t() | Atom.t(),
        "ReadFromTimestamp" => non_neg_integer(),
        "TopicName" => String.t() | Atom.t()
      }
      
  """
  @type m_s_k_source_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      processor() :: %{
        "Parameters" => list(processor_parameter()),
        "Type" => list(any())
      }
      
  """
  @type processor() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      m_s_k_source_configuration() :: %{
        "AuthenticationConfiguration" => authentication_configuration(),
        "MSKClusterARN" => String.t() | Atom.t(),
        "ReadFromTimestamp" => non_neg_integer(),
        "TopicName" => String.t() | Atom.t()
      }
      
  """
  @type m_s_k_source_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      snowflake_role_configuration() :: %{
        "Enabled" => boolean(),
        "SnowflakeRole" => String.t() | Atom.t()
      }
      
  """
  @type snowflake_role_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_delivery_streams_output() :: %{
        "DeliveryStreamNames" => list(String.t() | Atom.t()),
        "HasMoreDeliveryStreams" => boolean()
      }
      
  """
  @type list_delivery_streams_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delivery_stream_encryption_configuration_input() :: %{
        "KeyARN" => String.t() | Atom.t(),
        "KeyType" => list(any())
      }
      
  """
  @type delivery_stream_encryption_configuration_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      elasticsearch_destination_configuration() :: %{
        "BufferingHints" => elasticsearch_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterEndpoint" => String.t() | Atom.t(),
        "DocumentIdOptions" => document_id_options(),
        "DomainARN" => String.t() | Atom.t(),
        "IndexName" => String.t() | Atom.t(),
        "IndexRotationPeriod" => list(any()),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => elasticsearch_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupMode" => list(any()),
        "S3Configuration" => s3_destination_configuration(),
        "TypeName" => String.t() | Atom.t(),
        "VpcConfiguration" => vpc_configuration()
      }
      
  """
  @type elasticsearch_destination_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      splunk_buffering_hints() :: %{
        "IntervalInSeconds" => integer(),
        "SizeInMBs" => integer()
      }
      
  """
  @type splunk_buffering_hints() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      http_endpoint_destination_configuration() :: %{
        "BufferingHints" => http_endpoint_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "EndpointConfiguration" => http_endpoint_configuration(),
        "ProcessingConfiguration" => processing_configuration(),
        "RequestConfiguration" => http_endpoint_request_configuration(),
        "RetryOptions" => http_endpoint_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupMode" => list(any()),
        "S3Configuration" => s3_destination_configuration(),
        "SecretsManagerConfiguration" => secrets_manager_configuration()
      }
      
  """
  @type http_endpoint_destination_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      destination_description() :: %{
        "AmazonOpenSearchServerlessDestinationDescription" => amazon_open_search_serverless_destination_description(),
        "AmazonopensearchserviceDestinationDescription" => amazonopensearchservice_destination_description(),
        "DestinationId" => String.t() | Atom.t(),
        "ElasticsearchDestinationDescription" => elasticsearch_destination_description(),
        "ExtendedS3DestinationDescription" => extended_s3_destination_description(),
        "HttpEndpointDestinationDescription" => http_endpoint_destination_description(),
        "IcebergDestinationDescription" => iceberg_destination_description(),
        "RedshiftDestinationDescription" => redshift_destination_description(),
        "S3DestinationDescription" => s3_destination_description(),
        "SnowflakeDestinationDescription" => snowflake_destination_description(),
        "SplunkDestinationDescription" => splunk_destination_description()
      }
      
  """
  @type destination_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      snowflake_destination_description() :: %{
        "AccountUrl" => String.t() | Atom.t(),
        "BufferingHints" => snowflake_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ContentColumnName" => String.t() | Atom.t(),
        "DataLoadingOption" => list(any()),
        "Database" => String.t() | Atom.t(),
        "MetaDataColumnName" => String.t() | Atom.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => snowflake_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupMode" => list(any()),
        "S3DestinationDescription" => s3_destination_description(),
        "Schema" => String.t() | Atom.t(),
        "SecretsManagerConfiguration" => secrets_manager_configuration(),
        "SnowflakeRoleConfiguration" => snowflake_role_configuration(),
        "SnowflakeVpcConfiguration" => snowflake_vpc_configuration(),
        "Table" => String.t() | Atom.t(),
        "User" => String.t() | Atom.t()
      }
      
  """
  @type snowflake_destination_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      open_x_json_ser_de() :: %{
        "CaseInsensitive" => boolean(),
        "ColumnToJsonKeyMappings" => map(),
        "ConvertDotsInJsonKeysToUnderscores" => boolean()
      }
      
  """
  @type open_x_json_ser_de() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      snowflake_buffering_hints() :: %{
        "IntervalInSeconds" => integer(),
        "SizeInMBs" => integer()
      }
      
  """
  @type snowflake_buffering_hints() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_destination_input() :: %{
        optional("AmazonOpenSearchServerlessDestinationUpdate") => amazon_open_search_serverless_destination_update(),
        optional("AmazonopensearchserviceDestinationUpdate") => amazonopensearchservice_destination_update(),
        optional("ElasticsearchDestinationUpdate") => elasticsearch_destination_update(),
        optional("ExtendedS3DestinationUpdate") => extended_s3_destination_update(),
        optional("HttpEndpointDestinationUpdate") => http_endpoint_destination_update(),
        optional("IcebergDestinationUpdate") => iceberg_destination_update(),
        optional("RedshiftDestinationUpdate") => redshift_destination_update(),
        optional("S3DestinationUpdate") => s3_destination_update(),
        optional("SnowflakeDestinationUpdate") => snowflake_destination_update(),
        optional("SplunkDestinationUpdate") => splunk_destination_update(),
        required("CurrentDeliveryStreamVersionId") => String.t() | Atom.t(),
        required("DeliveryStreamName") => String.t() | Atom.t(),
        required("DestinationId") => String.t() | Atom.t()
      }
      
  """
  @type update_destination_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      elasticsearch_retry_options() :: %{
        "DurationInSeconds" => integer()
      }
      
  """
  @type elasticsearch_retry_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      direct_put_source_description() :: %{
        "ThroughputHintInMBs" => integer()
      }
      
  """
  @type direct_put_source_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      database_column_list() :: %{
        "Exclude" => list(String.t() | Atom.t()),
        "Include" => list(String.t() | Atom.t())
      }
      
  """
  @type database_column_list() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_source_exception() :: %{
        "code" => String.t() | Atom.t(),
        "message" => String.t() | Atom.t()
      }
      
  """
  @type invalid_source_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      copy_command() :: %{
        "CopyOptions" => String.t() | Atom.t(),
        "DataTableColumns" => String.t() | Atom.t(),
        "DataTableName" => String.t() | Atom.t()
      }
      
  """
  @type copy_command() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      iceberg_destination_configuration() :: %{
        "AppendOnly" => boolean(),
        "BufferingHints" => buffering_hints(),
        "CatalogConfiguration" => catalog_configuration(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "DestinationTableConfigurationList" => list(destination_table_configuration()),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupMode" => list(any()),
        "S3Configuration" => s3_destination_configuration(),
        "SchemaEvolutionConfiguration" => schema_evolution_configuration(),
        "TableCreationConfiguration" => table_creation_configuration()
      }
      
  """
  @type iceberg_destination_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      amazonopensearchservice_retry_options() :: %{
        "DurationInSeconds" => integer()
      }
      
  """
  @type amazonopensearchservice_retry_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      destination_table_configuration() :: %{
        "DestinationDatabaseName" => String.t() | Atom.t(),
        "DestinationTableName" => String.t() | Atom.t(),
        "PartitionSpec" => partition_spec(),
        "S3ErrorOutputPrefix" => String.t() | Atom.t(),
        "UniqueKeys" => list(String.t() | Atom.t())
      }
      
  """
  @type destination_table_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      document_id_options() :: %{
        "DefaultDocumentIdFormat" => list(any())
      }
      
  """
  @type document_id_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type tag() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_delivery_stream_input() :: %{
        optional("ExclusiveStartTagKey") => String.t() | Atom.t(),
        optional("Limit") => integer(),
        required("DeliveryStreamName") => String.t() | Atom.t()
      }
      
  """
  @type list_tags_for_delivery_stream_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      database_snapshot_info() :: %{
        "FailureDescription" => failure_description(),
        "Id" => String.t() | Atom.t(),
        "RequestTimestamp" => non_neg_integer(),
        "RequestedBy" => list(any()),
        "Status" => list(any()),
        "Table" => String.t() | Atom.t()
      }
      
  """
  @type database_snapshot_info() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      snowflake_destination_configuration() :: %{
        "AccountUrl" => String.t() | Atom.t(),
        "BufferingHints" => snowflake_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ContentColumnName" => String.t() | Atom.t(),
        "DataLoadingOption" => list(any()),
        "Database" => String.t() | Atom.t(),
        "KeyPassphrase" => String.t() | Atom.t(),
        "MetaDataColumnName" => String.t() | Atom.t(),
        "PrivateKey" => String.t() | Atom.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => snowflake_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupMode" => list(any()),
        "S3Configuration" => s3_destination_configuration(),
        "Schema" => String.t() | Atom.t(),
        "SecretsManagerConfiguration" => secrets_manager_configuration(),
        "SnowflakeRoleConfiguration" => snowflake_role_configuration(),
        "SnowflakeVpcConfiguration" => snowflake_vpc_configuration(),
        "Table" => String.t() | Atom.t(),
        "User" => String.t() | Atom.t()
      }
      
  """
  @type snowflake_destination_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      amazon_open_search_serverless_retry_options() :: %{
        "DurationInSeconds" => integer()
      }
      
  """
  @type amazon_open_search_serverless_retry_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      s3_destination_configuration() :: %{
        "BucketARN" => String.t() | Atom.t(),
        "BufferingHints" => buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CompressionFormat" => list(any()),
        "EncryptionConfiguration" => encryption_configuration(),
        "ErrorOutputPrefix" => String.t() | Atom.t(),
        "Prefix" => String.t() | Atom.t(),
        "RoleARN" => String.t() | Atom.t()
      }
      
  """
  @type s3_destination_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      splunk_destination_update() :: %{
        "BufferingHints" => splunk_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "HECAcknowledgmentTimeoutInSeconds" => integer(),
        "HECEndpoint" => String.t() | Atom.t(),
        "HECEndpointType" => list(any()),
        "HECToken" => String.t() | Atom.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => splunk_retry_options(),
        "S3BackupMode" => list(any()),
        "S3Update" => s3_destination_update(),
        "SecretsManagerConfiguration" => secrets_manager_configuration()
      }
      
  """
  @type splunk_destination_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_delivery_stream_input() :: %{
        optional("AllowForceDelete") => boolean(),
        required("DeliveryStreamName") => String.t() | Atom.t()
      }
      
  """
  @type delete_delivery_stream_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delivery_stream_encryption_configuration() :: %{
        "FailureDescription" => failure_description(),
        "KeyARN" => String.t() | Atom.t(),
        "KeyType" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type delivery_stream_encryption_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      amazon_open_search_serverless_destination_configuration() :: %{
        "BufferingHints" => amazon_open_search_serverless_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CollectionEndpoint" => String.t() | Atom.t(),
        "IndexName" => String.t() | Atom.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => amazon_open_search_serverless_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupMode" => list(any()),
        "S3Configuration" => s3_destination_configuration(),
        "VpcConfiguration" => vpc_configuration()
      }
      
  """
  @type amazon_open_search_serverless_destination_configuration() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:
      
      tag_delivery_stream_input() :: %{
        required("DeliveryStreamName") => String.t() | Atom.t(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_delivery_stream_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_record_batch_response_entry() :: %{
        "ErrorCode" => String.t() | Atom.t(),
        "ErrorMessage" => String.t() | Atom.t(),
        "RecordId" => String.t() | Atom.t()
      }
      
  """
  @type put_record_batch_response_entry() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      processing_configuration() :: %{
        "Enabled" => boolean(),
        "Processors" => list(processor())
      }
      
  """
  @type processing_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag_delivery_stream_output() :: %{}
      
  """
  @type tag_delivery_stream_output() :: %{}

  @typedoc """

  ## Example:
      
      redshift_destination_update() :: %{
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterJDBCURL" => String.t() | Atom.t(),
        "CopyCommand" => copy_command(),
        "Password" => String.t() | Atom.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => redshift_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupMode" => list(any()),
        "S3BackupUpdate" => s3_destination_update(),
        "S3Update" => s3_destination_update(),
        "SecretsManagerConfiguration" => secrets_manager_configuration(),
        "Username" => String.t() | Atom.t()
      }
      
  """
  @type redshift_destination_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      buffering_hints() :: %{
        "IntervalInSeconds" => integer(),
        "SizeInMBs" => integer()
      }
      
  """
  @type buffering_hints() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      hive_json_ser_de() :: %{
        "TimestampFormats" => list(String.t() | Atom.t())
      }
      
  """
  @type hive_json_ser_de() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_record_batch_output() :: %{
        "Encrypted" => boolean(),
        "FailedPutCount" => integer(),
        "RequestResponses" => list(put_record_batch_response_entry())
      }
      
  """
  @type put_record_batch_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_stream_source_description() :: %{
        "DeliveryStartTimestamp" => non_neg_integer(),
        "KinesisStreamARN" => String.t() | Atom.t(),
        "RoleARN" => String.t() | Atom.t()
      }
      
  """
  @type kinesis_stream_source_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      database_source_description() :: %{
        "Columns" => database_column_list(),
        "DatabaseSourceAuthenticationConfiguration" => database_source_authentication_configuration(),
        "DatabaseSourceVPCConfiguration" => database_source_vpc_configuration(),
        "Databases" => database_list(),
        "Endpoint" => String.t() | Atom.t(),
        "Port" => integer(),
        "SSLMode" => list(any()),
        "SnapshotInfo" => list(database_snapshot_info()),
        "SnapshotWatermarkTable" => String.t() | Atom.t(),
        "SurrogateKeys" => list(String.t() | Atom.t()),
        "Tables" => database_table_list(),
        "Type" => list(any())
      }
      
  """
  @type database_source_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      http_endpoint_retry_options() :: %{
        "DurationInSeconds" => integer()
      }
      
  """
  @type http_endpoint_retry_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      elasticsearch_destination_update() :: %{
        "BufferingHints" => elasticsearch_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterEndpoint" => String.t() | Atom.t(),
        "DocumentIdOptions" => document_id_options(),
        "DomainARN" => String.t() | Atom.t(),
        "IndexName" => String.t() | Atom.t(),
        "IndexRotationPeriod" => list(any()),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => elasticsearch_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3Update" => s3_destination_update(),
        "TypeName" => String.t() | Atom.t()
      }
      
  """
  @type elasticsearch_destination_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      splunk_destination_configuration() :: %{
        "BufferingHints" => splunk_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "HECAcknowledgmentTimeoutInSeconds" => integer(),
        "HECEndpoint" => String.t() | Atom.t(),
        "HECEndpointType" => list(any()),
        "HECToken" => String.t() | Atom.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => splunk_retry_options(),
        "S3BackupMode" => list(any()),
        "S3Configuration" => s3_destination_configuration(),
        "SecretsManagerConfiguration" => secrets_manager_configuration()
      }
      
  """
  @type splunk_destination_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      amazonopensearchservice_destination_configuration() :: %{
        "BufferingHints" => amazonopensearchservice_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterEndpoint" => String.t() | Atom.t(),
        "DocumentIdOptions" => document_id_options(),
        "DomainARN" => String.t() | Atom.t(),
        "IndexName" => String.t() | Atom.t(),
        "IndexRotationPeriod" => list(any()),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => amazonopensearchservice_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupMode" => list(any()),
        "S3Configuration" => s3_destination_configuration(),
        "TypeName" => String.t() | Atom.t(),
        "VpcConfiguration" => vpc_configuration()
      }
      
  """
  @type amazonopensearchservice_destination_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      partition_spec() :: %{
        "Identity" => list(partition_field())
      }
      
  """
  @type partition_spec() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      stop_delivery_stream_encryption_input() :: %{
        required("DeliveryStreamName") => String.t() | Atom.t()
      }
      
  """
  @type stop_delivery_stream_encryption_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_delivery_stream_input() :: %{
        optional("ExclusiveStartDestinationId") => String.t() | Atom.t(),
        optional("Limit") => integer(),
        required("DeliveryStreamName") => String.t() | Atom.t()
      }
      
  """
  @type describe_delivery_stream_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      elasticsearch_destination_description() :: %{
        "BufferingHints" => elasticsearch_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterEndpoint" => String.t() | Atom.t(),
        "DocumentIdOptions" => document_id_options(),
        "DomainARN" => String.t() | Atom.t(),
        "IndexName" => String.t() | Atom.t(),
        "IndexRotationPeriod" => list(any()),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => elasticsearch_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupMode" => list(any()),
        "S3DestinationDescription" => s3_destination_description(),
        "TypeName" => String.t() | Atom.t(),
        "VpcConfigurationDescription" => vpc_configuration_description()
      }
      
  """
  @type elasticsearch_destination_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      extended_s3_destination_configuration() :: %{
        "BucketARN" => String.t() | Atom.t(),
        "BufferingHints" => buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CompressionFormat" => list(any()),
        "CustomTimeZone" => String.t() | Atom.t(),
        "DataFormatConversionConfiguration" => data_format_conversion_configuration(),
        "DynamicPartitioningConfiguration" => dynamic_partitioning_configuration(),
        "EncryptionConfiguration" => encryption_configuration(),
        "ErrorOutputPrefix" => String.t() | Atom.t(),
        "FileExtension" => String.t() | Atom.t(),
        "Prefix" => String.t() | Atom.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupConfiguration" => s3_destination_configuration(),
        "S3BackupMode" => list(any())
      }
      
  """
  @type extended_s3_destination_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_record_output() :: %{
        "Encrypted" => boolean(),
        "RecordId" => String.t() | Atom.t()
      }
      
  """
  @type put_record_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      iceberg_destination_description() :: %{
        "AppendOnly" => boolean(),
        "BufferingHints" => buffering_hints(),
        "CatalogConfiguration" => catalog_configuration(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "DestinationTableConfigurationList" => list(destination_table_configuration()),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupMode" => list(any()),
        "S3DestinationDescription" => s3_destination_description(),
        "SchemaEvolutionConfiguration" => schema_evolution_configuration(),
        "TableCreationConfiguration" => table_creation_configuration()
      }
      
  """
  @type iceberg_destination_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delivery_stream_description() :: %{
        "CreateTimestamp" => non_neg_integer(),
        "DeliveryStreamARN" => String.t() | Atom.t(),
        "DeliveryStreamEncryptionConfiguration" => delivery_stream_encryption_configuration(),
        "DeliveryStreamName" => String.t() | Atom.t(),
        "DeliveryStreamStatus" => list(any()),
        "DeliveryStreamType" => list(any()),
        "Destinations" => list(destination_description()),
        "FailureDescription" => failure_description(),
        "HasMoreDestinations" => boolean(),
        "LastUpdateTimestamp" => non_neg_integer(),
        "Source" => source_description(),
        "VersionId" => String.t() | Atom.t()
      }
      
  """
  @type delivery_stream_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      amazonopensearchservice_destination_description() :: %{
        "BufferingHints" => amazonopensearchservice_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterEndpoint" => String.t() | Atom.t(),
        "DocumentIdOptions" => document_id_options(),
        "DomainARN" => String.t() | Atom.t(),
        "IndexName" => String.t() | Atom.t(),
        "IndexRotationPeriod" => list(any()),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => amazonopensearchservice_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupMode" => list(any()),
        "S3DestinationDescription" => s3_destination_description(),
        "TypeName" => String.t() | Atom.t(),
        "VpcConfigurationDescription" => vpc_configuration_description()
      }
      
  """
  @type amazonopensearchservice_destination_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      output_format_configuration() :: %{
        "Serializer" => serializer()
      }
      
  """
  @type output_format_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      snowflake_retry_options() :: %{
        "DurationInSeconds" => integer()
      }
      
  """
  @type snowflake_retry_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      http_endpoint_description() :: %{
        "Name" => String.t() | Atom.t(),
        "Url" => String.t() | Atom.t()
      }
      
  """
  @type http_endpoint_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logging_options() :: %{
        "Enabled" => boolean(),
        "LogGroupName" => String.t() | Atom.t(),
        "LogStreamName" => String.t() | Atom.t()
      }
      
  """
  @type cloud_watch_logging_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      kms_encryption_config() :: %{
        "AWSKMSKeyARN" => String.t() | Atom.t()
      }
      
  """
  @type kms_encryption_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_delivery_stream_output() :: %{}
      
  """
  @type delete_delivery_stream_output() :: %{}

  @typedoc """

  ## Example:
      
      orc_ser_de() :: %{
        "BlockSizeBytes" => integer(),
        "BloomFilterColumns" => list(String.t() | Atom.t()),
        "BloomFilterFalsePositiveProbability" => float(),
        "Compression" => list(any()),
        "DictionaryKeyThreshold" => float(),
        "EnablePadding" => boolean(),
        "FormatVersion" => list(any()),
        "PaddingTolerance" => float(),
        "RowIndexStride" => integer(),
        "StripeSizeBytes" => integer()
      }
      
  """
  @type orc_ser_de() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      secrets_manager_configuration() :: %{
        "Enabled" => boolean(),
        "RoleARN" => String.t() | Atom.t(),
        "SecretARN" => String.t() | Atom.t()
      }
      
  """
  @type secrets_manager_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      stop_delivery_stream_encryption_output() :: %{}
      
  """
  @type stop_delivery_stream_encryption_output() :: %{}

  @typedoc """

  ## Example:
      
      amazonopensearchservice_destination_update() :: %{
        "BufferingHints" => amazonopensearchservice_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterEndpoint" => String.t() | Atom.t(),
        "DocumentIdOptions" => document_id_options(),
        "DomainARN" => String.t() | Atom.t(),
        "IndexName" => String.t() | Atom.t(),
        "IndexRotationPeriod" => list(any()),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => amazonopensearchservice_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3Update" => s3_destination_update(),
        "TypeName" => String.t() | Atom.t()
      }
      
  """
  @type amazonopensearchservice_destination_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      catalog_configuration() :: %{
        "CatalogARN" => String.t() | Atom.t(),
        "WarehouseLocation" => String.t() | Atom.t()
      }
      
  """
  @type catalog_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      retry_options() :: %{
        "DurationInSeconds" => integer()
      }
      
  """
  @type retry_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_argument_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type invalid_argument_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      parquet_ser_de() :: %{
        "BlockSizeBytes" => integer(),
        "Compression" => list(any()),
        "EnableDictionaryCompression" => boolean(),
        "MaxPaddingBytes" => integer(),
        "PageSizeBytes" => integer(),
        "WriterVersion" => list(any())
      }
      
  """
  @type parquet_ser_de() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      http_endpoint_common_attribute() :: %{
        "AttributeName" => String.t() | Atom.t(),
        "AttributeValue" => String.t() | Atom.t()
      }
      
  """
  @type http_endpoint_common_attribute() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_destination_description() :: %{
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterJDBCURL" => String.t() | Atom.t(),
        "CopyCommand" => copy_command(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => redshift_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupDescription" => s3_destination_description(),
        "S3BackupMode" => list(any()),
        "S3DestinationDescription" => s3_destination_description(),
        "SecretsManagerConfiguration" => secrets_manager_configuration(),
        "Username" => String.t() | Atom.t()
      }
      
  """
  @type redshift_destination_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_destination_configuration() :: %{
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "ClusterJDBCURL" => String.t() | Atom.t(),
        "CopyCommand" => copy_command(),
        "Password" => String.t() | Atom.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => redshift_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupConfiguration" => s3_destination_configuration(),
        "S3BackupMode" => list(any()),
        "S3Configuration" => s3_destination_configuration(),
        "SecretsManagerConfiguration" => secrets_manager_configuration(),
        "Username" => String.t() | Atom.t()
      }
      
  """
  @type redshift_destination_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      input_format_configuration() :: %{
        "Deserializer" => deserializer()
      }
      
  """
  @type input_format_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_delivery_streams_input() :: %{
        optional("DeliveryStreamType") => list(any()),
        optional("ExclusiveStartDeliveryStreamName") => String.t() | Atom.t(),
        optional("Limit") => integer()
      }
      
  """
  @type list_delivery_streams_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      schema_configuration() :: %{
        "CatalogId" => String.t() | Atom.t(),
        "DatabaseName" => String.t() | Atom.t(),
        "Region" => String.t() | Atom.t(),
        "RoleARN" => String.t() | Atom.t(),
        "TableName" => String.t() | Atom.t(),
        "VersionId" => String.t() | Atom.t()
      }
      
  """
  @type schema_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      data_format_conversion_configuration() :: %{
        "Enabled" => boolean(),
        "InputFormatConfiguration" => input_format_configuration(),
        "OutputFormatConfiguration" => output_format_configuration(),
        "SchemaConfiguration" => schema_configuration()
      }
      
  """
  @type data_format_conversion_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      database_list() :: %{
        "Exclude" => list(String.t() | Atom.t()),
        "Include" => list(String.t() | Atom.t())
      }
      
  """
  @type database_list() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      untag_delivery_stream_input() :: %{
        required("DeliveryStreamName") => String.t() | Atom.t(),
        required("TagKeys") => list(String.t() | Atom.t())
      }
      
  """
  @type untag_delivery_stream_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t() | Atom.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      amazon_open_search_serverless_destination_update() :: %{
        "BufferingHints" => amazon_open_search_serverless_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CollectionEndpoint" => String.t() | Atom.t(),
        "IndexName" => String.t() | Atom.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => amazon_open_search_serverless_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3Update" => s3_destination_update()
      }
      
  """
  @type amazon_open_search_serverless_destination_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      s3_destination_description() :: %{
        "BucketARN" => String.t() | Atom.t(),
        "BufferingHints" => buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CompressionFormat" => list(any()),
        "EncryptionConfiguration" => encryption_configuration(),
        "ErrorOutputPrefix" => String.t() | Atom.t(),
        "Prefix" => String.t() | Atom.t(),
        "RoleARN" => String.t() | Atom.t()
      }
      
  """
  @type s3_destination_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      untag_delivery_stream_output() :: %{}
      
  """
  @type untag_delivery_stream_output() :: %{}

  @typedoc """

  ## Example:
      
      create_delivery_stream_output() :: %{
        "DeliveryStreamARN" => String.t() | Atom.t()
      }
      
  """
  @type create_delivery_stream_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      kinesis_stream_source_configuration() :: %{
        "KinesisStreamARN" => String.t() | Atom.t(),
        "RoleARN" => String.t() | Atom.t()
      }
      
  """
  @type kinesis_stream_source_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      authentication_configuration() :: %{
        "Connectivity" => list(any()),
        "RoleARN" => String.t() | Atom.t()
      }
      
  """
  @type authentication_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      elasticsearch_buffering_hints() :: %{
        "IntervalInSeconds" => integer(),
        "SizeInMBs" => integer()
      }
      
  """
  @type elasticsearch_buffering_hints() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      extended_s3_destination_update() :: %{
        "BucketARN" => String.t() | Atom.t(),
        "BufferingHints" => buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "CompressionFormat" => list(any()),
        "CustomTimeZone" => String.t() | Atom.t(),
        "DataFormatConversionConfiguration" => data_format_conversion_configuration(),
        "DynamicPartitioningConfiguration" => dynamic_partitioning_configuration(),
        "EncryptionConfiguration" => encryption_configuration(),
        "ErrorOutputPrefix" => String.t() | Atom.t(),
        "FileExtension" => String.t() | Atom.t(),
        "Prefix" => String.t() | Atom.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupMode" => list(any()),
        "S3BackupUpdate" => s3_destination_update()
      }
      
  """
  @type extended_s3_destination_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_record_input() :: %{
        required("DeliveryStreamName") => String.t() | Atom.t(),
        required("Record") => record()
      }
      
  """
  @type put_record_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      database_table_list() :: %{
        "Exclude" => list(String.t() | Atom.t()),
        "Include" => list(String.t() | Atom.t())
      }
      
  """
  @type database_table_list() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      deserializer() :: %{
        "HiveJsonSerDe" => hive_json_ser_de(),
        "OpenXJsonSerDe" => open_x_json_ser_de()
      }
      
  """
  @type deserializer() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      amazonopensearchservice_buffering_hints() :: %{
        "IntervalInSeconds" => integer(),
        "SizeInMBs" => integer()
      }
      
  """
  @type amazonopensearchservice_buffering_hints() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      partition_field() :: %{
        "SourceName" => String.t() | Atom.t()
      }
      
  """
  @type partition_field() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      splunk_retry_options() :: %{
        "DurationInSeconds" => integer()
      }
      
  """
  @type splunk_retry_options() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      dynamic_partitioning_configuration() :: %{
        "Enabled" => boolean(),
        "RetryOptions" => retry_options()
      }
      
  """
  @type dynamic_partitioning_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      processor_parameter() :: %{
        "ParameterName" => list(any()),
        "ParameterValue" => String.t() | Atom.t()
      }
      
  """
  @type processor_parameter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      schema_evolution_configuration() :: %{
        "Enabled" => boolean()
      }
      
  """
  @type schema_evolution_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_delivery_stream_output() :: %{
        "DeliveryStreamDescription" => delivery_stream_description()
      }
      
  """
  @type describe_delivery_stream_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      splunk_destination_description() :: %{
        "BufferingHints" => splunk_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "HECAcknowledgmentTimeoutInSeconds" => integer(),
        "HECEndpoint" => String.t() | Atom.t(),
        "HECEndpointType" => list(any()),
        "HECToken" => String.t() | Atom.t(),
        "ProcessingConfiguration" => processing_configuration(),
        "RetryOptions" => splunk_retry_options(),
        "S3BackupMode" => list(any()),
        "S3DestinationDescription" => s3_destination_description(),
        "SecretsManagerConfiguration" => secrets_manager_configuration()
      }
      
  """
  @type splunk_destination_description() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      serializer() :: %{
        "OrcSerDe" => orc_ser_de(),
        "ParquetSerDe" => parquet_ser_de()
      }
      
  """
  @type serializer() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      http_endpoint_destination_update() :: %{
        "BufferingHints" => http_endpoint_buffering_hints(),
        "CloudWatchLoggingOptions" => cloud_watch_logging_options(),
        "EndpointConfiguration" => http_endpoint_configuration(),
        "ProcessingConfiguration" => processing_configuration(),
        "RequestConfiguration" => http_endpoint_request_configuration(),
        "RetryOptions" => http_endpoint_retry_options(),
        "RoleARN" => String.t() | Atom.t(),
        "S3BackupMode" => list(any()),
        "S3Update" => s3_destination_update(),
        "SecretsManagerConfiguration" => secrets_manager_configuration()
      }
      
  """
  @type http_endpoint_destination_update() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      table_creation_configuration() :: %{
        "Enabled" => boolean()
      }
      
  """
  @type table_creation_configuration() :: %{String.t() | Atom.t() => any()}

  @type create_delivery_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_in_use_exception()
          | invalid_kms_resource_exception()

  @type delete_delivery_stream_errors() ::
          resource_not_found_exception() | resource_in_use_exception()

  @type describe_delivery_stream_errors() :: resource_not_found_exception()

  @type list_tags_for_delivery_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()

  @type put_record_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | invalid_source_exception()
          | invalid_kms_resource_exception()

  @type put_record_batch_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | invalid_source_exception()
          | invalid_kms_resource_exception()

  @type start_delivery_stream_encryption_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | invalid_kms_resource_exception()

  @type stop_delivery_stream_encryption_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type tag_delivery_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type untag_delivery_stream_errors() ::
          limit_exceeded_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type update_destination_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  def metadata do
    %{
      api_version: "2015-08-04",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "firehose",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Firehose",
      signature_version: "v4",
      signing_name: "firehose",
      target_prefix: "Firehose_20150804"
    }
  end

  @doc """
  Creates a Firehose stream.

  By default, you can create up to 5,000 Firehose streams per Amazon Web Services
  Region.

  This is an asynchronous operation that immediately returns. The initial status
  of the
  Firehose stream is `CREATING`. After the Firehose stream is created, its status
  is `ACTIVE` and it now accepts data. If the Firehose stream creation fails, the
  status transitions to `CREATING_FAILED`. Attempts to send data to a delivery
  stream that is not in the `ACTIVE` state cause an exception. To check the state
  of a Firehose stream, use `DescribeDeliveryStream`.

  If the status of a Firehose stream is `CREATING_FAILED`, this status
  doesn't change, and you can't invoke `CreateDeliveryStream` again on it.
  However, you can invoke the `DeleteDeliveryStream` operation to delete
  it.

  A Firehose stream can be configured to receive records directly
  from providers using `PutRecord` or `PutRecordBatch`, or it
  can be configured to use an existing Kinesis stream as its source. To specify a
  Kinesis
  data stream as input, set the `DeliveryStreamType` parameter to
  `KinesisStreamAsSource`, and provide the Kinesis stream Amazon Resource Name
  (ARN) and role ARN in the `KinesisStreamSourceConfiguration`
  parameter.

  To create a Firehose stream with server-side encryption (SSE) enabled, include
  `DeliveryStreamEncryptionConfigurationInput` in your request. This is
  optional. You can also invoke `StartDeliveryStreamEncryption` to turn on
  SSE for an existing Firehose stream that doesn't have SSE enabled.

  A Firehose stream is configured with a single destination, such as Amazon Simple
  Storage Service (Amazon S3), Amazon Redshift, Amazon OpenSearch Service, Amazon
  OpenSearch
  Serverless, Splunk, and any custom HTTP endpoint or HTTP endpoints owned by or
  supported by
  third-party service providers, including Datadog, Dynatrace, LogicMonitor,
  MongoDB, New
  Relic, and Sumo Logic. You must specify only one of the following destination
  configuration
  parameters: `ExtendedS3DestinationConfiguration`,
  `S3DestinationConfiguration`,
  `ElasticsearchDestinationConfiguration`,
  `RedshiftDestinationConfiguration`, or
  `SplunkDestinationConfiguration`.

  When you specify `S3DestinationConfiguration`, you can also provide the
  following optional values: BufferingHints, `EncryptionConfiguration`, and
  `CompressionFormat`. By default, if no `BufferingHints` value is
  provided, Firehose buffers data up to 5 MB or for 5 minutes, whichever
  condition is satisfied first. `BufferingHints` is a hint, so there are some
  cases where the service cannot adhere to these conditions strictly. For example,
  record
  boundaries might be such that the size is a little over or under the configured
  buffering
  size. By default, no encryption is performed. We strongly recommend that you
  enable
  encryption to ensure secure data storage in Amazon S3.

  A few notes about Amazon Redshift as a destination:

    *
  An Amazon Redshift destination requires an S3 bucket as intermediate location.
  Firehose first delivers data to Amazon S3 and then uses
  `COPY` syntax to load data into an Amazon Redshift table. This is
  specified in the `RedshiftDestinationConfiguration.S3Configuration`
  parameter.

    *
  The compression formats `SNAPPY` or `ZIP` cannot be
  specified in `RedshiftDestinationConfiguration.S3Configuration` because
  the Amazon Redshift `COPY` operation that reads from the S3 bucket doesn't
  support these compression formats.

    *
  We strongly recommend that you use the user name and password you provide
  exclusively with Firehose, and that the permissions for the account are
  restricted for Amazon Redshift `INSERT` permissions.

  Firehose assumes the IAM role that is configured as part of the
  destination. The role should allow the Firehose principal to assume the role,
  and the role should have permissions that allow the service to deliver the data.
  For more
  information, see [Grant Firehose Access to an Amazon S3 Destination](https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3)
  in the *Amazon Firehose Developer Guide*.
  """
  @spec create_delivery_stream(map(), create_delivery_stream_input(), list()) ::
          {:ok, create_delivery_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_delivery_stream_errors()}
  def create_delivery_stream(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDeliveryStream", input, options)
  end

  @doc """
  Deletes a Firehose stream and its data.

  You can delete a Firehose stream only if it is in one of the following states:
  `ACTIVE`, `DELETING`, `CREATING_FAILED`, or
  `DELETING_FAILED`. You can't delete a Firehose stream that is in the
  `CREATING` state. To check the state of a Firehose stream, use
  `DescribeDeliveryStream`.

  DeleteDeliveryStream is an asynchronous API. When an API request to
  DeleteDeliveryStream succeeds, the Firehose stream is marked for deletion, and
  it goes into the
  `DELETING` state.While the Firehose stream is in the `DELETING` state, the
  service might
  continue to accept records, but it doesn't make any guarantees with respect to
  delivering
  the data. Therefore, as a best practice, first stop any applications that are
  sending
  records before you delete a Firehose stream.

  Removal of a Firehose stream that is in the `DELETING` state is a low priority
  operation for the service. A stream may remain in the
  `DELETING` state for several minutes. Therefore, as a best practice,
  applications should not wait for streams in the `DELETING` state
  to be removed.
  """
  @spec delete_delivery_stream(map(), delete_delivery_stream_input(), list()) ::
          {:ok, delete_delivery_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_delivery_stream_errors()}
  def delete_delivery_stream(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDeliveryStream", input, options)
  end

  @doc """
  Describes the specified Firehose stream and its status.

  For example, after your
  Firehose stream is created, call `DescribeDeliveryStream` to see whether the
  Firehose stream is `ACTIVE` and therefore ready for data to be sent to it.

  If the status of a Firehose stream is `CREATING_FAILED`, this status
  doesn't change, and you can't invoke `CreateDeliveryStream` again on it.
  However, you can invoke the `DeleteDeliveryStream` operation to delete it.
  If the status is `DELETING_FAILED`, you can force deletion by invoking
  `DeleteDeliveryStream` again but with
  `DeleteDeliveryStreamInput$AllowForceDelete` set to true.
  """
  @spec describe_delivery_stream(map(), describe_delivery_stream_input(), list()) ::
          {:ok, describe_delivery_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_delivery_stream_errors()}
  def describe_delivery_stream(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDeliveryStream", input, options)
  end

  @doc """
  Lists your Firehose streams in alphabetical order of their names.

  The number of Firehose streams might be too large to return using a single call
  to
  `ListDeliveryStreams`. You can limit the number of Firehose streams returned,
  using the `Limit` parameter. To determine whether there are more delivery
  streams to list, check the value of `HasMoreDeliveryStreams` in the output. If
  there are more Firehose streams to list, you can request them by calling this
  operation
  again and setting the `ExclusiveStartDeliveryStreamName` parameter to the name
  of the last Firehose stream returned in the last call.
  """
  @spec list_delivery_streams(map(), list_delivery_streams_input(), list()) ::
          {:ok, list_delivery_streams_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_delivery_streams(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDeliveryStreams", input, options)
  end

  @doc """
  Lists the tags for the specified Firehose stream.

  This operation has a limit of five
  transactions per second per account.
  """
  @spec list_tags_for_delivery_stream(map(), list_tags_for_delivery_stream_input(), list()) ::
          {:ok, list_tags_for_delivery_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_delivery_stream_errors()}
  def list_tags_for_delivery_stream(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForDeliveryStream", input, options)
  end

  @doc """
  Writes a single data record into an Firehose stream.

  To
  write multiple data records into a Firehose stream, use `PutRecordBatch`.
  Applications using these operations are referred to as producers.

  By default, each Firehose stream can take in up to 2,000 transactions per
  second,
  5,000 records per second, or 5 MB per second. If you use `PutRecord` and
  `PutRecordBatch`, the limits are an aggregate across these two
  operations for each Firehose stream. For more information about limits and how
  to request
  an increase, see [Amazon Firehose Limits](https://docs.aws.amazon.com/firehose/latest/dev/limits.html).

  Firehose accumulates and publishes a particular metric for a customer account in
  one minute intervals. It is possible that the bursts of incoming bytes/records
  ingested to a Firehose stream last only for a few seconds. Due to this, the
  actual spikes in the traffic might not be fully visible in the customer's 1
  minute CloudWatch metrics.

  You must specify the name of the Firehose stream and the data record when using
  `PutRecord`. The data record consists of a data blob that can be up to 1,000
  KiB in size, and any kind of data. For example, it can be a segment from a log
  file,
  geographic location data, website clickstream data, and so on.

  For multi record de-aggregation, you can not put more than 500 records even if
  the
  data blob length is less than 1000 KiB. If you include more than 500 records,
  the request
  succeeds but the record de-aggregation doesn't work as expected and
  transformation lambda
  is invoked with the complete base64 encoded data blob instead of de-aggregated
  base64
  decoded records.

  Firehose buffers records before delivering them to the destination. To
  disambiguate the data blobs at the destination, a common solution is to use
  delimiters in
  the data, such as a newline (`\n`) or some other character unique within the
  data. This allows the consumer application to parse individual data items when
  reading the
  data from the destination.

  The `PutRecord` operation returns a `RecordId`, which is a
  unique string assigned to each record. Producer applications can use this ID for
  purposes
  such as auditability and investigation.

  If the `PutRecord` operation throws a
  `ServiceUnavailableException`, the API is automatically reinvoked (retried) 3
  times. If the exception persists, it is possible that the throughput limits have
  been
  exceeded for the Firehose stream.

  Re-invoking the Put API operations (for example, PutRecord and PutRecordBatch)
  can
  result in data duplicates. For larger data assets, allow for a longer time out
  before
  retrying Put API operations.

  Data records sent to Firehose are stored for 24 hours from the time they
  are added to a Firehose stream as it tries to send the records to the
  destination. If the
  destination is unreachable for more than 24 hours, the data is no longer
  available.

  Don't concatenate two or more base64 strings to form the data fields of your
  records.
  Instead, concatenate the raw data, then perform base64 encoding.
  """
  @spec put_record(map(), put_record_input(), list()) ::
          {:ok, put_record_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_record_errors()}
  def put_record(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRecord", input, options)
  end

  @doc """
  Writes multiple data records into a Firehose stream in a single call, which can
  achieve higher throughput per producer than when writing single records.

  To write single
  data records into a Firehose stream, use `PutRecord`. Applications using
  these operations are referred to as producers.

  Firehose accumulates and publishes a particular metric for a customer account in
  one minute intervals. It is possible that the bursts of incoming bytes/records
  ingested to a Firehose stream last only for a few seconds. Due to this, the
  actual spikes in the traffic might not be fully visible in the customer's 1
  minute CloudWatch metrics.

  For information about service quota, see [Amazon Firehose Quota](https://docs.aws.amazon.com/firehose/latest/dev/limits.html).

  Each `PutRecordBatch` request supports up to 500 records. Each record
  in the request can be as large as 1,000 KB (before base64 encoding), up to a
  limit of 4 MB
  for the entire request. These limits cannot be changed.

  You must specify the name of the Firehose stream and the data record when using
  `PutRecord`. The data record consists of a data blob that can be up to 1,000
  KB in size, and any kind of data. For example, it could be a segment from a log
  file,
  geographic location data, website clickstream data, and so on.

  For multi record de-aggregation, you can not put more than 500 records even if
  the
  data blob length is less than 1000 KiB. If you include more than 500 records,
  the request
  succeeds but the record de-aggregation doesn't work as expected and
  transformation lambda
  is invoked with the complete base64 encoded data blob instead of de-aggregated
  base64
  decoded records.

  Firehose buffers records before delivering them to the destination. To
  disambiguate the data blobs at the destination, a common solution is to use
  delimiters in
  the data, such as a newline (`\n`) or some other character unique within the
  data. This allows the consumer application to parse individual data items when
  reading the
  data from the destination.

  The `PutRecordBatch` response includes a count of failed records,
  `FailedPutCount`, and an array of responses, `RequestResponses`.
  Even if the `PutRecordBatch` call succeeds, the value of
  `FailedPutCount` may be greater than 0, indicating that there are records for
  which the operation didn't succeed. Each entry in the `RequestResponses` array
  provides additional information about the processed record. It directly
  correlates with a
  record in the request array using the same ordering, from the top to the bottom.
  The
  response array always includes the same number of records as the request array.
  `RequestResponses` includes both successfully and unsuccessfully processed
  records. Firehose tries to process all records in each `PutRecordBatch` request.
  A single record failure does not stop the processing
  of subsequent records.

  A successfully processed record includes a `RecordId` value, which is
  unique for the record. An unsuccessfully processed record includes `ErrorCode`
  and `ErrorMessage` values. `ErrorCode` reflects the type of error,
  and is one of the following values: `ServiceUnavailableException` or
  `InternalFailure`. `ErrorMessage` provides more detailed
  information about the error.

  If there is an internal server error or a timeout, the write might have
  completed or
  it might have failed. If `FailedPutCount` is greater than 0, retry the request,
  resending only those records that might have failed processing. This minimizes
  the possible
  duplicate records and also reduces the total bytes sent (and corresponding
  charges). We
  recommend that you handle any duplicates at the destination.

  If `PutRecordBatch` throws `ServiceUnavailableException`,
  the API is automatically reinvoked (retried) 3 times. If the exception persists,
  it is
  possible that the throughput limits have been exceeded for the Firehose stream.

  Re-invoking the Put API operations (for example, PutRecord and PutRecordBatch)
  can
  result in data duplicates. For larger data assets, allow for a longer time out
  before
  retrying Put API operations.

  Data records sent to Firehose are stored for 24 hours from the time they
  are added to a Firehose stream as it attempts to send the records to the
  destination. If
  the destination is unreachable for more than 24 hours, the data is no longer
  available.

  Don't concatenate two or more base64 strings to form the data fields of your
  records.
  Instead, concatenate the raw data, then perform base64 encoding.
  """
  @spec put_record_batch(map(), put_record_batch_input(), list()) ::
          {:ok, put_record_batch_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_record_batch_errors()}
  def put_record_batch(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRecordBatch", input, options)
  end

  @doc """
  Enables server-side encryption (SSE) for the Firehose stream.

  This operation is asynchronous. It returns immediately. When you invoke it,
  Firehose first sets the encryption status of the stream to `ENABLING`, and then
  to `ENABLED`. The encryption status of a Firehose stream is the
  `Status` property in `DeliveryStreamEncryptionConfiguration`.
  If the operation fails, the encryption status changes to `ENABLING_FAILED`. You
  can continue to read and write data to your Firehose stream while the encryption
  status is
  `ENABLING`, but the data is not encrypted. It can take up to 5 seconds after
  the encryption status changes to `ENABLED` before all records written to the
  Firehose stream are encrypted. To find out whether a record or a batch of
  records was
  encrypted, check the response elements `PutRecordOutput$Encrypted` and
  `PutRecordBatchOutput$Encrypted`, respectively.

  To check the encryption status of a Firehose stream, use
  `DescribeDeliveryStream`.

  Even if encryption is currently enabled for a Firehose stream, you can still
  invoke this
  operation on it to change the ARN of the CMK or both its type and ARN. If you
  invoke this
  method to change the CMK, and the old CMK is of type `CUSTOMER_MANAGED_CMK`,
  Firehose schedules the grant it had on the old CMK for retirement. If the new
  CMK is of type `CUSTOMER_MANAGED_CMK`, Firehose creates a grant
  that enables it to use the new CMK to encrypt and decrypt data and to manage the
  grant.

  For the KMS grant creation to be successful, the Firehose API operations
  `StartDeliveryStreamEncryption` and `CreateDeliveryStream` should
  not be called with session credentials that are more than 6 hours old.

  If a Firehose stream already has encryption enabled and then you invoke this
  operation
  to change the ARN of the CMK or both its type and ARN and you get
  `ENABLING_FAILED`, this only means that the attempt to change the CMK failed.
  In this case, encryption remains enabled with the old CMK.

  If the encryption status of your Firehose stream is `ENABLING_FAILED`, you
  can invoke this operation again with a valid CMK. The CMK must be enabled and
  the key
  policy mustn't explicitly deny the permission for Firehose to invoke KMS
  encrypt and decrypt operations.

  You can enable SSE for a Firehose stream only if it's a Firehose stream that
  uses
  `DirectPut` as its source.

  The `StartDeliveryStreamEncryption` and
  `StopDeliveryStreamEncryption` operations have a combined limit of 25 calls
  per Firehose stream per 24 hours. For example, you reach the limit if you call
  `StartDeliveryStreamEncryption` 13 times and
  `StopDeliveryStreamEncryption` 12 times for the same Firehose stream in a
  24-hour period.
  """
  @spec start_delivery_stream_encryption(map(), start_delivery_stream_encryption_input(), list()) ::
          {:ok, start_delivery_stream_encryption_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_delivery_stream_encryption_errors()}
  def start_delivery_stream_encryption(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartDeliveryStreamEncryption", input, options)
  end

  @doc """
  Disables server-side encryption (SSE) for the Firehose stream.

  This operation is asynchronous. It returns immediately. When you invoke it,
  Firehose first sets the encryption status of the stream to `DISABLING`, and then
  to `DISABLED`. You can continue to read and write data to your stream while its
  status is `DISABLING`. It can take up to 5 seconds after the encryption status
  changes to `DISABLED` before all records written to the Firehose stream are no
  longer subject to encryption. To find out whether a record or a batch of records
  was
  encrypted, check the response elements `PutRecordOutput$Encrypted` and
  `PutRecordBatchOutput$Encrypted`, respectively.

  To check the encryption state of a Firehose stream, use
  `DescribeDeliveryStream`.

  If SSE is enabled using a customer managed CMK and then you invoke
  `StopDeliveryStreamEncryption`, Firehose schedules the related
  KMS grant for retirement and then retires it after it ensures that it is
  finished
  delivering records to the destination.

  The `StartDeliveryStreamEncryption` and
  `StopDeliveryStreamEncryption` operations have a combined limit of 25 calls
  per Firehose stream per 24 hours. For example, you reach the limit if you call
  `StartDeliveryStreamEncryption` 13 times and
  `StopDeliveryStreamEncryption` 12 times for the same Firehose stream in a
  24-hour period.
  """
  @spec stop_delivery_stream_encryption(map(), stop_delivery_stream_encryption_input(), list()) ::
          {:ok, stop_delivery_stream_encryption_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_delivery_stream_encryption_errors()}
  def stop_delivery_stream_encryption(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopDeliveryStreamEncryption", input, options)
  end

  @doc """
  Adds or updates tags for the specified Firehose stream.

  A tag is a key-value pair
  that you can define and assign to Amazon Web Services resources. If you specify
  a tag that
  already exists, the tag value is replaced with the value that you specify in the
  request.
  Tags are metadata. For example, you can add friendly names and descriptions or
  other types
  of information that can help you distinguish the Firehose stream. For more
  information
  about tags, see [Using Cost Allocation Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *Amazon Web Services Billing and Cost Management User
  Guide*.

  Each Firehose stream can have up to 50 tags.

  This operation has a limit of five transactions per second per account.
  """
  @spec tag_delivery_stream(map(), tag_delivery_stream_input(), list()) ::
          {:ok, tag_delivery_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_delivery_stream_errors()}
  def tag_delivery_stream(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagDeliveryStream", input, options)
  end

  @doc """
  Removes tags from the specified Firehose stream.

  Removed tags are deleted, and you
  can't recover them after this operation successfully completes.

  If you specify a tag that doesn't exist, the operation ignores it.

  This operation has a limit of five transactions per second per account.
  """
  @spec untag_delivery_stream(map(), untag_delivery_stream_input(), list()) ::
          {:ok, untag_delivery_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_delivery_stream_errors()}
  def untag_delivery_stream(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagDeliveryStream", input, options)
  end

  @doc """
  Updates the specified destination of the specified Firehose stream.

  Use this operation to change the destination type (for example, to replace the
  Amazon
  S3 destination with Amazon Redshift) or change the parameters associated with a
  destination
  (for example, to change the bucket name of the Amazon S3 destination). The
  update might not
  occur immediately. The target Firehose stream remains active while the
  configurations are
  updated, so data writes to the Firehose stream can continue during this process.
  The
  updated configurations are usually effective within a few minutes.

  Switching between Amazon OpenSearch Service and other services is not supported.
  For
  an Amazon OpenSearch Service destination, you can only update to another Amazon
  OpenSearch
  Service destination.

  If the destination type is the same, Firehose merges the configuration
  parameters specified with the destination configuration that already exists on
  the delivery
  stream. If any of the parameters are not specified in the call, the existing
  values are
  retained. For example, in the Amazon S3 destination, if
  `EncryptionConfiguration` is not specified, then the existing
  `EncryptionConfiguration` is maintained on the destination.

  If the destination type is not the same, for example, changing the destination
  from
  Amazon S3 to Amazon Redshift, Firehose does not merge any parameters. In this
  case, all parameters must be specified.

  Firehose uses `CurrentDeliveryStreamVersionId` to avoid race
  conditions and conflicting merges. This is a required field, and the service
  updates the
  configuration only if the existing configuration has a version ID that matches.
  After the
  update is applied successfully, the version ID is updated, and can be retrieved
  using `DescribeDeliveryStream`. Use the new version ID to set
  `CurrentDeliveryStreamVersionId` in the next call.
  """
  @spec update_destination(map(), update_destination_input(), list()) ::
          {:ok, update_destination_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_destination_errors()}
  def update_destination(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDestination", input, options)
  end
end
