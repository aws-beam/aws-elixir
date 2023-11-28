# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BCMDataExports do
  @moduledoc """
  You can use the Data Exports API to create customized exports from multiple
  Amazon Web Services cost management and billing datasets, such as cost and usage
  data and cost optimization recommendations.

  The Data Exports API provides the following endpoint:

    * https://bcm-data-exports.us-east-1.api.aws
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2023-11-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "bcm-data-exports",
      global?: false,
      protocol: "json",
      service_id: "BCM Data Exports",
      signature_version: "v4",
      signing_name: "bcm-data-exports",
      target_prefix: "AWSBillingAndCostManagementDataExports"
    }
  end

  @doc """
  Creates a data export and specifies the data query, the delivery preference, and
  any optional resource tags.

  A `DataQuery` consists of both a `QueryStatement` and `TableConfigurations`.

  The `QueryStatement` is an SQL statement. Data Exports only supports a limited
  subset of the SQL syntax. For more information on the SQL syntax that is
  supported, see [Data query](https://docs.aws.amazon.com/cur/latest/userguide/de-data-query.html). To
  view the available tables and columns, see the [Data Exports table dictionary](https://docs.aws.amazon.com/cur/latest/userguide/de-table-dictionary.html).

  The `TableConfigurations` is a collection of specified `TableProperties` for the
  table being queried in the `QueryStatement`. TableProperties are additional
  configurations you can provide to change the data and schema of a table. Each
  table can have different TableProperties. However, tables are not required to
  have any TableProperties. Each table property has a default value that it
  assumes if not specified. For more information on table configurations, see
  [Data query](https://docs.aws.amazon.com/cur/latest/userguide/de-data-query.html). To
  view the table properties available for each table, see the [Data Exports table dictionary](https://docs.aws.amazon.com/cur/latest/userguide/de-table-dictionary.html)
  or use the `ListTables` API to get a response of all tables and their available
  properties.
  """
  def create_export(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateExport", input, options)
  end

  @doc """
  Deletes an existing data export.
  """
  def delete_export(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteExport", input, options)
  end

  @doc """
  Exports data based on the source data update.
  """
  def get_execution(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetExecution", input, options)
  end

  @doc """
  Views the definition of an existing data export.
  """
  def get_export(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetExport", input, options)
  end

  @doc """
  Returns the metadata for the specified table and table properties.

  This includes the list of columns in the table schema, their data types, and
  column descriptions.
  """
  def get_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTable", input, options)
  end

  @doc """
  Lists the historical executions for the export.
  """
  def list_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListExecutions", input, options)
  end

  @doc """
  Lists all data export definitions.
  """
  def list_exports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListExports", input, options)
  end

  @doc """
  Lists all available tables in data exports.
  """
  def list_tables(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTables", input, options)
  end

  @doc """
  List tags associated with an existing data export.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Adds tags for an existing data export definition.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes tags associated with an existing data export definition.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an existing data export by overwriting all export parameters.

  All export parameters must be provided in the UpdateExport request.
  """
  def update_export(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateExport", input, options)
  end
end
