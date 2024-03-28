# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Honeycode do
  @moduledoc """

  Amazon Honeycode is a fully managed service that allows you to quickly build
  mobile and web apps for teams—without
  programming.

  Build Honeycode apps for managing almost anything, like projects, customers,
  operations, approvals,
  resources, and even your team.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_table_rows_result() :: %{
        "columnIds" => list(String.t()()),
        "nextToken" => String.t(),
        "rowIdsNotFound" => list(String.t()()),
        "rows" => list(table_row()()),
        "workbookCursor" => float()
      }

  """
  @type list_table_rows_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delimited_text_import_options() :: %{
        "dataCharacterEncoding" => list(any()),
        "delimiter" => String.t(),
        "hasHeaderRow" => boolean(),
        "ignoreEmptyRows" => boolean()
      }

  """
  @type delimited_text_import_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_options() :: %{
        "delimitedTextOptions" => delimited_text_import_options(),
        "destinationOptions" => destination_options()
      }

  """
  @type import_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_table_rows_result() :: %{
        "columnIds" => list(String.t()()),
        "nextToken" => String.t(),
        "rows" => list(table_row()()),
        "workbookCursor" => float()
      }

  """
  @type query_table_rows_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_table_data_import_job_result() :: %{
        "errorCode" => list(any()),
        "jobMetadata" => table_data_import_job_metadata(),
        "jobStatus" => list(any()),
        "message" => String.t()
      }

  """
  @type describe_table_data_import_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_row_data() :: %{
        "batchItemId" => String.t(),
        "cellsToCreate" => map()
      }

  """
  @type create_row_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_table_rows_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("rowIds") => list(String.t()())
      }

  """
  @type list_table_rows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_table_rows_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("filterFormula") => filter()
      }

  """
  @type query_table_rows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_screen_automation_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("rowId") => String.t(),
        optional("variables") => map()
      }

  """
  @type invoke_screen_automation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_metadata() :: %{
        "format" => list(any()),
        "name" => String.t()
      }

  """
  @type column_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_result() :: %{}

  """
  @type untag_resource_result() :: %{}

  @typedoc """

  ## Example:

      automation_execution_exception() :: %{
        "message" => String.t()
      }

  """
  @type automation_execution_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_row_data() :: %{
        "cellsToUpdate" => map(),
        "rowId" => String.t()
      }

  """
  @type update_row_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_item() :: %{
        "formattedValue" => String.t(),
        "overrideFormat" => list(any()),
        "rawValue" => String.t()
      }

  """
  @type data_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cell() :: %{
        "format" => list(any()),
        "formattedValue" => String.t(),
        "formattedValues" => list(String.t()()),
        "formula" => String.t(),
        "rawValue" => String.t()
      }

  """
  @type cell() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_table_rows_request() :: %{
        optional("clientRequestToken") => String.t(),
        required("rowIds") => list(String.t()())
      }

  """
  @type batch_delete_table_rows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      request_timeout_exception() :: %{
        "message" => String.t()
      }

  """
  @type request_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_data_import_job_metadata() :: %{
        "dataSource" => import_data_source(),
        "importOptions" => import_options(),
        "submitTime" => non_neg_integer(),
        "submitter" => import_job_submitter()
      }

  """
  @type table_data_import_job_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upsert_row_data() :: %{
        "batchItemId" => String.t(),
        "cellsToUpdate" => map(),
        "filter" => filter()
      }

  """
  @type upsert_row_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_upsert_table_rows_request() :: %{
        optional("clientRequestToken") => String.t(),
        required("rowsToUpsert") => list(upsert_row_data()())
      }

  """
  @type batch_upsert_table_rows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_create_table_rows_request() :: %{
        optional("clientRequestToken") => String.t(),
        required("rowsToCreate") => list(create_row_data()())
      }

  """
  @type batch_create_table_rows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_row() :: %{
        "cells" => list(cell()()),
        "rowId" => String.t()
      }

  """
  @type table_row() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table_column() :: %{
        "format" => list(any()),
        "tableColumnId" => String.t(),
        "tableColumnName" => String.t()
      }

  """
  @type table_column() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      result_row() :: %{
        "dataItems" => list(data_item()()),
        "rowId" => String.t()
      }

  """
  @type result_row() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_table_rows_request() :: %{
        optional("clientRequestToken") => String.t(),
        required("rowsToUpdate") => list(update_row_data()())
      }

  """
  @type batch_update_table_rows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_table_columns_result() :: %{
        "nextToken" => String.t(),
        "tableColumns" => list(table_column()()),
        "workbookCursor" => float()
      }

  """
  @type list_table_columns_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_job_submitter() :: %{
        "email" => String.t(),
        "userArn" => String.t()
      }

  """
  @type import_job_submitter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "contextRowId" => String.t(),
        "formula" => String.t()
      }

  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_table_rows_result() :: %{
        "failedBatchItems" => list(failed_batch_item()()),
        "workbookCursor" => float()
      }

  """
  @type batch_update_table_rows_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      automation_execution_timeout_exception() :: %{
        "message" => String.t()
      }

  """
  @type automation_execution_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upsert_rows_result() :: %{
        "rowIds" => list(String.t()()),
        "upsertAction" => list(any())
      }

  """
  @type upsert_rows_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_table_columns_request() :: %{
        optional("nextToken") => String.t()
      }

  """
  @type list_table_columns_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      failed_batch_item() :: %{
        "errorMessage" => String.t(),
        "id" => String.t()
      }

  """
  @type failed_batch_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_result() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_screen_data_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("variables") => map(),
        required("appId") => String.t(),
        required("screenId") => String.t(),
        required("workbookId") => String.t()
      }

  """
  @type get_screen_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_table_data_import_job_request() :: %{
        required("clientRequestToken") => String.t(),
        required("dataFormat") => list(any()),
        required("dataSource") => import_data_source(),
        required("importOptions") => import_options()
      }

  """
  @type start_table_data_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      destination_options() :: %{
        "columnMap" => map()
      }

  """
  @type destination_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_table_data_import_job_request() :: %{}

  """
  @type describe_table_data_import_job_request() :: %{}

  @typedoc """

  ## Example:

      result_set() :: %{
        "headers" => list(column_metadata()()),
        "rows" => list(result_row()())
      }

  """
  @type result_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tables_result() :: %{
        "nextToken" => String.t(),
        "tables" => list(table()()),
        "workbookCursor" => float()
      }

  """
  @type list_tables_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      invoke_screen_automation_result() :: %{
        "workbookCursor" => float()
      }

  """
  @type invoke_screen_automation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_upsert_table_rows_result() :: %{
        "failedBatchItems" => list(failed_batch_item()()),
        "rows" => map(),
        "workbookCursor" => float()
      }

  """
  @type batch_upsert_table_rows_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_table_data_import_job_result() :: %{
        "jobId" => String.t(),
        "jobStatus" => list(any())
      }

  """
  @type start_table_data_import_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_screen_data_result() :: %{
        "nextToken" => String.t(),
        "results" => map(),
        "workbookCursor" => float()
      }

  """
  @type get_screen_data_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_result() :: %{}

  """
  @type tag_resource_result() :: %{}

  @typedoc """

  ## Example:

      variable_value() :: %{
        "rawValue" => String.t()
      }

  """
  @type variable_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_data_source() :: %{
        "dataSourceConfig" => import_data_source_config()
      }

  """
  @type import_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_data_source_config() :: %{
        "dataSourceUrl" => String.t()
      }

  """
  @type import_data_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source_data_column_properties() :: %{
        "columnIndex" => integer()
      }

  """
  @type source_data_column_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_create_table_rows_result() :: %{
        "createdRows" => map(),
        "failedBatchItems" => list(failed_batch_item()()),
        "workbookCursor" => float()
      }

  """
  @type batch_create_table_rows_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      table() :: %{
        "tableId" => String.t(),
        "tableName" => String.t()
      }

  """
  @type table() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_table_rows_result() :: %{
        "failedBatchItems" => list(failed_batch_item()()),
        "workbookCursor" => float()
      }

  """
  @type batch_delete_table_rows_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cell_input() :: %{
        "fact" => String.t(),
        "facts" => list(String.t()())
      }

  """
  @type cell_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tables_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_tables_request() :: %{String.t() => any()}

  @type batch_create_table_rows_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type batch_delete_table_rows_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type batch_update_table_rows_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type batch_upsert_table_rows_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type describe_table_data_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_screen_data_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type invoke_screen_automation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | automation_execution_timeout_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_timeout_exception()
          | automation_execution_exception()

  @type list_table_columns_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type list_table_rows_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type list_tables_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type query_table_rows_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type start_table_data_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  def metadata do
    %{
      api_version: "2020-03-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "honeycode",
      global?: false,
      protocol: "rest-json",
      service_id: "Honeycode",
      signature_version: "v4",
      signing_name: "honeycode",
      target_prefix: nil
    }
  end

  @doc """

  The BatchCreateTableRows API allows you to create one or more rows at the end of
  a table in a workbook.

  The API allows you to specify the values to set in some or all of the columns in
  the new rows.

  If a column is not explicitly set in a specific row, then the column level
  formula specified in the table
  will be applied to the new row. If there is no column level formula but the last
  row of the table has a
  formula, then that formula will be copied down to the new row. If there is no
  column level formula and
  no formula in the last row of the table, then that column will be left blank for
  the new rows.
  """
  @spec batch_create_table_rows(
          map(),
          String.t(),
          String.t(),
          batch_create_table_rows_request(),
          list()
        ) ::
          {:ok, batch_create_table_rows_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_create_table_rows_errors()}
  def batch_create_table_rows(%Client{} = client, table_id, workbook_id, input, options \\ []) do
    url_path =
      "/workbooks/#{AWS.Util.encode_uri(workbook_id)}/tables/#{AWS.Util.encode_uri(table_id)}/rows/batchcreate"

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

  The BatchDeleteTableRows API allows you to delete one or more rows from a table
  in a workbook.

  You need to specify the ids of the rows that you want to delete from the table.
  """
  @spec batch_delete_table_rows(
          map(),
          String.t(),
          String.t(),
          batch_delete_table_rows_request(),
          list()
        ) ::
          {:ok, batch_delete_table_rows_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_table_rows_errors()}
  def batch_delete_table_rows(%Client{} = client, table_id, workbook_id, input, options \\ []) do
    url_path =
      "/workbooks/#{AWS.Util.encode_uri(workbook_id)}/tables/#{AWS.Util.encode_uri(table_id)}/rows/batchdelete"

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

  The BatchUpdateTableRows API allows you to update one or more rows in a table in
  a workbook.

  You can specify the values to set in some or all of the columns in the table for
  the specified
  rows.
  If a column is not explicitly specified in a particular row, then that column
  will not be updated
  for that row. To clear out the data in a specific cell, you need to set the
  value as an empty string
  ("").
  """
  @spec batch_update_table_rows(
          map(),
          String.t(),
          String.t(),
          batch_update_table_rows_request(),
          list()
        ) ::
          {:ok, batch_update_table_rows_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_update_table_rows_errors()}
  def batch_update_table_rows(%Client{} = client, table_id, workbook_id, input, options \\ []) do
    url_path =
      "/workbooks/#{AWS.Util.encode_uri(workbook_id)}/tables/#{AWS.Util.encode_uri(table_id)}/rows/batchupdate"

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

  The BatchUpsertTableRows API allows you to upsert one or more rows in a table.

  The upsert
  operation takes a filter expression as input and evaluates it to find matching
  rows on the destination
  table. If matching rows are found, it will update the cells in the matching rows
  to new values specified
  in the request. If no matching rows are found, a new row is added at the end of
  the table and the cells in
  that row are set to the new values specified in the request.

  You can specify the values to set in some or all of the columns in the table for
  the
  matching or newly appended rows. If a column is not explicitly specified for a
  particular row, then that
  column will not be updated for that row. To clear out the data in a specific
  cell, you need to set the value
  as an empty string ("").
  """
  @spec batch_upsert_table_rows(
          map(),
          String.t(),
          String.t(),
          batch_upsert_table_rows_request(),
          list()
        ) ::
          {:ok, batch_upsert_table_rows_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_upsert_table_rows_errors()}
  def batch_upsert_table_rows(%Client{} = client, table_id, workbook_id, input, options \\ []) do
    url_path =
      "/workbooks/#{AWS.Util.encode_uri(workbook_id)}/tables/#{AWS.Util.encode_uri(table_id)}/rows/batchupsert"

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

  The DescribeTableDataImportJob API allows you to retrieve the status and details
  of a table data import job.
  """
  @spec describe_table_data_import_job(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_table_data_import_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_table_data_import_job_errors()}
  def describe_table_data_import_job(
        %Client{} = client,
        job_id,
        table_id,
        workbook_id,
        options \\ []
      ) do
    url_path =
      "/workbooks/#{AWS.Util.encode_uri(workbook_id)}/tables/#{AWS.Util.encode_uri(table_id)}/import/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  The GetScreenData API allows retrieval of data from a screen in a Honeycode app.

  The API allows setting local variables in the screen to filter, sort or
  otherwise affect what will be
  displayed on the screen.
  """
  @spec get_screen_data(map(), get_screen_data_request(), list()) ::
          {:ok, get_screen_data_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_screen_data_errors()}
  def get_screen_data(%Client{} = client, input, options \\ []) do
    url_path = "/screendata"
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

  The InvokeScreenAutomation API allows invoking an action defined in a screen in
  a Honeycode app.

  The API allows setting local variables, which can then be used in the automation
  being invoked.
  This allows automating the Honeycode app interactions to write, update or delete
  data in the workbook.
  """
  @spec invoke_screen_automation(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          invoke_screen_automation_request(),
          list()
        ) ::
          {:ok, invoke_screen_automation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_screen_automation_errors()}
  def invoke_screen_automation(
        %Client{} = client,
        app_id,
        screen_automation_id,
        screen_id,
        workbook_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workbooks/#{AWS.Util.encode_uri(workbook_id)}/apps/#{AWS.Util.encode_uri(app_id)}/screens/#{AWS.Util.encode_uri(screen_id)}/automations/#{AWS.Util.encode_uri(screen_automation_id)}"

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

  The ListTableColumns API allows you to retrieve a list of all the columns in a
  table in a workbook.
  """
  @spec list_table_columns(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, list_table_columns_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_table_columns_errors()}
  def list_table_columns(
        %Client{} = client,
        table_id,
        workbook_id,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/workbooks/#{AWS.Util.encode_uri(workbook_id)}/tables/#{AWS.Util.encode_uri(table_id)}/columns"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  The ListTableRows API allows you to retrieve a list of all the rows in a table
  in a workbook.
  """
  @spec list_table_rows(map(), String.t(), String.t(), list_table_rows_request(), list()) ::
          {:ok, list_table_rows_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_table_rows_errors()}
  def list_table_rows(%Client{} = client, table_id, workbook_id, input, options \\ []) do
    url_path =
      "/workbooks/#{AWS.Util.encode_uri(workbook_id)}/tables/#{AWS.Util.encode_uri(table_id)}/rows/list"

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

  The ListTables API allows you to retrieve a list of all the tables in a
  workbook.
  """
  @spec list_tables(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_tables_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tables_errors()}
  def list_tables(
        %Client{} = client,
        workbook_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/workbooks/#{AWS.Util.encode_uri(workbook_id)}/tables"
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

  The ListTagsForResource API allows you to return a resource's tags.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  The QueryTableRows API allows you to use a filter formula to query for specific
  rows in a table.
  """
  @spec query_table_rows(map(), String.t(), String.t(), query_table_rows_request(), list()) ::
          {:ok, query_table_rows_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, query_table_rows_errors()}
  def query_table_rows(%Client{} = client, table_id, workbook_id, input, options \\ []) do
    url_path =
      "/workbooks/#{AWS.Util.encode_uri(workbook_id)}/tables/#{AWS.Util.encode_uri(table_id)}/rows/query"

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

  The StartTableDataImportJob API allows you to start an import job on a table.

  This API will only return
  the id of the job that was started. To find out the status of the import
  request, you need to call the
  DescribeTableDataImportJob API.
  """
  @spec start_table_data_import_job(
          map(),
          String.t(),
          String.t(),
          start_table_data_import_job_request(),
          list()
        ) ::
          {:ok, start_table_data_import_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_table_data_import_job_errors()}
  def start_table_data_import_job(
        %Client{} = client,
        destination_table_id,
        workbook_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workbooks/#{AWS.Util.encode_uri(workbook_id)}/tables/#{AWS.Util.encode_uri(destination_table_id)}/import"

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

  The TagResource API allows you to add tags to an ARN-able resource.

  Resource includes workbook, table,
  screen and screen-automation.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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

  The UntagResource API allows you to removes tags from an ARN-able resource.

  Resource includes workbook, table,
  screen and screen-automation.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
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
      200
    )
  end
end
