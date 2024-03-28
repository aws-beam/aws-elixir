# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTAnalytics do
  @moduledoc """
  IoT Analytics allows you to collect large amounts of device data, process
  messages, and store them.

  You can then query the data and run sophisticated analytics on it. IoT Analytics
  enables advanced
  data exploration through integration with Jupyter Notebooks and data
  visualization through integration
  with Amazon QuickSight.

  Traditional analytics and business intelligence tools are designed to process
  structured data. IoT data
  often comes from devices that record noisy processes (such as temperature,
  motion, or sound). As a result
  the data from these devices can have significant gaps, corrupted messages, and
  false readings that must be
  cleaned up before analysis can occur. Also, IoT data is often only meaningful in
  the context of other data
  from external sources.

  IoT Analytics automates the steps required to analyze data from IoT devices. IoT
  Analytics
  filters, transforms, and enriches IoT data before storing it in a time-series
  data store for analysis. You
  can set up the service to collect only the data you need from your devices,
  apply mathematical transforms
  to process the data, and enrich the data with device-specific metadata such as
  device type and location
  before storing it. Then, you can analyze your data by running queries using the
  built-in SQL query engine,
  or perform more complex analytics and machine learning inference. IoT Analytics
  includes pre-built models
  for common IoT use cases so you can answer questions like which devices are
  about to fail or which customers
  are at risk of abandoning their wearable devices.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      delete_channel_request() :: %{}

  """
  @type delete_channel_request() :: %{}

  @typedoc """

  ## Example:

      sample_channel_data_request() :: %{
        optional("endTime") => non_neg_integer(),
        optional("maxMessages") => integer(),
        optional("startTime") => non_neg_integer()
      }

  """
  @type sample_channel_data_request() :: %{String.t() => any()}

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

      query_filter() :: %{
        "deltaTime" => delta_time()
      }

  """
  @type query_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      datastore_iot_site_wise_multi_layer_storage_summary() :: %{
        "customerManagedS3Storage" => iot_site_wise_customer_managed_datastore_s3_storage_summary()
      }

  """
  @type datastore_iot_site_wise_multi_layer_storage_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_pipelines_response() :: %{
        "nextToken" => String.t(),
        "pipelineSummaries" => list(pipeline_summary()())
      }

  """
  @type list_pipelines_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_file_uri_value() :: %{
        "fileName" => String.t()
      }

  """
  @type output_file_uri_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sample_channel_data_response() :: %{
        "payloads" => list(binary()())
      }

  """
  @type sample_channel_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      customer_managed_channel_s3_storage_summary() :: %{
        "bucket" => String.t(),
        "keyPrefix" => String.t(),
        "roleArn" => String.t()
      }

  """
  @type customer_managed_channel_s3_storage_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_pipelines_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_pipelines_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_channel_response() :: %{
        "channelArn" => String.t(),
        "channelName" => String.t(),
        "retentionPeriod" => retention_period()
      }

  """
  @type create_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      late_data_rule() :: %{
        "ruleConfiguration" => late_data_rule_configuration(),
        "ruleName" => String.t()
      }

  """
  @type late_data_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset_entry() :: %{
        "dataURI" => String.t(),
        "entryName" => String.t()
      }

  """
  @type dataset_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lambda_activity() :: %{
        "batchSize" => integer(),
        "lambdaName" => String.t(),
        "name" => String.t(),
        "next" => String.t()
      }

  """
  @type lambda_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      versioning_configuration() :: %{
        "maxVersions" => integer(),
        "unlimited" => boolean()
      }

  """
  @type versioning_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schema_definition() :: %{
        "columns" => list(column()())
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

      create_dataset_content_response() :: %{
        "versionId" => String.t()
      }

  """
  @type create_dataset_content_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      iot_site_wise_customer_managed_datastore_s3_storage() :: %{
        "bucket" => String.t(),
        "keyPrefix" => String.t()
      }

  """
  @type iot_site_wise_customer_managed_datastore_s3_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      json_configuration() :: %{}

  """
  @type json_configuration() :: %{}

  @typedoc """

  ## Example:

      create_pipeline_response() :: %{
        "pipelineArn" => String.t(),
        "pipelineName" => String.t()
      }

  """
  @type create_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      timestamp_partition() :: %{
        "attributeName" => String.t(),
        "timestampFormat" => String.t()
      }

  """
  @type timestamp_partition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reprocessing_summary() :: %{
        "creationTime" => non_neg_integer(),
        "id" => String.t(),
        "status" => list(any())
      }

  """
  @type reprocessing_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column() :: %{
        "name" => String.t(),
        "type" => String.t()
      }

  """
  @type column() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      datastore_storage_summary() :: %{
        "customerManagedS3" => customer_managed_datastore_s3_storage_summary(),
        "iotSiteWiseMultiLayerStorage" => datastore_iot_site_wise_multi_layer_storage_summary(),
        "serviceManagedS3" => service_managed_datastore_s3_storage_summary()
      }

  """
  @type datastore_storage_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset_trigger() :: %{
        "dataset" => triggering_dataset(),
        "schedule" => schedule()
      }

  """
  @type dataset_trigger() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset_content_delivery_destination() :: %{
        "iotEventsDestinationConfiguration" => iot_events_destination_configuration(),
        "s3DestinationConfiguration" => s3_destination_configuration()
      }

  """
  @type dataset_content_delivery_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_shadow_enrich_activity() :: %{
        "attribute" => String.t(),
        "name" => String.t(),
        "next" => String.t(),
        "roleArn" => String.t(),
        "thingName" => String.t()
      }

  """
  @type device_shadow_enrich_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_activity() :: %{
        "filter" => String.t(),
        "name" => String.t(),
        "next" => String.t()
      }

  """
  @type filter_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pipeline() :: %{
        "activities" => list(pipeline_activity()()),
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "lastUpdateTime" => non_neg_integer(),
        "name" => String.t(),
        "reprocessingSummaries" => list(reprocessing_summary()())
      }

  """
  @type pipeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retention_period() :: %{
        "numberOfDays" => integer(),
        "unlimited" => boolean()
      }

  """
  @type retention_period() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      datastore_partitions() :: %{
        "partitions" => list(datastore_partition()())
      }

  """
  @type datastore_partitions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_format_configuration() :: %{
        "jsonConfiguration" => json_configuration(),
        "parquetConfiguration" => parquet_configuration()
      }

  """
  @type file_format_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      run_pipeline_activity_response() :: %{
        "logResult" => String.t(),
        "payloads" => list(binary()())
      }

  """
  @type run_pipeline_activity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_datasets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_datasets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_datastore_response() :: %{
        "datastore" => datastore(),
        "statistics" => datastore_statistics()
      }

  """
  @type describe_datastore_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset_content_summary() :: %{
        "completionTime" => non_neg_integer(),
        "creationTime" => non_neg_integer(),
        "scheduleTime" => non_neg_integer(),
        "status" => dataset_content_status(),
        "version" => String.t()
      }

  """
  @type dataset_content_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      partition() :: %{
        "attributeName" => String.t()
      }

  """
  @type partition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_logging_options_response() :: %{
        "loggingOptions" => logging_options()
      }

  """
  @type describe_logging_options_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      datastore_iot_site_wise_multi_layer_storage() :: %{
        "customerManagedS3Storage" => iot_site_wise_customer_managed_datastore_s3_storage()
      }

  """
  @type datastore_iot_site_wise_multi_layer_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      triggering_dataset() :: %{
        "name" => String.t()
      }

  """
  @type triggering_dataset() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_message_request() :: %{
        required("channelName") => String.t(),
        required("messages") => list(message()())
      }

  """
  @type batch_put_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_pipeline_reprocessing_request() :: %{
        optional("channelMessages") => channel_messages(),
        optional("endTime") => non_neg_integer(),
        optional("startTime") => non_neg_integer()
      }

  """
  @type start_pipeline_reprocessing_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      run_pipeline_activity_request() :: %{
        required("payloads") => list(binary()()),
        required("pipelineActivity") => pipeline_activity()
      }

  """
  @type run_pipeline_activity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delta_time() :: %{
        "offsetSeconds" => integer(),
        "timeExpression" => String.t()
      }

  """
  @type delta_time() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset() :: %{
        "actions" => list(dataset_action()()),
        "arn" => String.t(),
        "contentDeliveryRules" => list(dataset_content_delivery_rule()()),
        "creationTime" => non_neg_integer(),
        "lastUpdateTime" => non_neg_integer(),
        "lateDataRules" => list(late_data_rule()()),
        "name" => String.t(),
        "retentionPeriod" => retention_period(),
        "status" => list(any()),
        "triggers" => list(dataset_trigger()()),
        "versioningConfiguration" => versioning_configuration()
      }

  """
  @type dataset() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dataset_response() :: %{
        "datasetArn" => String.t(),
        "datasetName" => String.t(),
        "retentionPeriod" => retention_period()
      }

  """
  @type create_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      datastore_statistics() :: %{
        "size" => estimated_resource_size()
      }

  """
  @type datastore_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      glue_configuration() :: %{
        "databaseName" => String.t(),
        "tableName" => String.t()
      }

  """
  @type glue_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      math_activity() :: %{
        "attribute" => String.t(),
        "math" => String.t(),
        "name" => String.t(),
        "next" => String.t()
      }

  """
  @type math_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_summary() :: %{
        "channelName" => String.t(),
        "channelStorage" => channel_storage_summary(),
        "creationTime" => non_neg_integer(),
        "lastMessageArrivalTime" => non_neg_integer(),
        "lastUpdateTime" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type channel_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      datastore() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "datastorePartitions" => datastore_partitions(),
        "fileFormatConfiguration" => file_format_configuration(),
        "lastMessageArrivalTime" => non_neg_integer(),
        "lastUpdateTime" => non_neg_integer(),
        "name" => String.t(),
        "retentionPeriod" => retention_period(),
        "status" => list(any()),
        "storage" => list()
      }

  """
  @type datastore() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset_content_version_value() :: %{
        "datasetName" => String.t()
      }

  """
  @type dataset_content_version_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_storage() :: %{
        "customerManagedS3" => customer_managed_channel_s3_storage(),
        "serviceManagedS3" => service_managed_channel_s3_storage()
      }

  """
  @type channel_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset_summary() :: %{
        "actions" => list(dataset_action_summary()()),
        "creationTime" => non_neg_integer(),
        "datasetName" => String.t(),
        "lastUpdateTime" => non_neg_integer(),
        "status" => list(any()),
        "triggers" => list(dataset_trigger()())
      }

  """
  @type dataset_summary() :: %{String.t() => any()}

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

      container_dataset_action() :: %{
        "executionRoleArn" => String.t(),
        "image" => String.t(),
        "resourceConfiguration" => resource_configuration(),
        "variables" => list(variable()())
      }

  """
  @type container_dataset_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_pipeline_request() :: %{
        optional("tags") => list(tag()()),
        required("pipelineActivities") => list(pipeline_activity()()),
        required("pipelineName") => String.t()
      }

  """
  @type create_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_pipeline_request() :: %{
        required("pipelineActivities") => list(pipeline_activity()())
      }

  """
  @type update_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dataset_contents_response() :: %{
        "datasetContentSummaries" => list(dataset_content_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_dataset_contents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_channel_response() :: %{
        "channel" => channel(),
        "statistics" => channel_statistics()
      }

  """
  @type describe_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_pipeline_reprocessing_response() :: %{}

  """
  @type cancel_pipeline_reprocessing_response() :: %{}

  @typedoc """

  ## Example:

      delete_pipeline_request() :: %{}

  """
  @type delete_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      dataset_content_delivery_rule() :: %{
        "destination" => dataset_content_delivery_destination(),
        "entryName" => String.t()
      }

  """
  @type dataset_content_delivery_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_managed_channel_s3_storage_summary() :: %{}

  """
  @type service_managed_channel_s3_storage_summary() :: %{}

  @typedoc """

  ## Example:

      s3_destination_configuration() :: %{
        "bucket" => String.t(),
        "glueConfiguration" => glue_configuration(),
        "key" => String.t(),
        "roleArn" => String.t()
      }

  """
  @type s3_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_channel_request() :: %{
        optional("includeStatistics") => boolean()
      }

  """
  @type describe_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_datastores_response() :: %{
        "datastoreSummaries" => list(datastore_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_datastores_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dataset_content_response() :: %{
        "entries" => list(dataset_entry()()),
        "status" => dataset_content_status(),
        "timestamp" => non_neg_integer()
      }

  """
  @type get_dataset_content_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_channel_request() :: %{
        optional("channelStorage") => channel_storage(),
        optional("retentionPeriod") => retention_period(),
        optional("tags") => list(tag()()),
        required("channelName") => String.t()
      }

  """
  @type create_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pipeline_summary() :: %{
        "creationTime" => non_neg_integer(),
        "lastUpdateTime" => non_neg_integer(),
        "pipelineName" => String.t(),
        "reprocessingSummaries" => list(reprocessing_summary()())
      }

  """
  @type pipeline_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_pipeline_response() :: %{
        "pipeline" => pipeline()
      }

  """
  @type describe_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset_action() :: %{
        "actionName" => String.t(),
        "containerAction" => container_dataset_action(),
        "queryAction" => sql_query_dataset_action()
      }

  """
  @type dataset_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      datastore_activity() :: %{
        "datastoreName" => String.t(),
        "name" => String.t()
      }

  """
  @type datastore_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_datastore_request() :: %{
        optional("datastoreStorage") => list(),
        optional("fileFormatConfiguration") => file_format_configuration(),
        optional("retentionPeriod") => retention_period()
      }

  """
  @type update_datastore_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_datastores_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_datastores_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      variable() :: %{
        "datasetContentVersionValue" => dataset_content_version_value(),
        "doubleValue" => float(),
        "name" => String.t(),
        "outputFileUriValue" => output_file_uri_value(),
        "stringValue" => String.t()
      }

  """
  @type variable() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dataset_request() :: %{
        optional("contentDeliveryRules") => list(dataset_content_delivery_rule()()),
        optional("lateDataRules") => list(late_data_rule()()),
        optional("retentionPeriod") => retention_period(),
        optional("triggers") => list(dataset_trigger()()),
        optional("versioningConfiguration") => versioning_configuration(),
        required("actions") => list(dataset_action()())
      }

  """
  @type update_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channels_response() :: %{
        "channelSummaries" => list(channel_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      customer_managed_datastore_s3_storage() :: %{
        "bucket" => String.t(),
        "keyPrefix" => String.t(),
        "roleArn" => String.t()
      }

  """
  @type customer_managed_datastore_s3_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      datastore_partition() :: %{
        "attributePartition" => partition(),
        "timestampPartition" => timestamp_partition()
      }

  """
  @type datastore_partition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      customer_managed_channel_s3_storage() :: %{
        "bucket" => String.t(),
        "keyPrefix" => String.t(),
        "roleArn" => String.t()
      }

  """
  @type customer_managed_channel_s3_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_channel_request() :: %{
        optional("channelStorage") => channel_storage(),
        optional("retentionPeriod") => retention_period()
      }

  """
  @type update_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delta_time_session_window_configuration() :: %{
        "timeoutInMinutes" => integer()
      }

  """
  @type delta_time_session_window_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_logging_options_request() :: %{}

  """
  @type describe_logging_options_request() :: %{}

  @typedoc """

  ## Example:

      sql_query_dataset_action() :: %{
        "filters" => list(query_filter()()),
        "sqlQuery" => String.t()
      }

  """
  @type sql_query_dataset_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_dataset_contents_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("scheduledBefore") => non_neg_integer(),
        optional("scheduledOnOrAfter") => non_neg_integer()
      }

  """
  @type list_dataset_contents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_attributes_activity() :: %{
        "attributes" => list(String.t()()),
        "name" => String.t(),
        "next" => String.t()
      }

  """
  @type remove_attributes_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_attributes_activity() :: %{
        "attributes" => map(),
        "name" => String.t(),
        "next" => String.t()
      }

  """
  @type add_attributes_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_managed_channel_s3_storage() :: %{}

  """
  @type service_managed_channel_s3_storage() :: %{}

  @typedoc """

  ## Example:

      customer_managed_datastore_s3_storage_summary() :: %{
        "bucket" => String.t(),
        "keyPrefix" => String.t(),
        "roleArn" => String.t()
      }

  """
  @type customer_managed_datastore_s3_storage_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      datastore_summary() :: %{
        "creationTime" => non_neg_integer(),
        "datastoreName" => String.t(),
        "datastorePartitions" => datastore_partitions(),
        "datastoreStorage" => datastore_storage_summary(),
        "fileFormatType" => list(any()),
        "lastMessageArrivalTime" => non_neg_integer(),
        "lastUpdateTime" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type datastore_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      iot_events_destination_configuration() :: %{
        "inputName" => String.t(),
        "roleArn" => String.t()
      }

  """
  @type iot_events_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_registry_enrich_activity() :: %{
        "attribute" => String.t(),
        "name" => String.t(),
        "next" => String.t(),
        "roleArn" => String.t(),
        "thingName" => String.t()
      }

  """
  @type device_registry_enrich_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schedule() :: %{
        "expression" => String.t()
      }

  """
  @type schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pipeline_activity() :: %{
        "addAttributes" => add_attributes_activity(),
        "channel" => channel_activity(),
        "datastore" => datastore_activity(),
        "deviceRegistryEnrich" => device_registry_enrich_activity(),
        "deviceShadowEnrich" => device_shadow_enrich_activity(),
        "filter" => filter_activity(),
        "lambda" => lambda_activity(),
        "math" => math_activity(),
        "removeAttributes" => remove_attributes_activity(),
        "selectAttributes" => select_attributes_activity()
      }

  """
  @type pipeline_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset_action_summary() :: %{
        "actionName" => String.t(),
        "actionType" => list(any())
      }

  """
  @type dataset_action_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_managed_datastore_s3_storage_summary() :: %{}

  """
  @type service_managed_datastore_s3_storage_summary() :: %{}

  @typedoc """

  ## Example:

      resource_configuration() :: %{
        "computeType" => list(any()),
        "volumeSizeInGB" => integer()
      }

  """
  @type resource_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_activity() :: %{
        "channelName" => String.t(),
        "name" => String.t(),
        "next" => String.t()
      }

  """
  @type channel_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_managed_datastore_s3_storage() :: %{}

  """
  @type service_managed_datastore_s3_storage() :: %{}

  @typedoc """

  ## Example:

      late_data_rule_configuration() :: %{
        "deltaTimeSessionWindowConfiguration" => delta_time_session_window_configuration()
      }

  """
  @type late_data_rule_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_dataset_content_request() :: %{
        optional("versionId") => String.t()
      }

  """
  @type create_dataset_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_logging_options_request() :: %{
        required("loggingOptions") => logging_options()
      }

  """
  @type put_logging_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dataset_response() :: %{
        "dataset" => dataset()
      }

  """
  @type describe_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dataset_request() :: %{
        optional("contentDeliveryRules") => list(dataset_content_delivery_rule()()),
        optional("lateDataRules") => list(late_data_rule()()),
        optional("retentionPeriod") => retention_period(),
        optional("tags") => list(tag()()),
        optional("triggers") => list(dataset_trigger()()),
        optional("versioningConfiguration") => versioning_configuration(),
        required("actions") => list(dataset_action()()),
        required("datasetName") => String.t()
      }

  """
  @type create_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      iot_site_wise_customer_managed_datastore_s3_storage_summary() :: %{
        "bucket" => String.t(),
        "keyPrefix" => String.t()
      }

  """
  @type iot_site_wise_customer_managed_datastore_s3_storage_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      select_attributes_activity() :: %{
        "attributes" => list(String.t()()),
        "name" => String.t(),
        "next" => String.t()
      }

  """
  @type select_attributes_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "lastMessageArrivalTime" => non_neg_integer(),
        "lastUpdateTime" => non_neg_integer(),
        "name" => String.t(),
        "retentionPeriod" => retention_period(),
        "status" => list(any()),
        "storage" => channel_storage()
      }

  """
  @type channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_datastore_request() :: %{
        optional("datastorePartitions") => datastore_partitions(),
        optional("datastoreStorage") => list(),
        optional("fileFormatConfiguration") => file_format_configuration(),
        optional("retentionPeriod") => retention_period(),
        optional("tags") => list(tag()()),
        required("datastoreName") => String.t()
      }

  """
  @type create_datastore_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_message_error_entry() :: %{
        "errorCode" => String.t(),
        "errorMessage" => String.t(),
        "messageId" => String.t()
      }

  """
  @type batch_put_message_error_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset_content_status() :: %{
        "reason" => String.t(),
        "state" => list(any())
      }

  """
  @type dataset_content_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_storage_summary() :: %{
        "customerManagedS3" => customer_managed_channel_s3_storage_summary(),
        "serviceManagedS3" => service_managed_channel_s3_storage_summary()
      }

  """
  @type channel_storage_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logging_options() :: %{
        "enabled" => boolean(),
        "level" => list(any()),
        "roleArn" => String.t()
      }

  """
  @type logging_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_messages() :: %{
        "s3Paths" => list(String.t()())
      }

  """
  @type channel_messages() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_datastore_response() :: %{
        "datastoreArn" => String.t(),
        "datastoreName" => String.t(),
        "retentionPeriod" => retention_period()
      }

  """
  @type create_datastore_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_dataset_request() :: %{}

  """
  @type describe_dataset_request() :: %{}

  @typedoc """

  ## Example:

      delete_dataset_request() :: %{}

  """
  @type delete_dataset_request() :: %{}

  @typedoc """

  ## Example:

      list_datasets_response() :: %{
        "datasetSummaries" => list(dataset_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_datasets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_already_exists_exception() :: %{
        "message" => String.t(),
        "resourceArn" => String.t(),
        "resourceId" => String.t()
      }

  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_pipeline_request() :: %{}

  """
  @type describe_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      delete_dataset_content_request() :: %{
        optional("versionId") => String.t()
      }

  """
  @type delete_dataset_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dataset_content_request() :: %{
        optional("versionId") => String.t()
      }

  """
  @type get_dataset_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_pipeline_reprocessing_response() :: %{
        "reprocessingId" => String.t()
      }

  """
  @type start_pipeline_reprocessing_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channels_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_message_response() :: %{
        "batchPutMessageErrorEntries" => list(batch_put_message_error_entry()())
      }

  """
  @type batch_put_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parquet_configuration() :: %{
        "schemaDefinition" => schema_definition()
      }

  """
  @type parquet_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_pipeline_reprocessing_request() :: %{}

  """
  @type cancel_pipeline_reprocessing_request() :: %{}

  @typedoc """

  ## Example:

      describe_datastore_request() :: %{
        optional("includeStatistics") => boolean()
      }

  """
  @type describe_datastore_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_statistics() :: %{
        "size" => estimated_resource_size()
      }

  """
  @type channel_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_datastore_request() :: %{}

  """
  @type delete_datastore_request() :: %{}

  @typedoc """

  ## Example:

      message() :: %{
        "messageId" => String.t(),
        "payload" => binary()
      }

  """
  @type message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      estimated_resource_size() :: %{
        "estimatedOn" => non_neg_integer(),
        "estimatedSizeInBytes" => float()
      }

  """
  @type estimated_resource_size() :: %{String.t() => any()}

  @type batch_put_message_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type cancel_pipeline_reprocessing_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type create_channel_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_dataset_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_dataset_content_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type create_datastore_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type create_pipeline_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type delete_channel_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_dataset_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_dataset_content_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_datastore_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type delete_pipeline_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_channel_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_dataset_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_datastore_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_logging_options_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type describe_pipeline_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type get_dataset_content_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_channels_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_dataset_contents_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type list_datasets_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_datastores_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_pipelines_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type list_tags_for_resource_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type put_logging_options_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type run_pipeline_activity_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | internal_failure_exception()

  @type sample_channel_data_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type start_pipeline_reprocessing_errors() ::
          resource_already_exists_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type tag_resource_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type untag_resource_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_channel_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_dataset_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_datastore_errors() ::
          throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  @type update_pipeline_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_failure_exception()

  def metadata do
    %{
      api_version: "2017-11-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "iotanalytics",
      global?: false,
      protocol: "rest-json",
      service_id: "IoTAnalytics",
      signature_version: "v4",
      signing_name: "iotanalytics",
      target_prefix: nil
    }
  end

  @doc """
  Sends messages to a channel.
  """
  @spec batch_put_message(map(), batch_put_message_request(), list()) ::
          {:ok, batch_put_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_put_message_errors()}
  def batch_put_message(%Client{} = client, input, options \\ []) do
    url_path = "/messages/batch"
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
  Cancels the reprocessing of data through the pipeline.
  """
  @spec cancel_pipeline_reprocessing(
          map(),
          String.t(),
          String.t(),
          cancel_pipeline_reprocessing_request(),
          list()
        ) ::
          {:ok, cancel_pipeline_reprocessing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_pipeline_reprocessing_errors()}
  def cancel_pipeline_reprocessing(
        %Client{} = client,
        pipeline_name,
        reprocessing_id,
        input,
        options \\ []
      ) do
    url_path =
      "/pipelines/#{AWS.Util.encode_uri(pipeline_name)}/reprocessing/#{AWS.Util.encode_uri(reprocessing_id)}"

    headers = []
    query_params = []

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
  Used to create a channel.

  A channel collects data from an MQTT topic and archives the raw,
  unprocessed messages before publishing the data to a pipeline.
  """
  @spec create_channel(map(), create_channel_request(), list()) ::
          {:ok, create_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_channel_errors()}
  def create_channel(%Client{} = client, input, options \\ []) do
    url_path = "/channels"
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
  Used to create a dataset.

  A dataset stores data retrieved from a data store by applying a
  `queryAction` (a SQL query) or a `containerAction` (executing a
  containerized application). This operation creates the skeleton of a dataset.
  The dataset can
  be populated manually by calling `CreateDatasetContent` or automatically
  according
  to a trigger you specify.
  """
  @spec create_dataset(map(), create_dataset_request(), list()) ::
          {:ok, create_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_dataset_errors()}
  def create_dataset(%Client{} = client, input, options \\ []) do
    url_path = "/datasets"
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
  Creates the content of a dataset by applying a `queryAction` (a SQL query) or a
  `containerAction` (executing a containerized application).
  """
  @spec create_dataset_content(map(), String.t(), create_dataset_content_request(), list()) ::
          {:ok, create_dataset_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_dataset_content_errors()}
  def create_dataset_content(%Client{} = client, dataset_name, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_name)}/content"
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
  Creates a data store, which is a repository for messages.
  """
  @spec create_datastore(map(), create_datastore_request(), list()) ::
          {:ok, create_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_datastore_errors()}
  def create_datastore(%Client{} = client, input, options \\ []) do
    url_path = "/datastores"
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
  Creates a pipeline.

  A pipeline consumes messages from a channel and allows you to process
  the messages before storing them in a data store. You must specify both a
  `channel`
  and a `datastore` activity and, optionally, as many as 23 additional activities
  in
  the `pipelineActivities` array.
  """
  @spec create_pipeline(map(), create_pipeline_request(), list()) ::
          {:ok, create_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_pipeline_errors()}
  def create_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/pipelines"
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
  Deletes the specified channel.
  """
  @spec delete_channel(map(), String.t(), delete_channel_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_errors()}
  def delete_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_name)}"
    headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Deletes the specified dataset.

  You do not have to delete the content of the dataset before you perform this
  operation.
  """
  @spec delete_dataset(map(), String.t(), delete_dataset_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_dataset_errors()}
  def delete_dataset(%Client{} = client, dataset_name, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_name)}"
    headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Deletes the content of the specified dataset.
  """
  @spec delete_dataset_content(map(), String.t(), delete_dataset_content_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_dataset_content_errors()}
  def delete_dataset_content(%Client{} = client, dataset_name, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_name)}/content"
    headers = []

    {query_params, input} =
      [
        {"versionId", "versionId"}
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
      204
    )
  end

  @doc """
  Deletes the specified data store.
  """
  @spec delete_datastore(map(), String.t(), delete_datastore_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_datastore_errors()}
  def delete_datastore(%Client{} = client, datastore_name, input, options \\ []) do
    url_path = "/datastores/#{AWS.Util.encode_uri(datastore_name)}"
    headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Deletes the specified pipeline.
  """
  @spec delete_pipeline(map(), String.t(), delete_pipeline_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_pipeline_errors()}
  def delete_pipeline(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/pipelines/#{AWS.Util.encode_uri(pipeline_name)}"
    headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Retrieves information about a channel.
  """
  @spec describe_channel(map(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_channel_errors()}
  def describe_channel(%Client{} = client, channel_name, include_statistics \\ nil, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(include_statistics) do
        [{"includeStatistics", include_statistics} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a dataset.
  """
  @spec describe_dataset(map(), String.t(), list()) ::
          {:ok, describe_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_dataset_errors()}
  def describe_dataset(%Client{} = client, dataset_name, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a data store.
  """
  @spec describe_datastore(map(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_datastore_errors()}
  def describe_datastore(
        %Client{} = client,
        datastore_name,
        include_statistics \\ nil,
        options \\ []
      ) do
    url_path = "/datastores/#{AWS.Util.encode_uri(datastore_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(include_statistics) do
        [{"includeStatistics", include_statistics} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current settings of the IoT Analytics logging options.
  """
  @spec describe_logging_options(map(), list()) ::
          {:ok, describe_logging_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_logging_options_errors()}
  def describe_logging_options(%Client{} = client, options \\ []) do
    url_path = "/logging"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a pipeline.
  """
  @spec describe_pipeline(map(), String.t(), list()) ::
          {:ok, describe_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_pipeline_errors()}
  def describe_pipeline(%Client{} = client, pipeline_name, options \\ []) do
    url_path = "/pipelines/#{AWS.Util.encode_uri(pipeline_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the contents of a dataset as presigned URIs.
  """
  @spec get_dataset_content(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_dataset_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_dataset_content_errors()}
  def get_dataset_content(%Client{} = client, dataset_name, version_id \\ nil, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_name)}/content"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version_id) do
        [{"versionId", version_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of channels.
  """
  @spec list_channels(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channels_errors()}
  def list_channels(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/channels"
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
  Lists information about dataset contents that have been created.
  """
  @spec list_dataset_contents(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_dataset_contents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_dataset_contents_errors()}
  def list_dataset_contents(
        %Client{} = client,
        dataset_name,
        max_results \\ nil,
        next_token \\ nil,
        scheduled_before \\ nil,
        scheduled_on_or_after \\ nil,
        options \\ []
      ) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_name)}/contents"
    headers = []
    query_params = []

    query_params =
      if !is_nil(scheduled_on_or_after) do
        [{"scheduledOnOrAfter", scheduled_on_or_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(scheduled_before) do
        [{"scheduledBefore", scheduled_before} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about datasets.
  """
  @spec list_datasets(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_datasets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_datasets_errors()}
  def list_datasets(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/datasets"
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
  Retrieves a list of data stores.
  """
  @spec list_datastores(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_datastores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_datastores_errors()}
  def list_datastores(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/datastores"
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
  Retrieves a list of pipelines.
  """
  @spec list_pipelines(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_pipelines_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_pipelines_errors()}
  def list_pipelines(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/pipelines"
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
  Lists the tags (metadata) that you have assigned to the resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sets or updates the IoT Analytics logging options.

  If you update the value of any `loggingOptions` field, it takes up to one
  minute for the change to take effect. Also, if you change the policy attached to
  the role you
  specified in the `roleArn` field (for example, to correct an invalid policy), it
  takes up to five minutes for that change to take effect.
  """
  @spec put_logging_options(map(), put_logging_options_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_logging_options_errors()}
  def put_logging_options(%Client{} = client, input, options \\ []) do
    url_path = "/logging"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Simulates the results of running a pipeline activity on a message payload.
  """
  @spec run_pipeline_activity(map(), run_pipeline_activity_request(), list()) ::
          {:ok, run_pipeline_activity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, run_pipeline_activity_errors()}
  def run_pipeline_activity(%Client{} = client, input, options \\ []) do
    url_path = "/pipelineactivities/run"
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
  Retrieves a sample of messages from the specified channel ingested during the
  specified
  timeframe.

  Up to 10 messages can be retrieved.
  """
  @spec sample_channel_data(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, sample_channel_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, sample_channel_data_errors()}
  def sample_channel_data(
        %Client{} = client,
        channel_name,
        end_time \\ nil,
        max_messages \\ nil,
        start_time \\ nil,
        options \\ []
      ) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_name)}/sample"
    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_messages) do
        [{"maxMessages", max_messages} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts the reprocessing of raw message data through the pipeline.
  """
  @spec start_pipeline_reprocessing(
          map(),
          String.t(),
          start_pipeline_reprocessing_request(),
          list()
        ) ::
          {:ok, start_pipeline_reprocessing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_pipeline_reprocessing_errors()}
  def start_pipeline_reprocessing(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/pipelines/#{AWS.Util.encode_uri(pipeline_name)}/reprocessing"
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
  Adds to or modifies the tags of the given resource.

  Tags are metadata that can be used to
  manage a resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

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
  Removes the given tags (metadata) from the resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"},
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
      204
    )
  end

  @doc """
  Used to update the settings of a channel.
  """
  @spec update_channel(map(), String.t(), update_channel_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_channel_errors()}
  def update_channel(%Client{} = client, channel_name, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the settings of a dataset.
  """
  @spec update_dataset(map(), String.t(), update_dataset_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_dataset_errors()}
  def update_dataset(%Client{} = client, dataset_name, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Used to update the settings of a data store.
  """
  @spec update_datastore(map(), String.t(), update_datastore_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_datastore_errors()}
  def update_datastore(%Client{} = client, datastore_name, input, options \\ []) do
    url_path = "/datastores/#{AWS.Util.encode_uri(datastore_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the settings of a pipeline.

  You must specify both a `channel` and a
  `datastore` activity and, optionally, as many as 23 additional activities in the
  `pipelineActivities` array.
  """
  @spec update_pipeline(map(), String.t(), update_pipeline_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_pipeline_errors()}
  def update_pipeline(%Client{} = client, pipeline_name, input, options \\ []) do
    url_path = "/pipelines/#{AWS.Util.encode_uri(pipeline_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
