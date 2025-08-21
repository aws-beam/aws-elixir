# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisAnalyticsV2 do
  @moduledoc """

  Amazon Managed Service for Apache Flink was previously known as Amazon Kinesis
  Data Analytics for Apache Flink.

  Amazon Managed Service for Apache Flink is a fully managed service that you can
  use to process and analyze streaming data using Java, Python, SQL, or Scala. The
  service
  enables you to quickly author and run Java, SQL, or Scala code against streaming
  sources to perform time
  series analytics, feed real-time dashboards, and create real-time metrics.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      monitoring_configuration_description() :: %{
        "ConfigurationType" => list(any()),
        "LogLevel" => list(any()),
        "MetricsLevel" => list(any())
      }
      
  """
  @type monitoring_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input_parallelism_update() :: %{
        "CountUpdate" => integer()
      }
      
  """
  @type input_parallelism_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_application_vpc_configuration_response() :: %{
        "ApplicationARN" => String.t() | atom(),
        "ApplicationVersionId" => float(),
        "OperationId" => String.t() | atom(),
        "VpcConfigurationDescription" => vpc_configuration_description()
      }
      
  """
  @type add_application_vpc_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_maintenance_configuration_update() :: %{
        "ApplicationMaintenanceWindowStartTimeUpdate" => String.t() | atom()
      }
      
  """
  @type application_maintenance_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input_update() :: %{
        "InputId" => String.t() | atom(),
        "InputParallelismUpdate" => input_parallelism_update(),
        "InputProcessingConfigurationUpdate" => input_processing_configuration_update(),
        "InputSchemaUpdate" => input_schema_update(),
        "KinesisFirehoseInputUpdate" => kinesis_firehose_input_update(),
        "KinesisStreamsInputUpdate" => kinesis_streams_input_update(),
        "NamePrefixUpdate" => String.t() | atom()
      }
      
  """
  @type input_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      zeppelin_monitoring_configuration() :: %{
        "LogLevel" => list(any())
      }
      
  """
  @type zeppelin_monitoring_configuration() :: %{(String.t() | atom()) => any()}

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
      
      application_detail() :: %{
        "ApplicationARN" => String.t() | atom(),
        "ApplicationConfigurationDescription" => application_configuration_description(),
        "ApplicationDescription" => String.t() | atom(),
        "ApplicationMaintenanceConfigurationDescription" => application_maintenance_configuration_description(),
        "ApplicationMode" => list(any()),
        "ApplicationName" => String.t() | atom(),
        "ApplicationStatus" => list(any()),
        "ApplicationVersionCreateTimestamp" => non_neg_integer(),
        "ApplicationVersionId" => float(),
        "ApplicationVersionRolledBackFrom" => float(),
        "ApplicationVersionRolledBackTo" => float(),
        "ApplicationVersionUpdatedFrom" => float(),
        "CloudWatchLoggingOptionDescriptions" => list(cloud_watch_logging_option_description()),
        "ConditionalToken" => String.t() | atom(),
        "CreateTimestamp" => non_neg_integer(),
        "LastUpdateTimestamp" => non_neg_integer(),
        "RuntimeEnvironment" => list(any()),
        "ServiceExecutionRole" => String.t() | atom()
      }
      
  """
  @type application_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_snapshot_configuration() :: %{
        "SnapshotsEnabled" => boolean()
      }
      
  """
  @type application_snapshot_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unsupported_operation_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type unsupported_operation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      glue_data_catalog_configuration_description() :: %{
        "DatabaseARN" => String.t() | atom()
      }
      
  """
  @type glue_data_catalog_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      parallelism_configuration_update() :: %{
        "AutoScalingEnabledUpdate" => boolean(),
        "ConfigurationTypeUpdate" => list(any()),
        "ParallelismPerKPUUpdate" => integer(),
        "ParallelismUpdate" => integer()
      }
      
  """
  @type parallelism_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deploy_as_application_configuration_update() :: %{
        "S3ContentLocationUpdate" => s3_content_base_location_update()
      }
      
  """
  @type deploy_as_application_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      glue_data_catalog_configuration() :: %{
        "DatabaseARN" => String.t() | atom()
      }
      
  """
  @type glue_data_catalog_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      vpc_configuration() :: %{
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom())
      }
      
  """
  @type vpc_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      custom_artifact_configuration() :: %{
        "ArtifactType" => list(any()),
        "MavenReference" => maven_reference(),
        "S3ContentLocation" => s3_content_location()
      }
      
  """
  @type custom_artifact_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      add_application_input_processing_configuration_response() :: %{
        "ApplicationARN" => String.t() | atom(),
        "ApplicationVersionId" => float(),
        "InputId" => String.t() | atom(),
        "InputProcessingConfigurationDescription" => input_processing_configuration_description()
      }
      
  """
  @type add_application_input_processing_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      property_group() :: %{
        "PropertyGroupId" => String.t() | atom(),
        "PropertyMap" => map()
      }
      
  """
  @type property_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      flink_run_configuration() :: %{
        "AllowNonRestoredState" => boolean()
      }
      
  """
  @type flink_run_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      catalog_configuration_description() :: %{
        "GlueDataCatalogConfigurationDescription" => glue_data_catalog_configuration_description()
      }
      
  """
  @type catalog_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logging_option_description() :: %{
        "CloudWatchLoggingOptionId" => String.t() | atom(),
        "LogStreamARN" => String.t() | atom(),
        "RoleARN" => String.t() | atom()
      }
      
  """
  @type cloud_watch_logging_option_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_application_cloud_watch_logging_option_response() :: %{
        "ApplicationARN" => String.t() | atom(),
        "ApplicationVersionId" => float(),
        "CloudWatchLoggingOptionDescriptions" => list(cloud_watch_logging_option_description()),
        "OperationId" => String.t() | atom()
      }
      
  """
  @type add_application_cloud_watch_logging_option_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input_schema_update() :: %{
        "RecordColumnUpdates" => list(record_column()),
        "RecordEncodingUpdate" => String.t() | atom(),
        "RecordFormatUpdate" => record_format()
      }
      
  """
  @type input_schema_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      discover_input_schema_response() :: %{
        "InputSchema" => source_schema(),
        "ParsedInputRecords" => list(list(String.t() | atom())()),
        "ProcessedInputRecords" => list(String.t() | atom()),
        "RawInputRecords" => list(String.t() | atom())
      }
      
  """
  @type discover_input_schema_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sql_application_configuration_update() :: %{
        "InputUpdates" => list(input_update()),
        "OutputUpdates" => list(output_update()),
        "ReferenceDataSourceUpdates" => list(reference_data_source_update())
      }
      
  """
  @type sql_application_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_encryption_configuration_update() :: %{
        "KeyIdUpdate" => String.t() | atom(),
        "KeyTypeUpdate" => list(any())
      }
      
  """
  @type application_encryption_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_application_vpc_configuration_request() :: %{
        optional("ConditionalToken") => String.t() | atom(),
        optional("CurrentApplicationVersionId") => float(),
        required("ApplicationName") => String.t() | atom(),
        required("VpcConfiguration") => vpc_configuration()
      }
      
  """
  @type add_application_vpc_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_provisioned_throughput_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_provisioned_throughput_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      custom_artifact_configuration_description() :: %{
        "ArtifactType" => list(any()),
        "MavenReferenceDescription" => maven_reference(),
        "S3ContentLocationDescription" => s3_content_location()
      }
      
  """
  @type custom_artifact_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_application_operation_request() :: %{
        required("ApplicationName") => String.t() | atom(),
        required("OperationId") => String.t() | atom()
      }
      
  """
  @type describe_application_operation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_application_version_response() :: %{
        "ApplicationVersionDetail" => application_detail()
      }
      
  """
  @type describe_application_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_reference_data_source_response() :: %{
        "ApplicationARN" => String.t() | atom(),
        "ApplicationVersionId" => float()
      }
      
  """
  @type delete_application_reference_data_source_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input_starting_position_configuration() :: %{
        "InputStartingPosition" => list(any())
      }
      
  """
  @type input_starting_position_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      vpc_configuration_description() :: %{
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom()),
        "VpcConfigurationId" => String.t() | atom(),
        "VpcId" => String.t() | atom()
      }
      
  """
  @type vpc_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      zeppelin_monitoring_configuration_description() :: %{
        "LogLevel" => list(any())
      }
      
  """
  @type zeppelin_monitoring_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_application_input_response() :: %{
        "ApplicationARN" => String.t() | atom(),
        "ApplicationVersionId" => float(),
        "InputDescriptions" => list(input_description())
      }
      
  """
  @type add_application_input_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      zeppelin_application_configuration_description() :: %{
        "CatalogConfigurationDescription" => catalog_configuration_description(),
        "CustomArtifactsConfigurationDescription" => list(custom_artifact_configuration_description()),
        "DeployAsApplicationConfigurationDescription" => deploy_as_application_configuration_description(),
        "MonitoringConfigurationDescription" => zeppelin_monitoring_configuration_description()
      }
      
  """
  @type zeppelin_application_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_input_description() :: %{
        "ResourceARN" => String.t() | atom(),
        "RoleARN" => String.t() | atom()
      }
      
  """
  @type kinesis_firehose_input_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      vpc_configuration_update() :: %{
        "SecurityGroupIdUpdates" => list(String.t() | atom()),
        "SubnetIdUpdates" => list(String.t() | atom()),
        "VpcConfigurationId" => String.t() | atom()
      }
      
  """
  @type vpc_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_output_description() :: %{
        "ResourceARN" => String.t() | atom(),
        "RoleARN" => String.t() | atom()
      }
      
  """
  @type kinesis_firehose_output_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_input_update() :: %{
        "ResourceARNUpdate" => String.t() | atom()
      }
      
  """
  @type kinesis_firehose_input_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logging_option_update() :: %{
        "CloudWatchLoggingOptionId" => String.t() | atom(),
        "LogStreamARNUpdate" => String.t() | atom()
      }
      
  """
  @type cloud_watch_logging_option_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      code_content_description() :: %{
        "CodeMD5" => String.t() | atom(),
        "CodeSize" => float(),
        "S3ApplicationCodeLocationDescription" => s3_application_code_location_description(),
        "TextContent" => String.t() | atom()
      }
      
  """
  @type code_content_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_system_rollback_configuration() :: %{
        "RollbackEnabled" => boolean()
      }
      
  """
  @type application_system_rollback_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_application_operation_response() :: %{
        "ApplicationOperationInfoDetails" => application_operation_info_details()
      }
      
  """
  @type describe_application_operation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_version_summary() :: %{
        "ApplicationStatus" => list(any()),
        "ApplicationVersionId" => float()
      }
      
  """
  @type application_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kinesis_streams_input_update() :: %{
        "ResourceARNUpdate" => String.t() | atom()
      }
      
  """
  @type kinesis_streams_input_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_application_snapshots_response() :: %{
        "NextToken" => String.t() | atom(),
        "SnapshotSummaries" => list(snapshot_details())
      }
      
  """
  @type list_application_snapshots_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input_processing_configuration() :: %{
        "InputLambdaProcessor" => input_lambda_processor()
      }
      
  """
  @type input_processing_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_input_processing_configuration_request() :: %{
        required("ApplicationName") => String.t() | atom(),
        required("CurrentApplicationVersionId") => float(),
        required("InputId") => String.t() | atom()
      }
      
  """
  @type delete_application_input_processing_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      output_description() :: %{
        "DestinationSchema" => destination_schema(),
        "KinesisFirehoseOutputDescription" => kinesis_firehose_output_description(),
        "KinesisStreamsOutputDescription" => kinesis_streams_output_description(),
        "LambdaOutputDescription" => lambda_output_description(),
        "Name" => String.t() | atom(),
        "OutputId" => String.t() | atom()
      }
      
  """
  @type output_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      monitoring_configuration() :: %{
        "ConfigurationType" => list(any()),
        "LogLevel" => list(any()),
        "MetricsLevel" => list(any())
      }
      
  """
  @type monitoring_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      error_info() :: %{
        "ErrorString" => String.t() | atom()
      }
      
  """
  @type error_info() :: %{(String.t() | atom()) => any()}

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
      
      delete_application_cloud_watch_logging_option_request() :: %{
        optional("ConditionalToken") => String.t() | atom(),
        optional("CurrentApplicationVersionId") => float(),
        required("ApplicationName") => String.t() | atom(),
        required("CloudWatchLoggingOptionId") => String.t() | atom()
      }
      
  """
  @type delete_application_cloud_watch_logging_option_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      kinesis_streams_output() :: %{
        "ResourceARN" => String.t() | atom()
      }
      
  """
  @type kinesis_streams_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_output() :: %{
        "ResourceARN" => String.t() | atom()
      }
      
  """
  @type kinesis_firehose_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unable_to_detect_schema_exception() :: %{
        "Message" => String.t() | atom(),
        "ProcessedInputRecords" => list(String.t() | atom()),
        "RawInputRecords" => list(String.t() | atom())
      }
      
  """
  @type unable_to_detect_schema_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_application_presigned_url_response() :: %{
        "AuthorizedUrl" => String.t() | atom()
      }
      
  """
  @type create_application_presigned_url_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_application_snapshot_response() :: %{
        "SnapshotDetails" => snapshot_details()
      }
      
  """
  @type describe_application_snapshot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_application_snapshot_request() :: %{
        required("ApplicationName") => String.t() | atom(),
        required("SnapshotName") => String.t() | atom()
      }
      
  """
  @type create_application_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reference_data_source() :: %{
        "ReferenceSchema" => source_schema(),
        "S3ReferenceDataSource" => s3_reference_data_source(),
        "TableName" => String.t() | atom()
      }
      
  """
  @type reference_data_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      destination_schema() :: %{
        "RecordFormatType" => list(any())
      }
      
  """
  @type destination_schema() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lambda_output_update() :: %{
        "ResourceARNUpdate" => String.t() | atom()
      }
      
  """
  @type lambda_output_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      discover_input_schema_request() :: %{
        optional("InputProcessingConfiguration") => input_processing_configuration(),
        optional("InputStartingPositionConfiguration") => input_starting_position_configuration(),
        optional("ResourceARN") => String.t() | atom(),
        optional("S3Configuration") => s3_configuration(),
        required("ServiceExecutionRole") => String.t() | atom()
      }
      
  """
  @type discover_input_schema_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input_lambda_processor() :: %{
        "ResourceARN" => String.t() | atom()
      }
      
  """
  @type input_lambda_processor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_code_configuration_description() :: %{
        "CodeContentDescription" => code_content_description(),
        "CodeContentType" => list(any())
      }
      
  """
  @type application_code_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input() :: %{
        "InputParallelism" => input_parallelism(),
        "InputProcessingConfiguration" => input_processing_configuration(),
        "InputSchema" => source_schema(),
        "KinesisFirehoseInput" => kinesis_firehose_input(),
        "KinesisStreamsInput" => kinesis_streams_input(),
        "NamePrefix" => String.t() | atom()
      }
      
  """
  @type input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_restore_configuration() :: %{
        "ApplicationRestoreType" => list(any()),
        "SnapshotName" => String.t() | atom()
      }
      
  """
  @type application_restore_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_snapshot_configuration_description() :: %{
        "SnapshotsEnabled" => boolean()
      }
      
  """
  @type application_snapshot_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_application_presigned_url_request() :: %{
        optional("SessionExpirationDurationInSeconds") => float(),
        required("ApplicationName") => String.t() | atom(),
        required("UrlType") => list(any())
      }
      
  """
  @type create_application_presigned_url_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_reference_data_source() :: %{
        "BucketARN" => String.t() | atom(),
        "FileKey" => String.t() | atom()
      }
      
  """
  @type s3_reference_data_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      flink_application_configuration_update() :: %{
        "CheckpointConfigurationUpdate" => checkpoint_configuration_update(),
        "MonitoringConfigurationUpdate" => monitoring_configuration_update(),
        "ParallelismConfigurationUpdate" => parallelism_configuration_update()
      }
      
  """
  @type flink_application_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      run_configuration() :: %{
        "ApplicationRestoreConfiguration" => application_restore_configuration(),
        "FlinkRunConfiguration" => flink_run_configuration(),
        "SqlRunConfigurations" => list(sql_run_configuration())
      }
      
  """
  @type run_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      environment_properties() :: %{
        "PropertyGroups" => list(property_group())
      }
      
  """
  @type environment_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_application_code_location_description() :: %{
        "BucketARN" => String.t() | atom(),
        "FileKey" => String.t() | atom(),
        "ObjectVersion" => String.t() | atom()
      }
      
  """
  @type s3_application_code_location_description() :: %{(String.t() | atom()) => any()}

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
      
      invalid_request_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      flink_application_configuration() :: %{
        "CheckpointConfiguration" => checkpoint_configuration(),
        "MonitoringConfiguration" => monitoring_configuration(),
        "ParallelismConfiguration" => parallelism_configuration()
      }
      
  """
  @type flink_application_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      run_configuration_update() :: %{
        "ApplicationRestoreConfiguration" => application_restore_configuration(),
        "FlinkRunConfiguration" => flink_run_configuration()
      }
      
  """
  @type run_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_configuration() :: %{
        "ApplicationCodeConfiguration" => application_code_configuration(),
        "ApplicationEncryptionConfiguration" => application_encryption_configuration(),
        "ApplicationSnapshotConfiguration" => application_snapshot_configuration(),
        "ApplicationSystemRollbackConfiguration" => application_system_rollback_configuration(),
        "EnvironmentProperties" => environment_properties(),
        "FlinkApplicationConfiguration" => flink_application_configuration(),
        "SqlApplicationConfiguration" => sql_application_configuration(),
        "VpcConfigurations" => list(vpc_configuration()),
        "ZeppelinApplicationConfiguration" => zeppelin_application_configuration()
      }
      
  """
  @type application_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_application_request() :: %{
        optional("Force") => boolean(),
        required("ApplicationName") => String.t() | atom()
      }
      
  """
  @type stop_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input_lambda_processor_update() :: %{
        "ResourceARNUpdate" => String.t() | atom()
      }
      
  """
  @type input_lambda_processor_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      checkpoint_configuration_update() :: %{
        "CheckpointIntervalUpdate" => float(),
        "CheckpointingEnabledUpdate" => boolean(),
        "ConfigurationTypeUpdate" => list(any()),
        "MinPauseBetweenCheckpointsUpdate" => float()
      }
      
  """
  @type checkpoint_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rollback_application_response() :: %{
        "ApplicationDetail" => application_detail(),
        "OperationId" => String.t() | atom()
      }
      
  """
  @type rollback_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      csv_mapping_parameters() :: %{
        "RecordColumnDelimiter" => String.t() | atom(),
        "RecordRowDelimiter" => String.t() | atom()
      }
      
  """
  @type csv_mapping_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_operation_info_details() :: %{
        "ApplicationVersionChangeDetails" => application_version_change_details(),
        "EndTime" => non_neg_integer(),
        "Operation" => String.t() | atom(),
        "OperationFailureDetails" => operation_failure_details(),
        "OperationStatus" => list(any()),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type application_operation_info_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      output_update() :: %{
        "DestinationSchemaUpdate" => destination_schema(),
        "KinesisFirehoseOutputUpdate" => kinesis_firehose_output_update(),
        "KinesisStreamsOutputUpdate" => kinesis_streams_output_update(),
        "LambdaOutputUpdate" => lambda_output_update(),
        "NameUpdate" => String.t() | atom(),
        "OutputId" => String.t() | atom()
      }
      
  """
  @type output_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_snapshot_request() :: %{
        required("ApplicationName") => String.t() | atom(),
        required("SnapshotCreationTimestamp") => non_neg_integer(),
        required("SnapshotName") => String.t() | atom()
      }
      
  """
  @type delete_application_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      json_mapping_parameters() :: %{
        "RecordRowPath" => String.t() | atom()
      }
      
  """
  @type json_mapping_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_cloud_watch_logging_option_response() :: %{
        "ApplicationARN" => String.t() | atom(),
        "ApplicationVersionId" => float(),
        "CloudWatchLoggingOptionDescriptions" => list(cloud_watch_logging_option_description()),
        "OperationId" => String.t() | atom()
      }
      
  """
  @type delete_application_cloud_watch_logging_option_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      sql_run_configuration() :: %{
        "InputId" => String.t() | atom(),
        "InputStartingPositionConfiguration" => input_starting_position_configuration()
      }
      
  """
  @type sql_run_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_application_request() :: %{
        optional("ApplicationConfiguration") => application_configuration(),
        optional("ApplicationDescription") => String.t() | atom(),
        optional("ApplicationMode") => list(any()),
        optional("CloudWatchLoggingOptions") => list(cloud_watch_logging_option()),
        optional("Tags") => list(tag()),
        required("ApplicationName") => String.t() | atom(),
        required("RuntimeEnvironment") => list(any()),
        required("ServiceExecutionRole") => String.t() | atom()
      }
      
  """
  @type create_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_vpc_configuration_response() :: %{
        "ApplicationARN" => String.t() | atom(),
        "ApplicationVersionId" => float(),
        "OperationId" => String.t() | atom()
      }
      
  """
  @type delete_application_vpc_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_application_reference_data_source_request() :: %{
        required("ApplicationName") => String.t() | atom(),
        required("CurrentApplicationVersionId") => float(),
        required("ReferenceDataSource") => reference_data_source()
      }
      
  """
  @type add_application_reference_data_source_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_reference_data_source_request() :: %{
        required("ApplicationName") => String.t() | atom(),
        required("CurrentApplicationVersionId") => float(),
        required("ReferenceId") => String.t() | atom()
      }
      
  """
  @type delete_application_reference_data_source_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_application_response() :: %{
        "ApplicationDetail" => application_detail()
      }
      
  """
  @type create_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_application_output_response() :: %{
        "ApplicationARN" => String.t() | atom(),
        "ApplicationVersionId" => float(),
        "OutputDescriptions" => list(output_description())
      }
      
  """
  @type add_application_output_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_encryption_configuration_description() :: %{
        "KeyId" => String.t() | atom(),
        "KeyType" => list(any())
      }
      
  """
  @type application_encryption_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kinesis_streams_input_description() :: %{
        "ResourceARN" => String.t() | atom(),
        "RoleARN" => String.t() | atom()
      }
      
  """
  @type kinesis_streams_input_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_application_snapshot_request() :: %{
        required("ApplicationName") => String.t() | atom(),
        required("SnapshotName") => String.t() | atom()
      }
      
  """
  @type describe_application_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_encryption_configuration() :: %{
        "KeyId" => String.t() | atom(),
        "KeyType" => list(any())
      }
      
  """
  @type application_encryption_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_application_operations_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Operation") => String.t() | atom(),
        optional("OperationStatus") => list(any()),
        required("ApplicationName") => String.t() | atom()
      }
      
  """
  @type list_application_operations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_application_input_request() :: %{
        required("ApplicationName") => String.t() | atom(),
        required("CurrentApplicationVersionId") => float(),
        required("Input") => input()
      }
      
  """
  @type add_application_input_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_response() :: %{}
      
  """
  @type delete_application_response() :: %{}

  @typedoc """

  ## Example:
      
      application_system_rollback_configuration_update() :: %{
        "RollbackEnabledUpdate" => boolean()
      }
      
  """
  @type application_system_rollback_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_application_response() :: %{
        "OperationId" => String.t() | atom()
      }
      
  """
  @type start_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_content_base_location_description() :: %{
        "BasePath" => String.t() | atom(),
        "BucketARN" => String.t() | atom()
      }
      
  """
  @type s3_content_base_location_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      zeppelin_application_configuration() :: %{
        "CatalogConfiguration" => catalog_configuration(),
        "CustomArtifactsConfiguration" => list(custom_artifact_configuration()),
        "DeployAsApplicationConfiguration" => deploy_as_application_configuration(),
        "MonitoringConfiguration" => zeppelin_monitoring_configuration()
      }
      
  """
  @type zeppelin_application_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_content_location_update() :: %{
        "BucketARNUpdate" => String.t() | atom(),
        "FileKeyUpdate" => String.t() | atom(),
        "ObjectVersionUpdate" => String.t() | atom()
      }
      
  """
  @type s3_content_location_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_application_operations_response() :: %{
        "ApplicationOperationInfoList" => list(application_operation_info()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_application_operations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_application_version_request() :: %{
        required("ApplicationName") => String.t() | atom(),
        required("ApplicationVersionId") => float()
      }
      
  """
  @type describe_application_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_application_request() :: %{
        optional("ApplicationConfigurationUpdate") => application_configuration_update(),
        optional("CloudWatchLoggingOptionUpdates") => list(cloud_watch_logging_option_update()),
        optional("ConditionalToken") => String.t() | atom(),
        optional("CurrentApplicationVersionId") => float(),
        optional("RunConfigurationUpdate") => run_configuration_update(),
        optional("RuntimeEnvironmentUpdate") => list(any()),
        optional("ServiceExecutionRoleUpdate") => String.t() | atom(),
        required("ApplicationName") => String.t() | atom()
      }
      
  """
  @type update_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_application_response() :: %{
        "ApplicationDetail" => application_detail(),
        "OperationId" => String.t() | atom()
      }
      
  """
  @type update_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      parallelism_configuration() :: %{
        "AutoScalingEnabled" => boolean(),
        "ConfigurationType" => list(any()),
        "Parallelism" => integer(),
        "ParallelismPerKPU" => integer()
      }
      
  """
  @type parallelism_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_application_request() :: %{
        optional("IncludeAdditionalDetails") => boolean(),
        required("ApplicationName") => String.t() | atom()
      }
      
  """
  @type describe_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      zeppelin_monitoring_configuration_update() :: %{
        "LogLevelUpdate" => list(any())
      }
      
  """
  @type zeppelin_monitoring_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_application_request() :: %{
        optional("RunConfiguration") => run_configuration(),
        required("ApplicationName") => String.t() | atom()
      }
      
  """
  @type start_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      code_validation_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type code_validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input_lambda_processor_description() :: %{
        "ResourceARN" => String.t() | atom(),
        "RoleARN" => String.t() | atom()
      }
      
  """
  @type input_lambda_processor_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      checkpoint_configuration() :: %{
        "CheckpointInterval" => float(),
        "CheckpointingEnabled" => boolean(),
        "ConfigurationType" => list(any()),
        "MinPauseBetweenCheckpoints" => float()
      }
      
  """
  @type checkpoint_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input_parallelism() :: %{
        "Count" => integer()
      }
      
  """
  @type input_parallelism() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logging_option() :: %{
        "LogStreamARN" => String.t() | atom()
      }
      
  """
  @type cloud_watch_logging_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_applications_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_applications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      code_content() :: %{
        "S3ContentLocation" => s3_content_location(),
        "TextContent" => String.t() | atom(),
        "ZipFileContent" => binary()
      }
      
  """
  @type code_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reference_data_source_update() :: %{
        "ReferenceId" => String.t() | atom(),
        "ReferenceSchemaUpdate" => source_schema(),
        "S3ReferenceDataSourceUpdate" => s3_reference_data_source_update(),
        "TableNameUpdate" => String.t() | atom()
      }
      
  """
  @type reference_data_source_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_reference_data_source_description() :: %{
        "BucketARN" => String.t() | atom(),
        "FileKey" => String.t() | atom(),
        "ReferenceRoleARN" => String.t() | atom()
      }
      
  """
  @type s3_reference_data_source_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      environment_property_descriptions() :: %{
        "PropertyGroupDescriptions" => list(property_group())
      }
      
  """
  @type environment_property_descriptions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      zeppelin_application_configuration_update() :: %{
        "CatalogConfigurationUpdate" => catalog_configuration_update(),
        "CustomArtifactsConfigurationUpdate" => list(custom_artifact_configuration()),
        "DeployAsApplicationConfigurationUpdate" => deploy_as_application_configuration_update(),
        "MonitoringConfigurationUpdate" => zeppelin_monitoring_configuration_update()
      }
      
  """
  @type zeppelin_application_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kinesis_streams_output_update() :: %{
        "ResourceARNUpdate" => String.t() | atom()
      }
      
  """
  @type kinesis_streams_output_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_application_response() :: %{
        "OperationId" => String.t() | atom()
      }
      
  """
  @type stop_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_code_configuration() :: %{
        "CodeContent" => code_content(),
        "CodeContentType" => list(any())
      }
      
  """
  @type application_code_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      catalog_configuration() :: %{
        "GlueDataCatalogConfiguration" => glue_data_catalog_configuration()
      }
      
  """
  @type catalog_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deploy_as_application_configuration() :: %{
        "S3ContentLocation" => s3_content_base_location()
      }
      
  """
  @type deploy_as_application_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_application_cloud_watch_logging_option_request() :: %{
        optional("ConditionalToken") => String.t() | atom(),
        optional("CurrentApplicationVersionId") => float(),
        required("ApplicationName") => String.t() | atom(),
        required("CloudWatchLoggingOption") => cloud_watch_logging_option()
      }
      
  """
  @type add_application_cloud_watch_logging_option_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_application_maintenance_configuration_response() :: %{
        "ApplicationARN" => String.t() | atom(),
        "ApplicationMaintenanceConfigurationDescription" => application_maintenance_configuration_description()
      }
      
  """
  @type update_application_maintenance_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      invalid_argument_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_argument_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_snapshot_configuration_update() :: %{
        "SnapshotsEnabledUpdate" => boolean()
      }
      
  """
  @type application_snapshot_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_application_configuration_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_application_configuration_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type concurrent_modification_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_snapshot_response() :: %{}
      
  """
  @type delete_application_snapshot_response() :: %{}

  @typedoc """

  ## Example:
      
      operation_failure_details() :: %{
        "ErrorInfo" => error_info(),
        "RollbackOperationId" => String.t() | atom()
      }
      
  """
  @type operation_failure_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_maintenance_configuration_description() :: %{
        "ApplicationMaintenanceWindowEndTime" => String.t() | atom(),
        "ApplicationMaintenanceWindowStartTime" => String.t() | atom()
      }
      
  """
  @type application_maintenance_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      environment_property_updates() :: %{
        "PropertyGroups" => list(property_group())
      }
      
  """
  @type environment_property_updates() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input_processing_configuration_description() :: %{
        "InputLambdaProcessorDescription" => input_lambda_processor_description()
      }
      
  """
  @type input_processing_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_system_rollback_configuration_description() :: %{
        "RollbackEnabled" => boolean()
      }
      
  """
  @type application_system_rollback_configuration_description() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      checkpoint_configuration_description() :: %{
        "CheckpointInterval" => float(),
        "CheckpointingEnabled" => boolean(),
        "ConfigurationType" => list(any()),
        "MinPauseBetweenCheckpoints" => float()
      }
      
  """
  @type checkpoint_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rollback_application_request() :: %{
        required("ApplicationName") => String.t() | atom(),
        required("CurrentApplicationVersionId") => float()
      }
      
  """
  @type rollback_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      source_schema() :: %{
        "RecordColumns" => list(record_column()),
        "RecordEncoding" => String.t() | atom(),
        "RecordFormat" => record_format()
      }
      
  """
  @type source_schema() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      mapping_parameters() :: %{
        "CSVMappingParameters" => csv_mapping_parameters(),
        "JSONMappingParameters" => json_mapping_parameters()
      }
      
  """
  @type mapping_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_input_processing_configuration_response() :: %{
        "ApplicationARN" => String.t() | atom(),
        "ApplicationVersionId" => float()
      }
      
  """
  @type delete_application_input_processing_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      list_application_versions_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ApplicationName") => String.t() | atom()
      }
      
  """
  @type list_application_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input_description() :: %{
        "InAppStreamNames" => list(String.t() | atom()),
        "InputId" => String.t() | atom(),
        "InputParallelism" => input_parallelism(),
        "InputProcessingConfigurationDescription" => input_processing_configuration_description(),
        "InputSchema" => source_schema(),
        "InputStartingPositionConfiguration" => input_starting_position_configuration(),
        "KinesisFirehoseInputDescription" => kinesis_firehose_input_description(),
        "KinesisStreamsInputDescription" => kinesis_streams_input_description(),
        "NamePrefix" => String.t() | atom()
      }
      
  """
  @type input_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_vpc_configuration_request() :: %{
        optional("ConditionalToken") => String.t() | atom(),
        optional("CurrentApplicationVersionId") => float(),
        required("ApplicationName") => String.t() | atom(),
        required("VpcConfigurationId") => String.t() | atom()
      }
      
  """
  @type delete_application_vpc_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lambda_output() :: %{
        "ResourceARN" => String.t() | atom()
      }
      
  """
  @type lambda_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_configuration() :: %{
        "BucketARN" => String.t() | atom(),
        "FileKey" => String.t() | atom()
      }
      
  """
  @type s3_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_version_change_details() :: %{
        "ApplicationVersionUpdatedFrom" => float(),
        "ApplicationVersionUpdatedTo" => float()
      }
      
  """
  @type application_version_change_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_summary() :: %{
        "ApplicationARN" => String.t() | atom(),
        "ApplicationMode" => list(any()),
        "ApplicationName" => String.t() | atom(),
        "ApplicationStatus" => list(any()),
        "ApplicationVersionId" => float(),
        "RuntimeEnvironment" => list(any())
      }
      
  """
  @type application_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kinesis_streams_output_description() :: %{
        "ResourceARN" => String.t() | atom(),
        "RoleARN" => String.t() | atom()
      }
      
  """
  @type kinesis_streams_output_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_operation_info() :: %{
        "EndTime" => non_neg_integer(),
        "Operation" => String.t() | atom(),
        "OperationId" => String.t() | atom(),
        "OperationStatus" => list(any()),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type application_operation_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_configuration_description() :: %{
        "ApplicationCodeConfigurationDescription" => application_code_configuration_description(),
        "ApplicationEncryptionConfigurationDescription" => application_encryption_configuration_description(),
        "ApplicationSnapshotConfigurationDescription" => application_snapshot_configuration_description(),
        "ApplicationSystemRollbackConfigurationDescription" => application_system_rollback_configuration_description(),
        "EnvironmentPropertyDescriptions" => environment_property_descriptions(),
        "FlinkApplicationConfigurationDescription" => flink_application_configuration_description(),
        "RunConfigurationDescription" => run_configuration_description(),
        "SqlApplicationConfigurationDescription" => sql_application_configuration_description(),
        "VpcConfigurationDescriptions" => list(vpc_configuration_description()),
        "ZeppelinApplicationConfigurationDescription" => zeppelin_application_configuration_description()
      }
      
  """
  @type application_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_code_configuration_update() :: %{
        "CodeContentTypeUpdate" => list(any()),
        "CodeContentUpdate" => code_content_update()
      }
      
  """
  @type application_code_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      record_format() :: %{
        "MappingParameters" => mapping_parameters(),
        "RecordFormatType" => list(any())
      }
      
  """
  @type record_format() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      maven_reference() :: %{
        "ArtifactId" => String.t() | atom(),
        "GroupId" => String.t() | atom(),
        "Version" => String.t() | atom()
      }
      
  """
  @type maven_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_applications_response() :: %{
        "ApplicationSummaries" => list(application_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_applications_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lambda_output_description() :: %{
        "ResourceARN" => String.t() | atom(),
        "RoleARN" => String.t() | atom()
      }
      
  """
  @type lambda_output_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      parallelism_configuration_description() :: %{
        "AutoScalingEnabled" => boolean(),
        "ConfigurationType" => list(any()),
        "CurrentParallelism" => integer(),
        "Parallelism" => integer(),
        "ParallelismPerKPU" => integer()
      }
      
  """
  @type parallelism_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_application_versions_response() :: %{
        "ApplicationVersionSummaries" => list(application_version_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_application_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_application_snapshot_response() :: %{}
      
  """
  @type create_application_snapshot_response() :: %{}

  @typedoc """

  ## Example:
      
      glue_data_catalog_configuration_update() :: %{
        "DatabaseARNUpdate" => String.t() | atom()
      }
      
  """
  @type glue_data_catalog_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_output_request() :: %{
        required("ApplicationName") => String.t() | atom(),
        required("CurrentApplicationVersionId") => float(),
        required("OutputId") => String.t() | atom()
      }
      
  """
  @type delete_application_output_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      monitoring_configuration_update() :: %{
        "ConfigurationTypeUpdate" => list(any()),
        "LogLevelUpdate" => list(any()),
        "MetricsLevelUpdate" => list(any())
      }
      
  """
  @type monitoring_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kinesis_streams_input() :: %{
        "ResourceARN" => String.t() | atom()
      }
      
  """
  @type kinesis_streams_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_reference_data_source_update() :: %{
        "BucketARNUpdate" => String.t() | atom(),
        "FileKeyUpdate" => String.t() | atom()
      }
      
  """
  @type s3_reference_data_source_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_input() :: %{
        "ResourceARN" => String.t() | atom()
      }
      
  """
  @type kinesis_firehose_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_application_output_request() :: %{
        required("ApplicationName") => String.t() | atom(),
        required("CurrentApplicationVersionId") => float(),
        required("Output") => output()
      }
      
  """
  @type add_application_output_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sql_application_configuration() :: %{
        "Inputs" => list(input()),
        "Outputs" => list(output()),
        "ReferenceDataSources" => list(reference_data_source())
      }
      
  """
  @type sql_application_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input_processing_configuration_update() :: %{
        "InputLambdaProcessorUpdate" => input_lambda_processor_update()
      }
      
  """
  @type input_processing_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      snapshot_details() :: %{
        "ApplicationEncryptionConfigurationDescription" => application_encryption_configuration_description(),
        "ApplicationVersionId" => float(),
        "RuntimeEnvironment" => list(any()),
        "SnapshotCreationTimestamp" => non_neg_integer(),
        "SnapshotName" => String.t() | atom(),
        "SnapshotStatus" => list(any())
      }
      
  """
  @type snapshot_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_content_location() :: %{
        "BucketARN" => String.t() | atom(),
        "FileKey" => String.t() | atom(),
        "ObjectVersion" => String.t() | atom()
      }
      
  """
  @type s3_content_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      record_column() :: %{
        "Mapping" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "SqlType" => String.t() | atom()
      }
      
  """
  @type record_column() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_application_input_processing_configuration_request() :: %{
        required("ApplicationName") => String.t() | atom(),
        required("CurrentApplicationVersionId") => float(),
        required("InputId") => String.t() | atom(),
        required("InputProcessingConfiguration") => input_processing_configuration()
      }
      
  """
  @type add_application_input_processing_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      deploy_as_application_configuration_description() :: %{
        "S3ContentLocationDescription" => s3_content_base_location_description()
      }
      
  """
  @type deploy_as_application_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_content_base_location() :: %{
        "BasePath" => String.t() | atom(),
        "BucketARN" => String.t() | atom()
      }
      
  """
  @type s3_content_base_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      run_configuration_description() :: %{
        "ApplicationRestoreConfigurationDescription" => application_restore_configuration(),
        "FlinkRunConfigurationDescription" => flink_run_configuration()
      }
      
  """
  @type run_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      code_content_update() :: %{
        "S3ContentLocationUpdate" => s3_content_location_update(),
        "TextContentUpdate" => String.t() | atom(),
        "ZipFileContentUpdate" => binary()
      }
      
  """
  @type code_content_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_application_reference_data_source_response() :: %{
        "ApplicationARN" => String.t() | atom(),
        "ApplicationVersionId" => float(),
        "ReferenceDataSourceDescriptions" => list(reference_data_source_description())
      }
      
  """
  @type add_application_reference_data_source_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sql_application_configuration_description() :: %{
        "InputDescriptions" => list(input_description()),
        "OutputDescriptions" => list(output_description()),
        "ReferenceDataSourceDescriptions" => list(reference_data_source_description())
      }
      
  """
  @type sql_application_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_application_snapshots_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ApplicationName") => String.t() | atom()
      }
      
  """
  @type list_application_snapshots_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kinesis_firehose_output_update() :: %{
        "ResourceARNUpdate" => String.t() | atom()
      }
      
  """
  @type kinesis_firehose_output_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      flink_application_configuration_description() :: %{
        "CheckpointConfigurationDescription" => checkpoint_configuration_description(),
        "JobPlanDescription" => String.t() | atom(),
        "MonitoringConfigurationDescription" => monitoring_configuration_description(),
        "ParallelismConfigurationDescription" => parallelism_configuration_description()
      }
      
  """
  @type flink_application_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      catalog_configuration_update() :: %{
        "GlueDataCatalogConfigurationUpdate" => glue_data_catalog_configuration_update()
      }
      
  """
  @type catalog_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_configuration_update() :: %{
        "ApplicationCodeConfigurationUpdate" => application_code_configuration_update(),
        "ApplicationEncryptionConfigurationUpdate" => application_encryption_configuration_update(),
        "ApplicationSnapshotConfigurationUpdate" => application_snapshot_configuration_update(),
        "ApplicationSystemRollbackConfigurationUpdate" => application_system_rollback_configuration_update(),
        "EnvironmentPropertyUpdates" => environment_property_updates(),
        "FlinkApplicationConfigurationUpdate" => flink_application_configuration_update(),
        "SqlApplicationConfigurationUpdate" => sql_application_configuration_update(),
        "VpcConfigurationUpdates" => list(vpc_configuration_update()),
        "ZeppelinApplicationConfigurationUpdate" => zeppelin_application_configuration_update()
      }
      
  """
  @type application_configuration_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_content_base_location_update() :: %{
        "BasePathUpdate" => String.t() | atom(),
        "BucketARNUpdate" => String.t() | atom()
      }
      
  """
  @type s3_content_base_location_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reference_data_source_description() :: %{
        "ReferenceId" => String.t() | atom(),
        "ReferenceSchema" => source_schema(),
        "S3ReferenceDataSourceDescription" => s3_reference_data_source_description(),
        "TableName" => String.t() | atom()
      }
      
  """
  @type reference_data_source_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_application_response() :: %{
        "ApplicationDetail" => application_detail()
      }
      
  """
  @type describe_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type too_many_tags_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_application_maintenance_configuration_request() :: %{
        required("ApplicationMaintenanceConfigurationUpdate") => application_maintenance_configuration_update(),
        required("ApplicationName") => String.t() | atom()
      }
      
  """
  @type update_application_maintenance_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      output() :: %{
        "DestinationSchema" => destination_schema(),
        "KinesisFirehoseOutput" => kinesis_firehose_output(),
        "KinesisStreamsOutput" => kinesis_streams_output(),
        "LambdaOutput" => lambda_output(),
        "Name" => String.t() | atom()
      }
      
  """
  @type output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_request() :: %{
        required("ApplicationName") => String.t() | atom(),
        required("CreateTimestamp") => non_neg_integer()
      }
      
  """
  @type delete_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_output_response() :: %{
        "ApplicationARN" => String.t() | atom(),
        "ApplicationVersionId" => float()
      }
      
  """
  @type delete_application_output_response() :: %{(String.t() | atom()) => any()}

  @type add_application_cloud_watch_logging_option_errors() ::
          concurrent_modification_exception()
          | invalid_application_configuration_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type add_application_input_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | code_validation_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type add_application_input_processing_configuration_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type add_application_output_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type add_application_reference_data_source_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type add_application_vpc_configuration_errors() ::
          concurrent_modification_exception()
          | invalid_application_configuration_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_application_errors() ::
          too_many_tags_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | code_validation_exception()
          | invalid_request_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type create_application_presigned_url_errors() ::
          invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_application_snapshot_errors() ::
          limit_exceeded_exception()
          | invalid_application_configuration_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type delete_application_errors() ::
          concurrent_modification_exception()
          | invalid_application_configuration_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_application_cloud_watch_logging_option_errors() ::
          concurrent_modification_exception()
          | invalid_application_configuration_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_application_input_processing_configuration_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_application_output_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_application_reference_data_source_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_application_snapshot_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type delete_application_vpc_configuration_errors() ::
          concurrent_modification_exception()
          | invalid_application_configuration_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type describe_application_errors() ::
          invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type describe_application_operation_errors() ::
          invalid_argument_exception()
          | resource_not_found_exception()
          | unsupported_operation_exception()

  @type describe_application_snapshot_errors() ::
          invalid_argument_exception()
          | resource_not_found_exception()
          | unsupported_operation_exception()

  @type describe_application_version_errors() ::
          invalid_argument_exception()
          | resource_not_found_exception()
          | unsupported_operation_exception()

  @type discover_input_schema_errors() ::
          invalid_argument_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | unable_to_detect_schema_exception()
          | resource_provisioned_throughput_exceeded_exception()
          | unsupported_operation_exception()

  @type list_application_operations_errors() ::
          invalid_argument_exception()
          | resource_not_found_exception()
          | unsupported_operation_exception()

  @type list_application_snapshots_errors() ::
          invalid_argument_exception() | unsupported_operation_exception()

  @type list_application_versions_errors() ::
          invalid_argument_exception()
          | resource_not_found_exception()
          | unsupported_operation_exception()

  @type list_applications_errors() :: invalid_request_exception()

  @type list_tags_for_resource_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()

  @type rollback_application_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  @type start_application_errors() ::
          invalid_application_configuration_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type stop_application_errors() ::
          concurrent_modification_exception()
          | invalid_application_configuration_exception()
          | invalid_argument_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type untag_resource_errors() ::
          too_many_tags_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type update_application_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_application_configuration_exception()
          | invalid_argument_exception()
          | code_validation_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type update_application_maintenance_configuration_errors() ::
          concurrent_modification_exception()
          | invalid_argument_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()
          | unsupported_operation_exception()

  def metadata do
    %{
      api_version: "2018-05-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kinesisanalytics",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Kinesis Analytics V2",
      signature_version: "v4",
      signing_name: "kinesisanalytics",
      target_prefix: "KinesisAnalytics_20180523"
    }
  end

  @doc """
  Adds an Amazon CloudWatch log stream to monitor application configuration
  errors.
  """
  @spec add_application_cloud_watch_logging_option(
          map(),
          add_application_cloud_watch_logging_option_request(),
          list()
        ) ::
          {:ok, add_application_cloud_watch_logging_option_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_application_cloud_watch_logging_option_errors()}
  def add_application_cloud_watch_logging_option(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddApplicationCloudWatchLoggingOption", input, options)
  end

  @doc """

  Adds a streaming source to your SQL-based Kinesis Data Analytics application.

  You can add a streaming source when you create an application, or you can use
  this
  operation to add a streaming source after you create an application. For more
  information, see
  `CreateApplication`.

  Any configuration update, including adding a streaming source using this
  operation,
  results in a new version of the application. You can use the
  `DescribeApplication` operation
  to find the current application version.
  """
  @spec add_application_input(map(), add_application_input_request(), list()) ::
          {:ok, add_application_input_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_application_input_errors()}
  def add_application_input(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddApplicationInput", input, options)
  end

  @doc """
  Adds an `InputProcessingConfiguration` to a SQL-based Kinesis Data Analytics
  application.

  An input processor pre-processes records
  on the input stream before the
  application's SQL code executes. Currently, the only input processor available
  is [Amazon Lambda](https://docs.aws.amazon.com/lambda/).
  """
  @spec add_application_input_processing_configuration(
          map(),
          add_application_input_processing_configuration_request(),
          list()
        ) ::
          {:ok, add_application_input_processing_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_application_input_processing_configuration_errors()}
  def add_application_input_processing_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "AddApplicationInputProcessingConfiguration",
      input,
      options
    )
  end

  @doc """
  Adds an external destination to your SQL-based Kinesis Data Analytics
  application.

  If you want Kinesis Data Analytics to deliver data from an in-application stream
  within
  your application to an external destination (such as an Kinesis data stream, a
  Kinesis Data
  Firehose delivery stream, or an Amazon Lambda function), you add the relevant
  configuration to
  your application using this operation. You can configure one or more outputs for
  your
  application. Each output configuration maps an in-application stream and an
  external
  destination.

  You can use one of the output configurations to deliver data from your
  in-application error stream to an external destination so that you can analyze
  the
  errors.

  Any configuration update, including adding a streaming source using this
  operation, results in a new version of the application. You can use the
  `DescribeApplication` operation to find the current application
  version.
  """
  @spec add_application_output(map(), add_application_output_request(), list()) ::
          {:ok, add_application_output_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_application_output_errors()}
  def add_application_output(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddApplicationOutput", input, options)
  end

  @doc """
  Adds a reference data source to an existing SQL-based Kinesis Data Analytics
  application.

  Kinesis Data Analytics reads reference data (that is, an Amazon S3 object) and
  creates an
  in-application table within your application. In the request, you provide the
  source (S3
  bucket name and object key name), name of the in-application table to create,
  and the
  necessary mapping information that describes how data in an Amazon S3 object
  maps to columns
  in the resulting in-application table.
  """
  @spec add_application_reference_data_source(
          map(),
          add_application_reference_data_source_request(),
          list()
        ) ::
          {:ok, add_application_reference_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_application_reference_data_source_errors()}
  def add_application_reference_data_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddApplicationReferenceDataSource", input, options)
  end

  @doc """
  Adds a Virtual Private Cloud (VPC) configuration to the application.

  Applications can use VPCs to store
  and access resources securely.

  Note the following about VPC configurations for Managed Service for Apache Flink
  applications:

    *
  VPC configurations are not supported for SQL applications.

    *
  When a VPC is added to a Managed Service for Apache Flink application, the
  application can no longer be accessed from the
  Internet directly. To enable Internet access to the application, add an Internet
  gateway to your VPC.
  """
  @spec add_application_vpc_configuration(
          map(),
          add_application_vpc_configuration_request(),
          list()
        ) ::
          {:ok, add_application_vpc_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_application_vpc_configuration_errors()}
  def add_application_vpc_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddApplicationVpcConfiguration", input, options)
  end

  @doc """
  Creates a Managed Service for Apache Flink application.

  For information about creating a
  Managed Service for Apache Flink application, see [Creating an Application](https://docs.aws.amazon.com/kinesisanalytics/latest/java/getting-started.html).
  """
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateApplication", input, options)
  end

  @doc """
  Creates and returns a URL that you can use to connect to
  an application's extension.

  The IAM role or user used to call this API defines the permissions to access the
  extension. After the presigned URL is created, no additional permission is
  required to access
  this URL. IAM authorization policies for this API are also enforced for every
  HTTP request
  that attempts to connect to the extension.

  You control the amount of time that the URL will be valid using the
  `SessionExpirationDurationInSeconds`
  parameter. If you do not provide this parameter, the returned URL is valid for
  twelve hours.

  The URL that you get from a call to CreateApplicationPresignedUrl must be used
  within 3 minutes
  to be valid.
  If you first try to use the URL after the 3-minute limit expires, the service
  returns an HTTP 403 Forbidden error.
  """
  @spec create_application_presigned_url(
          map(),
          create_application_presigned_url_request(),
          list()
        ) ::
          {:ok, create_application_presigned_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_presigned_url_errors()}
  def create_application_presigned_url(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateApplicationPresignedUrl", input, options)
  end

  @doc """
  Creates a snapshot of the application's state data.
  """
  @spec create_application_snapshot(map(), create_application_snapshot_request(), list()) ::
          {:ok, create_application_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_snapshot_errors()}
  def create_application_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateApplicationSnapshot", input, options)
  end

  @doc """
  Deletes the specified application.

  Managed Service for Apache Flink halts application execution and deletes the
  application.
  """
  @spec delete_application(map(), delete_application_request(), list()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplication", input, options)
  end

  @doc """
  Deletes an Amazon CloudWatch log stream from an SQL-based Kinesis Data Analytics
  application.
  """
  @spec delete_application_cloud_watch_logging_option(
          map(),
          delete_application_cloud_watch_logging_option_request(),
          list()
        ) ::
          {:ok, delete_application_cloud_watch_logging_option_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_cloud_watch_logging_option_errors()}
  def delete_application_cloud_watch_logging_option(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplicationCloudWatchLoggingOption", input, options)
  end

  @doc """
  Deletes an `InputProcessingConfiguration` from an input.
  """
  @spec delete_application_input_processing_configuration(
          map(),
          delete_application_input_processing_configuration_request(),
          list()
        ) ::
          {:ok, delete_application_input_processing_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_input_processing_configuration_errors()}
  def delete_application_input_processing_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DeleteApplicationInputProcessingConfiguration",
      input,
      options
    )
  end

  @doc """
  Deletes the output destination configuration from your SQL-based Kinesis Data
  Analytics application's configuration.

  Kinesis Data Analytics will no longer write data from
  the corresponding in-application stream to the external output destination.
  """
  @spec delete_application_output(map(), delete_application_output_request(), list()) ::
          {:ok, delete_application_output_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_output_errors()}
  def delete_application_output(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplicationOutput", input, options)
  end

  @doc """
  Deletes a reference data source configuration from the specified SQL-based
  Kinesis Data Analytics application's configuration.

  If the application is running, Kinesis Data Analytics immediately removes the
  in-application table
  that you created using the `AddApplicationReferenceDataSource` operation.
  """
  @spec delete_application_reference_data_source(
          map(),
          delete_application_reference_data_source_request(),
          list()
        ) ::
          {:ok, delete_application_reference_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_reference_data_source_errors()}
  def delete_application_reference_data_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplicationReferenceDataSource", input, options)
  end

  @doc """
  Deletes a snapshot of application state.
  """
  @spec delete_application_snapshot(map(), delete_application_snapshot_request(), list()) ::
          {:ok, delete_application_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_snapshot_errors()}
  def delete_application_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplicationSnapshot", input, options)
  end

  @doc """
  Removes a VPC configuration from a Managed Service for Apache Flink application.
  """
  @spec delete_application_vpc_configuration(
          map(),
          delete_application_vpc_configuration_request(),
          list()
        ) ::
          {:ok, delete_application_vpc_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_vpc_configuration_errors()}
  def delete_application_vpc_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplicationVpcConfiguration", input, options)
  end

  @doc """
  Returns information about a specific Managed Service for Apache Flink
  application.

  If you want to retrieve a list of all applications in your account,
  use the `ListApplications` operation.
  """
  @spec describe_application(map(), describe_application_request(), list()) ::
          {:ok, describe_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_application_errors()}
  def describe_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApplication", input, options)
  end

  @doc """
  Provides a detailed description of a specified application operation.

  To see a list of all the operations of an application, invoke the
  `ListApplicationOperations` operation.

  This operation is supported only for Managed Service for Apache Flink.
  """
  @spec describe_application_operation(map(), describe_application_operation_request(), list()) ::
          {:ok, describe_application_operation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_application_operation_errors()}
  def describe_application_operation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApplicationOperation", input, options)
  end

  @doc """
  Returns information about a snapshot of application state data.
  """
  @spec describe_application_snapshot(map(), describe_application_snapshot_request(), list()) ::
          {:ok, describe_application_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_application_snapshot_errors()}
  def describe_application_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApplicationSnapshot", input, options)
  end

  @doc """
  Provides a detailed description of a specified version of the application.

  To see a list of all the versions of an application, invoke the
  `ListApplicationVersions` operation.

  This operation is supported only for Managed Service for Apache Flink.
  """
  @spec describe_application_version(map(), describe_application_version_request(), list()) ::
          {:ok, describe_application_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_application_version_errors()}
  def describe_application_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApplicationVersion", input, options)
  end

  @doc """
  Infers a schema for a SQL-based Kinesis Data Analytics application by evaluating
  sample records on the specified streaming source (Kinesis data stream or Kinesis
  Data Firehose
  delivery stream) or Amazon S3 object.

  In the response, the operation returns the inferred
  schema and also the sample records that the operation used to infer the schema.

  You can use the inferred schema when configuring a streaming source for your
  application.
  When you create an application using the Kinesis Data Analytics console, the
  console uses this
  operation to infer a schema and show it in the console user interface.
  """
  @spec discover_input_schema(map(), discover_input_schema_request(), list()) ::
          {:ok, discover_input_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, discover_input_schema_errors()}
  def discover_input_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DiscoverInputSchema", input, options)
  end

  @doc """
  Lists all the operations performed for the specified application such as
  UpdateApplication, StartApplication etc.

  The response also includes a summary of the operation.

  To get the complete description of a specific operation, invoke the
  `DescribeApplicationOperation` operation.

  This operation is supported only for Managed Service for Apache Flink.
  """
  @spec list_application_operations(map(), list_application_operations_request(), list()) ::
          {:ok, list_application_operations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_operations_errors()}
  def list_application_operations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplicationOperations", input, options)
  end

  @doc """
  Lists information about the current application snapshots.
  """
  @spec list_application_snapshots(map(), list_application_snapshots_request(), list()) ::
          {:ok, list_application_snapshots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_snapshots_errors()}
  def list_application_snapshots(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplicationSnapshots", input, options)
  end

  @doc """
  Lists all the versions for the specified application, including versions that
  were rolled back.

  The response also includes a summary of the configuration
  associated with each version.

  To get the complete description of a specific application version, invoke the
  `DescribeApplicationVersion` operation.

  This operation is supported only for Managed Service for Apache Flink.
  """
  @spec list_application_versions(map(), list_application_versions_request(), list()) ::
          {:ok, list_application_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_versions_errors()}
  def list_application_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplicationVersions", input, options)
  end

  @doc """
  Returns a list of Managed Service for Apache Flink applications in your account.

  For each
  application, the response includes the application name, Amazon Resource Name
  (ARN), and
  status.

  If you want detailed information about a specific application, use
  `DescribeApplication`.
  """
  @spec list_applications(map(), list_applications_request(), list()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplications", input, options)
  end

  @doc """
  Retrieves the list of key-value tags assigned to the application.

  For more information, see
  [Using Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Reverts the application to the previous running version.

  You can roll back an
  application if you suspect it is stuck in a transient status or in the running
  status.

  You can roll back an application only if it is in the `UPDATING`,
  `AUTOSCALING`, or `RUNNING` statuses.

  When you rollback an application, it loads state data from the last successful
  snapshot.
  If the application has no snapshots, Managed Service for Apache Flink rejects
  the rollback request.
  """
  @spec rollback_application(map(), rollback_application_request(), list()) ::
          {:ok, rollback_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, rollback_application_errors()}
  def rollback_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RollbackApplication", input, options)
  end

  @doc """
  Starts the specified Managed Service for Apache Flink application.

  After creating an application, you must exclusively call this operation to
  start your application.
  """
  @spec start_application(map(), start_application_request(), list()) ::
          {:ok, start_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_application_errors()}
  def start_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartApplication", input, options)
  end

  @doc """
  Stops the application from processing data.

  You can stop
  an application only if it is in the running status, unless you set the `Force`
  parameter to `true`.

  You can use the `DescribeApplication` operation to find the application status.

  Managed Service for Apache Flink takes a snapshot when the application is
  stopped, unless `Force` is set
  to `true`.
  """
  @spec stop_application(map(), stop_application_request(), list()) ::
          {:ok, stop_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_application_errors()}
  def stop_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopApplication", input, options)
  end

  @doc """
  Adds one or more key-value tags to a Managed Service for Apache Flink
  application.

  Note that the maximum number of application
  tags includes system tags. The maximum number of user-defined application tags
  is 50.
  For more information, see [Using Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from a Managed Service for Apache Flink application.

  For more information, see
  [Using Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an existing Managed Service for Apache Flink application.

  Using this operation, you
  can update application code, input configuration, and output configuration.

  Managed Service for Apache Flink updates the `ApplicationVersionId` each time
  you update
  your application.
  """
  @spec update_application(map(), update_application_request(), list()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateApplication", input, options)
  end

  @doc """
  Updates the maintenance configuration of the Managed Service for Apache Flink
  application.

  You can invoke this operation on an application that is in one of the two
  following
  states: `READY` or `RUNNING`. If you invoke it when the application is
  in a state other than these two states, it throws a `ResourceInUseException`.
  The
  service makes use of the updated configuration the next time it schedules
  maintenance for the
  application. If you invoke this operation after the service schedules
  maintenance, the service
  will apply the configuration update the next time it schedules maintenance for
  the
  application. This means that you might not see the maintenance configuration
  update applied to
  the maintenance process that follows a successful invocation of this operation,
  but to the
  following maintenance process instead.

  To see the current maintenance configuration of your application, invoke the
  `DescribeApplication` operation.

  For information about application maintenance, see [Managed Service for Apache Flink for Apache Flink
  Maintenance](https://docs.aws.amazon.com/kinesisanalytics/latest/java/maintenance.html).

  This operation is supported only for Managed Service for Apache Flink.
  """
  @spec update_application_maintenance_configuration(
          map(),
          update_application_maintenance_configuration_request(),
          list()
        ) ::
          {:ok, update_application_maintenance_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_application_maintenance_configuration_errors()}
  def update_application_maintenance_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "UpdateApplicationMaintenanceConfiguration",
      input,
      options
    )
  end
end
