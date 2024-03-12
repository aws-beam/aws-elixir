# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisAnalytics do
  @moduledoc """
  Amazon Kinesis Analytics

  ## Overview

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  This is the *Amazon Kinesis Analytics v1 API Reference*.
  The Amazon Kinesis Analytics Developer Guide provides additional information.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  input_parallelism_update() :: %{
    "CountUpdate" => integer()
  }
  """
  @type input_parallelism_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  input_update() :: %{
    "InputId" => String.t(),
    "InputParallelismUpdate" => input_parallelism_update(),
    "InputProcessingConfigurationUpdate" => input_processing_configuration_update(),
    "InputSchemaUpdate" => input_schema_update(),
    "KinesisFirehoseInputUpdate" => kinesis_firehose_input_update(),
    "KinesisStreamsInputUpdate" => kinesis_streams_input_update(),
    "NamePrefixUpdate" => String.t()
  }
  """
  @type input_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("ResourceARN") => String.t(),
    required("Tags") => list(tag()())
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  application_detail() :: %{
    "ApplicationARN" => String.t(),
    "ApplicationCode" => String.t(),
    "ApplicationDescription" => String.t(),
    "ApplicationName" => String.t(),
    "ApplicationStatus" => list(any()),
    "ApplicationVersionId" => float(),
    "CloudWatchLoggingOptionDescriptions" => list(cloud_watch_logging_option_description()()),
    "CreateTimestamp" => non_neg_integer(),
    "InputDescriptions" => list(input_description()()),
    "LastUpdateTimestamp" => non_neg_integer(),
    "OutputDescriptions" => list(output_description()()),
    "ReferenceDataSourceDescriptions" => list(reference_data_source_description()())
  }
  """
  @type application_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  unsupported_operation_exception() :: %{
    "message" => String.t()
  }
  """
  @type unsupported_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_application_input_processing_configuration_response() :: %{

  }
  """
  @type add_application_input_processing_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_in_use_exception() :: %{
    "message" => String.t()
  }
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cloud_watch_logging_option_description() :: %{
    "CloudWatchLoggingOptionId" => String.t(),
    "LogStreamARN" => String.t(),
    "RoleARN" => String.t()
  }
  """
  @type cloud_watch_logging_option_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_application_cloud_watch_logging_option_response() :: %{

  }
  """
  @type add_application_cloud_watch_logging_option_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  input_schema_update() :: %{
    "RecordColumnUpdates" => list(record_column()()),
    "RecordEncodingUpdate" => String.t(),
    "RecordFormatUpdate" => record_format()
  }
  """
  @type input_schema_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  discover_input_schema_response() :: %{
    "InputSchema" => source_schema(),
    "ParsedInputRecords" => list(list(String.t()())()),
    "ProcessedInputRecords" => list(String.t()()),
    "RawInputRecords" => list(String.t()())
  }
  """
  @type discover_input_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_provisioned_throughput_exceeded_exception() :: %{
    "message" => String.t()
  }
  """
  @type resource_provisioned_throughput_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_application_reference_data_source_response() :: %{

  }
  """
  @type delete_application_reference_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  input_starting_position_configuration() :: %{
    "InputStartingPosition" => list(any())
  }
  """
  @type input_starting_position_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_application_input_response() :: %{

  }
  """
  @type add_application_input_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kinesis_firehose_input_description() :: %{
    "ResourceARN" => String.t(),
    "RoleARN" => String.t()
  }
  """
  @type kinesis_firehose_input_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kinesis_firehose_output_description() :: %{
    "ResourceARN" => String.t(),
    "RoleARN" => String.t()
  }
  """
  @type kinesis_firehose_output_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kinesis_firehose_input_update() :: %{
    "ResourceARNUpdate" => String.t(),
    "RoleARNUpdate" => String.t()
  }
  """
  @type kinesis_firehose_input_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cloud_watch_logging_option_update() :: %{
    "CloudWatchLoggingOptionId" => String.t(),
    "LogStreamARNUpdate" => String.t(),
    "RoleARNUpdate" => String.t()
  }
  """
  @type cloud_watch_logging_option_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kinesis_streams_input_update() :: %{
    "ResourceARNUpdate" => String.t(),
    "RoleARNUpdate" => String.t()
  }
  """
  @type kinesis_streams_input_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  input_processing_configuration() :: %{
    "InputLambdaProcessor" => input_lambda_processor()
  }
  """
  @type input_processing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_application_input_processing_configuration_request() :: %{
    required("ApplicationName") => String.t(),
    required("CurrentApplicationVersionId") => float(),
    required("InputId") => String.t()
  }
  """
  @type delete_application_input_processing_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  output_description() :: %{
    "DestinationSchema" => destination_schema(),
    "KinesisFirehoseOutputDescription" => kinesis_firehose_output_description(),
    "KinesisStreamsOutputDescription" => kinesis_streams_output_description(),
    "LambdaOutputDescription" => lambda_output_description(),
    "Name" => String.t(),
    "OutputId" => String.t()
  }
  """
  @type output_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("ResourceARN") => String.t(),
    required("TagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_application_cloud_watch_logging_option_request() :: %{
    required("ApplicationName") => String.t(),
    required("CloudWatchLoggingOptionId") => String.t(),
    required("CurrentApplicationVersionId") => float()
  }
  """
  @type delete_application_cloud_watch_logging_option_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kinesis_streams_output() :: %{
    "ResourceARN" => String.t(),
    "RoleARN" => String.t()
  }
  """
  @type kinesis_streams_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kinesis_firehose_output() :: %{
    "ResourceARN" => String.t(),
    "RoleARN" => String.t()
  }
  """
  @type kinesis_firehose_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  unable_to_detect_schema_exception() :: %{
    "ProcessedInputRecords" => list(String.t()()),
    "RawInputRecords" => list(String.t()()),
    "message" => String.t()
  }
  """
  @type unable_to_detect_schema_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  reference_data_source() :: %{
    "ReferenceSchema" => source_schema(),
    "S3ReferenceDataSource" => s3_reference_data_source(),
    "TableName" => String.t()
  }
  """
  @type reference_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  application_update() :: %{
    "ApplicationCodeUpdate" => String.t(),
    "CloudWatchLoggingOptionUpdates" => list(cloud_watch_logging_option_update()()),
    "InputUpdates" => list(input_update()()),
    "OutputUpdates" => list(output_update()()),
    "ReferenceDataSourceUpdates" => list(reference_data_source_update()())
  }
  """
  @type application_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  destination_schema() :: %{
    "RecordFormatType" => list(any())
  }
  """
  @type destination_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lambda_output_update() :: %{
    "ResourceARNUpdate" => String.t(),
    "RoleARNUpdate" => String.t()
  }
  """
  @type lambda_output_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  discover_input_schema_request() :: %{
    optional("InputProcessingConfiguration") => input_processing_configuration(),
    optional("InputStartingPositionConfiguration") => input_starting_position_configuration(),
    optional("ResourceARN") => String.t(),
    optional("RoleARN") => String.t(),
    optional("S3Configuration") => s3_configuration()
  }
  """
  @type discover_input_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  input_lambda_processor() :: %{
    "ResourceARN" => String.t(),
    "RoleARN" => String.t()
  }
  """
  @type input_lambda_processor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  input() :: %{
    "InputParallelism" => input_parallelism(),
    "InputProcessingConfiguration" => input_processing_configuration(),
    "InputSchema" => source_schema(),
    "KinesisFirehoseInput" => kinesis_firehose_input(),
    "KinesisStreamsInput" => kinesis_streams_input(),
    "NamePrefix" => String.t()
  }
  """
  @type input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "message" => String.t()
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_reference_data_source() :: %{
    "BucketARN" => String.t(),
    "FileKey" => String.t(),
    "ReferenceRoleARN" => String.t()
  }
  """
  @type s3_reference_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag() :: %{
    "Key" => String.t(),
    "Value" => String.t()
  }
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_application_request() :: %{
    required("ApplicationName") => String.t()
  }
  """
  @type stop_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  input_lambda_processor_update() :: %{
    "ResourceARNUpdate" => String.t(),
    "RoleARNUpdate" => String.t()
  }
  """
  @type input_lambda_processor_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  csv_mapping_parameters() :: %{
    "RecordColumnDelimiter" => String.t(),
    "RecordRowDelimiter" => String.t()
  }
  """
  @type csv_mapping_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  output_update() :: %{
    "DestinationSchemaUpdate" => destination_schema(),
    "KinesisFirehoseOutputUpdate" => kinesis_firehose_output_update(),
    "KinesisStreamsOutputUpdate" => kinesis_streams_output_update(),
    "LambdaOutputUpdate" => lambda_output_update(),
    "NameUpdate" => String.t(),
    "OutputId" => String.t()
  }
  """
  @type output_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  json_mapping_parameters() :: %{
    "RecordRowPath" => String.t()
  }
  """
  @type json_mapping_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_application_cloud_watch_logging_option_response() :: %{

  }
  """
  @type delete_application_cloud_watch_logging_option_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "Tags" => list(tag()())
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_application_request() :: %{
    optional("ApplicationCode") => String.t(),
    optional("ApplicationDescription") => String.t(),
    optional("CloudWatchLoggingOptions") => list(cloud_watch_logging_option()()),
    optional("Inputs") => list(input()()),
    optional("Outputs") => list(output()()),
    optional("Tags") => list(tag()()),
    required("ApplicationName") => String.t()
  }
  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_application_reference_data_source_request() :: %{
    required("ApplicationName") => String.t(),
    required("CurrentApplicationVersionId") => float(),
    required("ReferenceDataSource") => reference_data_source()
  }
  """
  @type add_application_reference_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_application_reference_data_source_request() :: %{
    required("ApplicationName") => String.t(),
    required("CurrentApplicationVersionId") => float(),
    required("ReferenceId") => String.t()
  }
  """
  @type delete_application_reference_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_unavailable_exception() :: %{
    "message" => String.t()
  }
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_application_response() :: %{
    "ApplicationSummary" => application_summary()
  }
  """
  @type create_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_application_output_response() :: %{

  }
  """
  @type add_application_output_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  input_configuration() :: %{
    "Id" => String.t(),
    "InputStartingPositionConfiguration" => input_starting_position_configuration()
  }
  """
  @type input_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kinesis_streams_input_description() :: %{
    "ResourceARN" => String.t(),
    "RoleARN" => String.t()
  }
  """
  @type kinesis_streams_input_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_application_input_request() :: %{
    required("ApplicationName") => String.t(),
    required("CurrentApplicationVersionId") => float(),
    required("Input") => input()
  }
  """
  @type add_application_input_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_application_response() :: %{

  }
  """
  @type delete_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_application_response() :: %{

  }
  """
  @type start_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_application_request() :: %{
    required("ApplicationName") => String.t(),
    required("ApplicationUpdate") => application_update(),
    required("CurrentApplicationVersionId") => float()
  }
  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_application_response() :: %{

  }
  """
  @type update_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_application_request() :: %{
    required("ApplicationName") => String.t()
  }
  """
  @type describe_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_application_request() :: %{
    required("ApplicationName") => String.t(),
    required("InputConfigurations") => list(input_configuration()())
  }
  """
  @type start_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  code_validation_exception() :: %{
    "message" => String.t()
  }
  """
  @type code_validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  input_lambda_processor_description() :: %{
    "ResourceARN" => String.t(),
    "RoleARN" => String.t()
  }
  """
  @type input_lambda_processor_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  input_parallelism() :: %{
    "Count" => integer()
  }
  """
  @type input_parallelism() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cloud_watch_logging_option() :: %{
    "LogStreamARN" => String.t(),
    "RoleARN" => String.t()
  }
  """
  @type cloud_watch_logging_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_applications_request() :: %{
    optional("ExclusiveStartApplicationName") => String.t(),
    optional("Limit") => integer()
  }
  """
  @type list_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  reference_data_source_update() :: %{
    "ReferenceId" => String.t(),
    "ReferenceSchemaUpdate" => source_schema(),
    "S3ReferenceDataSourceUpdate" => s3_reference_data_source_update(),
    "TableNameUpdate" => String.t()
  }
  """
  @type reference_data_source_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_reference_data_source_description() :: %{
    "BucketARN" => String.t(),
    "FileKey" => String.t(),
    "ReferenceRoleARN" => String.t()
  }
  """
  @type s3_reference_data_source_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kinesis_streams_output_update() :: %{
    "ResourceARNUpdate" => String.t(),
    "RoleARNUpdate" => String.t()
  }
  """
  @type kinesis_streams_output_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_application_response() :: %{

  }
  """
  @type stop_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_application_cloud_watch_logging_option_request() :: %{
    required("ApplicationName") => String.t(),
    required("CloudWatchLoggingOption") => cloud_watch_logging_option(),
    required("CurrentApplicationVersionId") => float()
  }
  """
  @type add_application_cloud_watch_logging_option_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_argument_exception() :: %{
    "message" => String.t()
  }
  """
  @type invalid_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_application_configuration_exception() :: %{
    "message" => String.t()
  }
  """
  @type invalid_application_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  concurrent_modification_exception() :: %{
    "message" => String.t()
  }
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  input_processing_configuration_description() :: %{
    "InputLambdaProcessorDescription" => input_lambda_processor_description()
  }
  """
  @type input_processing_configuration_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{
    required("ResourceARN") => String.t()
  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  source_schema() :: %{
    "RecordColumns" => list(record_column()()),
    "RecordEncoding" => String.t(),
    "RecordFormat" => record_format()
  }
  """
  @type source_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  mapping_parameters() :: %{
    "CSVMappingParameters" => csv_mapping_parameters(),
    "JSONMappingParameters" => json_mapping_parameters()
  }
  """
  @type mapping_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_application_input_processing_configuration_response() :: %{

  }
  """
  @type delete_application_input_processing_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  input_description() :: %{
    "InAppStreamNames" => list(String.t()()),
    "InputId" => String.t(),
    "InputParallelism" => input_parallelism(),
    "InputProcessingConfigurationDescription" => input_processing_configuration_description(),
    "InputSchema" => source_schema(),
    "InputStartingPositionConfiguration" => input_starting_position_configuration(),
    "KinesisFirehoseInputDescription" => kinesis_firehose_input_description(),
    "KinesisStreamsInputDescription" => kinesis_streams_input_description(),
    "NamePrefix" => String.t()
  }
  """
  @type input_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lambda_output() :: %{
    "ResourceARN" => String.t(),
    "RoleARN" => String.t()
  }
  """
  @type lambda_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_configuration() :: %{
    "BucketARN" => String.t(),
    "FileKey" => String.t(),
    "RoleARN" => String.t()
  }
  """
  @type s3_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  application_summary() :: %{
    "ApplicationARN" => String.t(),
    "ApplicationName" => String.t(),
    "ApplicationStatus" => list(any())
  }
  """
  @type application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kinesis_streams_output_description() :: %{
    "ResourceARN" => String.t(),
    "RoleARN" => String.t()
  }
  """
  @type kinesis_streams_output_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  record_format() :: %{
    "MappingParameters" => mapping_parameters(),
    "RecordFormatType" => list(any())
  }
  """
  @type record_format() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  limit_exceeded_exception() :: %{
    "message" => String.t()
  }
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_applications_response() :: %{
    "ApplicationSummaries" => list(application_summary()()),
    "HasMoreApplications" => boolean()
  }
  """
  @type list_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lambda_output_description() :: %{
    "ResourceARN" => String.t(),
    "RoleARN" => String.t()
  }
  """
  @type lambda_output_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_application_output_request() :: %{
    required("ApplicationName") => String.t(),
    required("CurrentApplicationVersionId") => float(),
    required("OutputId") => String.t()
  }
  """
  @type delete_application_output_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kinesis_streams_input() :: %{
    "ResourceARN" => String.t(),
    "RoleARN" => String.t()
  }
  """
  @type kinesis_streams_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_reference_data_source_update() :: %{
    "BucketARNUpdate" => String.t(),
    "FileKeyUpdate" => String.t(),
    "ReferenceRoleARNUpdate" => String.t()
  }
  """
  @type s3_reference_data_source_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kinesis_firehose_input() :: %{
    "ResourceARN" => String.t(),
    "RoleARN" => String.t()
  }
  """
  @type kinesis_firehose_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_application_output_request() :: %{
    required("ApplicationName") => String.t(),
    required("CurrentApplicationVersionId") => float(),
    required("Output") => output()
  }
  """
  @type add_application_output_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  input_processing_configuration_update() :: %{
    "InputLambdaProcessorUpdate" => input_lambda_processor_update()
  }
  """
  @type input_processing_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  record_column() :: %{
    "Mapping" => String.t(),
    "Name" => String.t(),
    "SqlType" => String.t()
  }
  """
  @type record_column() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_application_input_processing_configuration_request() :: %{
    required("ApplicationName") => String.t(),
    required("CurrentApplicationVersionId") => float(),
    required("InputId") => String.t(),
    required("InputProcessingConfiguration") => input_processing_configuration()
  }
  """
  @type add_application_input_processing_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_application_reference_data_source_response() :: %{

  }
  """
  @type add_application_reference_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  kinesis_firehose_output_update() :: %{
    "ResourceARNUpdate" => String.t(),
    "RoleARNUpdate" => String.t()
  }
  """
  @type kinesis_firehose_output_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  reference_data_source_description() :: %{
    "ReferenceId" => String.t(),
    "ReferenceSchema" => source_schema(),
    "S3ReferenceDataSourceDescription" => s3_reference_data_source_description(),
    "TableName" => String.t()
  }
  """
  @type reference_data_source_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_application_response() :: %{
    "ApplicationDetail" => application_detail()
  }
  """
  @type describe_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  too_many_tags_exception() :: %{
    "message" => String.t()
  }
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  output() :: %{
    "DestinationSchema" => destination_schema(),
    "KinesisFirehoseOutput" => kinesis_firehose_output(),
    "KinesisStreamsOutput" => kinesis_streams_output(),
    "LambdaOutput" => lambda_output(),
    "Name" => String.t()
  }
  """
  @type output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_application_request() :: %{
    required("ApplicationName") => String.t(),
    required("CreateTimestamp") => non_neg_integer()
  }
  """
  @type delete_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_application_output_response() :: %{

  }
  """
  @type delete_application_output_response() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2015-08-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kinesisanalytics",
      global?: false,
      protocol: "json",
      service_id: "Kinesis Analytics",
      signature_version: "v4",
      signing_name: "kinesisanalytics",
      target_prefix: "KinesisAnalytics_20150814"
    }
  end

  @doc """

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  Adds a CloudWatch log stream to monitor application configuration errors. For
  more
  information about using CloudWatch log streams with Amazon Kinesis Analytics
  applications, see [Working with Amazon CloudWatch
  Logs](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html).
  """
  @spec add_application_cloud_watch_logging_option(
          map(),
          add_application_cloud_watch_logging_option_request(),
          list()
        ) ::
          {:ok, add_application_cloud_watch_logging_option_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, unsupported_operation_exception()}
  def add_application_cloud_watch_logging_option(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddApplicationCloudWatchLoggingOption", input, options)
  end

  @doc """

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  Adds a streaming source to your Amazon Kinesis application.
  For conceptual information,
  see [Configuring Application Input](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).

  You can add a streaming source either when you create an application or you can
  use
  this operation to add a streaming source after you create an application. For
  more information, see
  [CreateApplication](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_CreateApplication.html). 
  Any configuration update, including adding a streaming source using this
  operation,
  results in a new version of the application. You can use the
  [DescribeApplication](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html)
  operation
  to find the current application version.

  This operation requires permissions to perform the
  `kinesisanalytics:AddApplicationInput` action.
  """
  @spec add_application_input(map(), add_application_input_request(), list()) ::
          {:ok, add_application_input_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, code_validation_exception()}
          | {:error, concurrent_modification_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, unsupported_operation_exception()}
  def add_application_input(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddApplicationInput", input, options)
  end

  @doc """

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  Adds an
  [InputProcessingConfiguration](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html) to an application. An input processor preprocesses records on the input stream
  before the application's SQL code executes. Currently, the only input processor
  available is
  [AWS Lambda](https://docs.aws.amazon.com/lambda/).
  """
  @spec add_application_input_processing_configuration(
          map(),
          add_application_input_processing_configuration_request(),
          list()
        ) ::
          {:ok, add_application_input_processing_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, unsupported_operation_exception()}
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

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  Adds an external destination to your Amazon Kinesis Analytics application.

  If you want Amazon Kinesis Analytics to deliver data from an in-application
  stream
  within your application to an external destination (such as an Amazon Kinesis
  stream, an
  Amazon Kinesis Firehose delivery stream, or an AWS Lambda function), you add the
  relevant configuration to your application using this operation. You can
  configure one
  or more outputs for your application. Each output configuration maps an
  in-application
  stream and an external destination.

  You can use one of the output configurations to deliver data from your
  in-application error stream to an external destination so that you can analyze
  the
  errors. For more information, see [Understanding Application Output
  (Destination)](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html).

  Any configuration update, including adding a streaming source using this
  operation, results in a new version of the application. You can use the
  [DescribeApplication](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html) operation to find the current application
  version.

  For the limits on the number of application inputs and outputs
  you can configure, see
  [Limits](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html).

  This operation requires permissions to perform the
  `kinesisanalytics:AddApplicationOutput` action.
  """
  @spec add_application_output(map(), add_application_output_request(), list()) ::
          {:ok, add_application_output_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, unsupported_operation_exception()}
  def add_application_output(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddApplicationOutput", input, options)
  end

  @doc """

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  Adds a reference data source to an existing application.

  Amazon Kinesis Analytics reads reference data (that is, an Amazon S3 object) and
  creates an in-application table within your application. In the request, you
  provide the source (S3 bucket name and object key name), name of the
  in-application table to create, and the necessary mapping information that
  describes how data in Amazon S3 object maps to columns in the resulting
  in-application table.

  For conceptual information,
  see [Configuring Application Input](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).
  For the limits on data sources you can add to your application, see
  [Limits](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html).

  This operation requires permissions to perform the
  `kinesisanalytics:AddApplicationOutput` action.
  """
  @spec add_application_reference_data_source(
          map(),
          add_application_reference_data_source_request(),
          list()
        ) ::
          {:ok, add_application_reference_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, unsupported_operation_exception()}
  def add_application_reference_data_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddApplicationReferenceDataSource", input, options)
  end

  @doc """

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  Creates an Amazon Kinesis Analytics application.
  You can configure each application with one streaming source as input,
  application code to process the input, and up to
  three destinations where
  you want Amazon Kinesis Analytics to write the output data from your
  application.
  For an overview, see
  [How it Works](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works.html).

  In the input configuration, you map the streaming source to an in-application
  stream, which you can think of as a constantly updating table. In the mapping,
  you must provide a schema for the in-application stream and map each data column
  in the in-application stream to a
  data element in the streaming source.

  Your application code is one or more SQL statements that read input data,
  transform it, and generate output. Your application code can create one or more
  SQL artifacts like SQL streams or pumps.

  In the output configuration, you can configure the application to write data
  from in-application streams created in your applications to up to three
  destinations.

  To read data from your source stream or write data to destination streams,
  Amazon Kinesis Analytics
  needs your permissions. You grant these permissions by creating IAM roles. This
  operation requires permissions to perform the
  `kinesisanalytics:CreateApplication` action.

  For introductory exercises to create an Amazon Kinesis Analytics application,
  see
  [Getting Started](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/getting-started.html).
  """
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, code_validation_exception()}
          | {:error, concurrent_modification_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, too_many_tags_exception()}
  def create_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateApplication", input, options)
  end

  @doc """

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  Deletes the specified application. Amazon Kinesis Analytics halts application
  execution and deletes the application, including any application artifacts (such
  as in-application streams, reference table, and application code).

  This operation requires permissions to perform the
  `kinesisanalytics:DeleteApplication` action.
  """
  @spec delete_application(map(), delete_application_request(), list()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, unsupported_operation_exception()}
  def delete_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplication", input, options)
  end

  @doc """

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  Deletes a CloudWatch log stream from an application. For more information about
  using CloudWatch log streams with Amazon Kinesis Analytics applications, see
  [Working with Amazon CloudWatch Logs](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html).
  """
  @spec delete_application_cloud_watch_logging_option(
          map(),
          delete_application_cloud_watch_logging_option_request(),
          list()
        ) ::
          {:ok, delete_application_cloud_watch_logging_option_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, unsupported_operation_exception()}
  def delete_application_cloud_watch_logging_option(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplicationCloudWatchLoggingOption", input, options)
  end

  @doc """

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  Deletes an
  [InputProcessingConfiguration](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html)
  from an input.
  """
  @spec delete_application_input_processing_configuration(
          map(),
          delete_application_input_processing_configuration_request(),
          list()
        ) ::
          {:ok, delete_application_input_processing_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, unsupported_operation_exception()}
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

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  Deletes output destination configuration from your application configuration.
  Amazon Kinesis Analytics will no longer write data from the corresponding
  in-application stream to the external output destination.

  This operation requires permissions to perform the
  `kinesisanalytics:DeleteApplicationOutput` action.
  """
  @spec delete_application_output(map(), delete_application_output_request(), list()) ::
          {:ok, delete_application_output_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, unsupported_operation_exception()}
  def delete_application_output(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplicationOutput", input, options)
  end

  @doc """

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  Deletes a reference data source configuration from the specified application
  configuration.

  If the application is running, Amazon Kinesis Analytics immediately removes the
  in-application table
  that you created using the
  [AddApplicationReferenceDataSource](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html)
  operation.

  This operation requires permissions to perform the
  `kinesisanalytics.DeleteApplicationReferenceDataSource`
  action.
  """
  @spec delete_application_reference_data_source(
          map(),
          delete_application_reference_data_source_request(),
          list()
        ) ::
          {:ok, delete_application_reference_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, unsupported_operation_exception()}
  def delete_application_reference_data_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplicationReferenceDataSource", input, options)
  end

  @doc """

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  Returns information about a specific Amazon Kinesis Analytics application.

  If you want to retrieve a list of all applications in your account,
  use the
  [ListApplications](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_ListApplications.html)
  operation.

  This operation requires permissions to perform the
  `kinesisanalytics:DescribeApplication`
  action. You can use `DescribeApplication` to get the current application
  versionId, which you need to call other
  operations such as `Update`.
  """
  @spec describe_application(map(), describe_application_request(), list()) ::
          {:ok, describe_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_not_found_exception()}
          | {:error, unsupported_operation_exception()}
  def describe_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApplication", input, options)
  end

  @doc """

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  Infers a schema by evaluating sample records on the specified streaming source
  (Amazon Kinesis stream or Amazon Kinesis Firehose delivery stream) or S3 object.
  In the response, the operation returns the inferred schema and also the sample
  records that the operation used to infer the schema.

  You can use the inferred schema when configuring a streaming source
  for your application. For conceptual information,
  see [Configuring Application Input](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).
  Note that when you create an application using the Amazon Kinesis Analytics
  console,
  the console uses this operation to infer a schema and show it in the console
  user interface.

  This operation requires permissions to perform the
  `kinesisanalytics:DiscoverInputSchema` action.
  """
  @spec discover_input_schema(map(), discover_input_schema_request(), list()) ::
          {:ok, discover_input_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_argument_exception()}
          | {:error, resource_provisioned_throughput_exceeded_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, unable_to_detect_schema_exception()}
  def discover_input_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DiscoverInputSchema", input, options)
  end

  @doc """

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  Returns a list of Amazon Kinesis Analytics applications in your account.
  For each application, the response includes the application name,
  Amazon Resource Name (ARN), and status.

  If the response returns the `HasMoreApplications` value as true,
  you can send another request by adding the
  `ExclusiveStartApplicationName` in the request body, and
  set the value of this to the last application name from
  the previous response.

  If you want detailed information about a specific application, use
  [DescribeApplication](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html).

  This operation requires permissions to perform the
  `kinesisanalytics:ListApplications` action.
  """
  @spec list_applications(map(), list_applications_request(), list()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_applications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplications", input, options)
  end

  @doc """
  Retrieves the list of key-value tags assigned to the application.

  For more information, see [Using Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html).
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_not_found_exception()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  Starts the specified Amazon Kinesis Analytics application. After creating an
  application, you must exclusively call this operation to start your application.

  After the application starts, it begins consuming the input data, processes it,
  and writes the output to the configured destination.

  The application status must be `READY` for you to start an application. You can
  get the application status in the console or using the
  [DescribeApplication](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html) operation.

  After you start the application, you can stop the application from processing
  the input by calling the
  [StopApplication](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_StopApplication.html)
  operation.

  This operation requires permissions to perform the
  `kinesisanalytics:StartApplication` action.
  """
  @spec start_application(map(), start_application_request(), list()) ::
          {:ok, start_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_application_configuration_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, unsupported_operation_exception()}
  def start_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartApplication", input, options)
  end

  @doc """

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  Stops the application from processing input data. You can stop
  an application only if it is in the running state.
  You can use the
  [DescribeApplication](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html)
  operation to find the application state.
  After the application is stopped,
  Amazon Kinesis Analytics stops reading data from the input, the
  application stops processing data, and there is no output written to the
  destination.

  This operation requires permissions to perform the
  `kinesisanalytics:StopApplication` action.
  """
  @spec stop_application(map(), stop_application_request(), list()) ::
          {:ok, stop_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, unsupported_operation_exception()}
  def stop_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopApplication", input, options)
  end

  @doc """
  Adds one or more key-value tags to a Kinesis Analytics application.

  Note that the maximum number of application tags includes system tags. The
  maximum number of user-defined application tags is 50.
  For more information, see [Using Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html).
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_tags_exception()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from a Kinesis Analytics application.

  For more information, see [Using Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html).
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, concurrent_modification_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_tags_exception()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """

  This documentation is for version 1 of the Amazon Kinesis Data Analytics API,
  which only supports SQL applications.

  Version 2 of the API supports SQL and Java applications. For more information
  about version 2, see [Amazon Kinesis Data Analytics API V2 Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  Updates an existing Amazon Kinesis Analytics application. Using this API,
  you can update application code, input configuration, and
  output configuration.

  Note that Amazon Kinesis Analytics updates the `CurrentApplicationVersionId`
  each time you update your application.

  This operation requires permission for the
  `kinesisanalytics:UpdateApplication` action.
  """
  @spec update_application(map(), update_application_request(), list()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, code_validation_exception()}
          | {:error, concurrent_modification_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, unsupported_operation_exception()}
  def update_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateApplication", input, options)
  end
end
