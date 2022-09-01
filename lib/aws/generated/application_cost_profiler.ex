# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApplicationCostProfiler do
  @moduledoc """
  This reference provides descriptions of the AWS Application Cost Profiler API.

  The AWS Application Cost Profiler API provides programmatic access to view,
  create, update, and delete application cost report definitions, as well as to
  import your usage data into the Application Cost Profiler service.

  For more information about using this service, see the [AWS Application Cost Profiler User
  Guide](https://docs.aws.amazon.com/application-cost-profiler/latest/userguide/introduction.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2020-09-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "application-cost-profiler",
      global?: false,
      protocol: "rest-json",
      service_id: "ApplicationCostProfiler",
      signature_version: "v4",
      signing_name: "application-cost-profiler",
      target_prefix: nil
    }
  end

  @doc """
  Deletes the specified report definition in AWS Application Cost Profiler.

  This stops the report from being generated.
  """
  def delete_report_definition(%Client{} = client, report_id, input, options \\ []) do
    url_path = "/reportDefinition/#{AWS.Util.encode_uri(report_id)}"
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
      nil
    )
  end

  @doc """
  Retrieves the definition of a report already configured in AWS Application Cost
  Profiler.
  """
  def get_report_definition(%Client{} = client, report_id, options \\ []) do
    url_path = "/reportDefinition/#{AWS.Util.encode_uri(report_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Ingests application usage data from Amazon Simple Storage Service (Amazon S3).

  The data must already exist in the S3 location. As part of the action, AWS
  Application Cost Profiler copies the object from your S3 bucket to an S3 bucket
  owned by Amazon for processing asynchronously.
  """
  def import_application_usage(%Client{} = client, input, options \\ []) do
    url_path = "/importApplicationUsage"
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
      nil
    )
  end

  @doc """
  Retrieves a list of all reports and their configurations for your AWS account.

  The maximum number of reports is one.
  """
  def list_report_definitions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/reportDefinition"
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Creates the report definition for a report in Application Cost Profiler.
  """
  def put_report_definition(%Client{} = client, input, options \\ []) do
    url_path = "/reportDefinition"
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
      nil
    )
  end

  @doc """
  Updates existing report in AWS Application Cost Profiler.
  """
  def update_report_definition(%Client{} = client, report_id, input, options \\ []) do
    url_path = "/reportDefinition/#{AWS.Util.encode_uri(report_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end
end
