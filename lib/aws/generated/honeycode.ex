# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Honeycode do
  @moduledoc """
  Amazon Honeycode is a fully managed service that allows you to quickly build
  mobile and web apps for teams—without programming.

  Build Honeycode apps for managing almost anything, like projects, customers,
  operations, approvals, resources, and even your team.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
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
  formula specified in the table will be applied to the new row. If there is no
  column level formula but the last row of the table has a formula, then that
  formula will be copied down to the new row. If there is no column level formula
  and no formula in the last row of the table, then that column will be left blank
  for the new rows.
  """
  def batch_create_table_rows(%Client{} = client, table_id, workbook_id, input, options \\ []) do
    url_path =
      "/workbooks/#{URI.encode(workbook_id)}/tables/#{URI.encode(table_id)}/rows/batchcreate"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  The BatchDeleteTableRows API allows you to delete one or more rows from a table
  in a workbook.

  You need to specify the ids of the rows that you want to delete from the table.
  """
  def batch_delete_table_rows(%Client{} = client, table_id, workbook_id, input, options \\ []) do
    url_path =
      "/workbooks/#{URI.encode(workbook_id)}/tables/#{URI.encode(table_id)}/rows/batchdelete"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  The BatchUpdateTableRows API allows you to update one or more rows in a table in
  a workbook.

  You can specify the values to set in some or all of the columns in the table for
  the specified rows. If a column is not explicitly specified in a particular row,
  then that column will not be updated for that row. To clear out the data in a
  specific cell, you need to set the value as an empty string ("").
  """
  def batch_update_table_rows(%Client{} = client, table_id, workbook_id, input, options \\ []) do
    url_path =
      "/workbooks/#{URI.encode(workbook_id)}/tables/#{URI.encode(table_id)}/rows/batchupdate"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  The BatchUpsertTableRows API allows you to upsert one or more rows in a table.

  The upsert operation takes a filter expression as input and evaluates it to find
  matching rows on the destination table. If matching rows are found, it will
  update the cells in the matching rows to new values specified in the request. If
  no matching rows are found, a new row is added at the end of the table and the
  cells in that row are set to the new values specified in the request.

  You can specify the values to set in some or all of the columns in the table for
  the matching or newly appended rows. If a column is not explicitly specified for
  a particular row, then that column will not be updated for that row. To clear
  out the data in a specific cell, you need to set the value as an empty string
  ("").
  """
  def batch_upsert_table_rows(%Client{} = client, table_id, workbook_id, input, options \\ []) do
    url_path =
      "/workbooks/#{URI.encode(workbook_id)}/tables/#{URI.encode(table_id)}/rows/batchupsert"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  The DescribeTableDataImportJob API allows you to retrieve the status and details
  of a table data import job.
  """
  def describe_table_data_import_job(
        %Client{} = client,
        job_id,
        table_id,
        workbook_id,
        options \\ []
      ) do
    url_path =
      "/workbooks/#{URI.encode(workbook_id)}/tables/#{URI.encode(table_id)}/import/#{
        URI.encode(job_id)
      }"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  The GetScreenData API allows retrieval of data from a screen in a Honeycode app.

  The API allows setting local variables in the screen to filter, sort or
  otherwise affect what will be displayed on the screen.
  """
  def get_screen_data(%Client{} = client, input, options \\ []) do
    url_path = "/screendata"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  The InvokeScreenAutomation API allows invoking an action defined in a screen in
  a Honeycode app.

  The API allows setting local variables, which can then be used in the automation
  being invoked. This allows automating the Honeycode app interactions to write,
  update or delete data in the workbook.
  """
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
      "/workbooks/#{URI.encode(workbook_id)}/apps/#{URI.encode(app_id)}/screens/#{
        URI.encode(screen_id)
      }/automations/#{URI.encode(screen_automation_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  The ListTableColumns API allows you to retrieve a list of all the columns in a
  table in a workbook.
  """
  def list_table_columns(
        %Client{} = client,
        table_id,
        workbook_id,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/workbooks/#{URI.encode(workbook_id)}/tables/#{URI.encode(table_id)}/columns"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  The ListTableRows API allows you to retrieve a list of all the rows in a table
  in a workbook.
  """
  def list_table_rows(%Client{} = client, table_id, workbook_id, input, options \\ []) do
    url_path = "/workbooks/#{URI.encode(workbook_id)}/tables/#{URI.encode(table_id)}/rows/list"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  The ListTables API allows you to retrieve a list of all the tables in a
  workbook.
  """
  def list_tables(
        %Client{} = client,
        workbook_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/workbooks/#{URI.encode(workbook_id)}/tables"
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  The QueryTableRows API allows you to use a filter formula to query for specific
  rows in a table.
  """
  def query_table_rows(%Client{} = client, table_id, workbook_id, input, options \\ []) do
    url_path = "/workbooks/#{URI.encode(workbook_id)}/tables/#{URI.encode(table_id)}/rows/query"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  The StartTableDataImportJob API allows you to start an import job on a table.

  This API will only return the id of the job that was started. To find out the
  status of the import request, you need to call the DescribeTableDataImportJob
  API.
  """
  def start_table_data_import_job(
        %Client{} = client,
        destination_table_id,
        workbook_id,
        input,
        options \\ []
      ) do
    url_path =
      "/workbooks/#{URI.encode(workbook_id)}/tables/#{URI.encode(destination_table_id)}/import"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end