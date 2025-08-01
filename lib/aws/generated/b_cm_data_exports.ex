# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BCMDataExports do
  @moduledoc """
  You can use the Data Exports API to create customized exports from multiple
  Amazon Web Services cost management and billing datasets, such as cost and usage
  data and cost
  optimization recommendations.

  The Data Exports API provides the following endpoint:

    *
  https://bcm-data-exports.us-east-1.api.aws
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("ResourceTags") => list(resource_tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      export_status() :: %{
        "CreatedAt" => [non_neg_integer()],
        "LastRefreshedAt" => [non_neg_integer()],
        "LastUpdatedAt" => [non_neg_integer()],
        "StatusCode" => list(any()),
        "StatusReason" => list(any())
      }
      
  """
  @type export_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      create_export_request() :: %{
        optional("ResourceTags") => list(resource_tag()),
        required("Export") => export()
      }
      
  """
  @type create_export_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      column() :: %{
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Type" => String.t() | atom()
      }
      
  """
  @type column() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_table_request() :: %{
        optional("TableProperties") => map(),
        required("TableName") => String.t() | atom()
      }
      
  """
  @type get_table_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_table_response() :: %{
        "Description" => String.t() | atom(),
        "Schema" => list(column()),
        "TableName" => String.t() | atom(),
        "TableProperties" => map()
      }
      
  """
  @type get_table_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_export_request() :: %{
        required("ExportArn") => String.t() | atom()
      }
      
  """
  @type delete_export_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("ResourceTagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      execution_status() :: %{
        "CompletedAt" => [non_neg_integer()],
        "CreatedAt" => [non_neg_integer()],
        "LastUpdatedAt" => [non_neg_integer()],
        "StatusCode" => list(any()),
        "StatusReason" => list(any())
      }
      
  """
  @type execution_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_exports_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_exports_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      refresh_cadence() :: %{
        "Frequency" => list(any())
      }
      
  """
  @type refresh_cadence() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
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
      
      list_executions_response() :: %{
        "Executions" => list(execution_reference()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_executions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "QuotaCode" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => String.t() | atom(),
        "ServiceCode" => String.t() | atom()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      export_reference() :: %{
        "ExportArn" => String.t() | atom(),
        "ExportName" => String.t() | atom(),
        "ExportStatus" => export_status()
      }
      
  """
  @type export_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "NextToken" => String.t() | atom(),
        "ResourceTags" => list(resource_tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_export_response() :: %{
        "ExportArn" => String.t() | atom()
      }
      
  """
  @type delete_export_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "Message" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_query() :: %{
        "QueryStatement" => String.t() | atom(),
        "TableConfigurations" => map()
      }
      
  """
  @type data_query() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_destination() :: %{
        "S3Bucket" => String.t() | atom(),
        "S3OutputConfigurations" => s3_output_configurations(),
        "S3Prefix" => String.t() | atom(),
        "S3Region" => String.t() | atom()
      }
      
  """
  @type s3_destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      destination_configurations() :: %{
        "S3Destination" => s3_destination()
      }
      
  """
  @type destination_configurations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type resource_tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_export_request() :: %{
        required("ExportArn") => String.t() | atom()
      }
      
  """
  @type get_export_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_execution_response() :: %{
        "ExecutionId" => String.t() | atom(),
        "ExecutionStatus" => execution_status(),
        "Export" => export()
      }
      
  """
  @type get_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_export_response() :: %{
        "ExportArn" => String.t() | atom()
      }
      
  """
  @type create_export_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Fields" => list(validation_exception_field()),
        "Message" => String.t() | atom(),
        "Reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_output_configurations() :: %{
        "Compression" => list(any()),
        "Format" => list(any()),
        "OutputType" => list(any()),
        "Overwrite" => list(any())
      }
      
  """
  @type s3_output_configurations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      table_property_description() :: %{
        "DefaultValue" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ValidValues" => list(String.t() | atom())
      }
      
  """
  @type table_property_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t() | atom(),
        "QuotaCode" => String.t() | atom(),
        "ServiceCode" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_export_response() :: %{
        "Export" => export(),
        "ExportStatus" => export_status()
      }
      
  """
  @type get_export_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      execution_reference() :: %{
        "ExecutionId" => String.t() | atom(),
        "ExecutionStatus" => execution_status()
      }
      
  """
  @type execution_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_execution_request() :: %{
        required("ExecutionId") => String.t() | atom(),
        required("ExportArn") => String.t() | atom()
      }
      
  """
  @type get_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_export_response() :: %{
        "ExportArn" => String.t() | atom()
      }
      
  """
  @type update_export_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_export_request() :: %{
        required("Export") => export(),
        required("ExportArn") => String.t() | atom()
      }
      
  """
  @type update_export_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      table() :: %{
        "Description" => String.t() | atom(),
        "TableName" => String.t() | atom(),
        "TableProperties" => list(table_property_description())
      }
      
  """
  @type table() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      export() :: %{
        "DataQuery" => data_query(),
        "Description" => String.t() | atom(),
        "DestinationConfigurations" => destination_configurations(),
        "ExportArn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RefreshCadence" => refresh_cadence()
      }
      
  """
  @type export() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_executions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ExportArn") => String.t() | atom()
      }
      
  """
  @type list_executions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tables_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_tables_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_exports_response() :: %{
        "Exports" => list(export_reference()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_exports_response() :: %{(String.t() | atom()) => any()}

  @type create_export_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type delete_export_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_execution_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_export_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_table_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type list_executions_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_exports_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type list_tables_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
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

  @type update_export_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2023-11-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "bcm-data-exports",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "BCM Data Exports",
      signature_version: "v4",
      signing_name: "bcm-data-exports",
      target_prefix: "AWSBillingAndCostManagementDataExports"
    }
  end

  @doc """
  Creates a data export and specifies the data query, the delivery preference, and
  any
  optional resource tags.

  A `DataQuery` consists of both a `QueryStatement` and
  `TableConfigurations`.

  The `QueryStatement` is an SQL statement. Data Exports only supports a limited
  subset of the SQL syntax. For more information on the SQL syntax that is
  supported, see [Data query](https://docs.aws.amazon.com/cur/latest/userguide/de-data-query.html). To
  view the available tables and columns, see the [Data Exports table dictionary](https://docs.aws.amazon.com/cur/latest/userguide/de-table-dictionary.html).

  The `TableConfigurations` is a collection of specified
  `TableProperties` for the table being queried in the `QueryStatement`.
  TableProperties are additional configurations you can provide to change the data
  and schema of
  a table. Each table can have different TableProperties. However, tables are not
  required to
  have any TableProperties. Each table property has a default value that it
  assumes if not
  specified. For more information on table configurations, see [Data query](https://docs.aws.amazon.com/cur/latest/userguide/de-data-query.html). To
  view the table properties available for each table, see the [Data Exports table dictionary](https://docs.aws.amazon.com/cur/latest/userguide/de-table-dictionary.html)
  or use the `ListTables` API to get a response of all tables
  and their available properties.
  """
  @spec create_export(map(), create_export_request(), list()) ::
          {:ok, create_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_export_errors()}
  def create_export(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateExport", input, options)
  end

  @doc """
  Deletes an existing data export.
  """
  @spec delete_export(map(), delete_export_request(), list()) ::
          {:ok, delete_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_export_errors()}
  def delete_export(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteExport", input, options)
  end

  @doc """
  Exports data based on the source data update.
  """
  @spec get_execution(map(), get_execution_request(), list()) ::
          {:ok, get_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_execution_errors()}
  def get_execution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetExecution", input, options)
  end

  @doc """
  Views the definition of an existing data export.
  """
  @spec get_export(map(), get_export_request(), list()) ::
          {:ok, get_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_export_errors()}
  def get_export(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetExport", input, options)
  end

  @doc """
  Returns the metadata for the specified table and table properties.

  This includes the list
  of columns in the table schema, their data types, and column descriptions.
  """
  @spec get_table(map(), get_table_request(), list()) ::
          {:ok, get_table_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_table_errors()}
  def get_table(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTable", input, options)
  end

  @doc """
  Lists the historical executions for the export.
  """
  @spec list_executions(map(), list_executions_request(), list()) ::
          {:ok, list_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_executions_errors()}
  def list_executions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListExecutions", input, options)
  end

  @doc """
  Lists all data export definitions.
  """
  @spec list_exports(map(), list_exports_request(), list()) ::
          {:ok, list_exports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_exports_errors()}
  def list_exports(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListExports", input, options)
  end

  @doc """
  Lists all available tables in data exports.
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
  List tags associated with an existing data export.
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

  @doc """
  Adds tags for an existing data export definition.
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
  Deletes tags associated with an existing data export definition.
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
  Updates an existing data export by overwriting all export parameters.

  All export
  parameters must be provided in the UpdateExport request.
  """
  @spec update_export(map(), update_export_request(), list()) ::
          {:ok, update_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_export_errors()}
  def update_export(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateExport", input, options)
  end
end
