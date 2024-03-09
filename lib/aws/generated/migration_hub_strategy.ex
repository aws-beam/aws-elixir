# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MigrationHubStrategy do
  @moduledoc """
  Migration Hub Strategy Recommendations

  This API reference provides descriptions, syntax, and other details about each
  of the
  actions and data types for Migration Hub Strategy Recommendations (Strategy
  Recommendations).

  The topic for each action shows the API
  request parameters and the response. Alternatively, you can use one of the AWS
  SDKs to
  access an API that is tailored to the programming language or platform that
  you're using. For
  more information, see [AWS SDKs](http://aws.amazon.com/tools/#SDKs).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2020-02-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "migrationhub-strategy",
      global?: false,
      protocol: "rest-json",
      service_id: "MigrationHubStrategy",
      signature_version: "v4",
      signing_name: "migrationhub-strategy",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves details about an application component.
  """
  def get_application_component_details(
        %Client{} = client,
        application_component_id,
        options \\ []
      ) do
    url_path =
      "/get-applicationcomponent-details/#{AWS.Util.encode_uri(application_component_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of all the recommended strategies and tools for an application
  component
  running on a server.
  """
  def get_application_component_strategies(
        %Client{} = client,
        application_component_id,
        options \\ []
      ) do
    url_path =
      "/get-applicationcomponent-strategies/#{AWS.Util.encode_uri(application_component_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the status of an on-going assessment.
  """
  def get_assessment(%Client{} = client, id, options \\ []) do
    url_path = "/get-assessment/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details about a specific import task.
  """
  def get_import_file_task(%Client{} = client, id, options \\ []) do
    url_path = "/get-import-file-task/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve the latest ID of a specific assessment task.
  """
  def get_latest_assessment_id(%Client{} = client, options \\ []) do
    url_path = "/get-latest-assessment-id"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves your migration and modernization preferences.
  """
  def get_portfolio_preferences(%Client{} = client, options \\ []) do
    url_path = "/get-portfolio-preferences"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves overall summary including the number of servers to rehost and the
  overall
  number of anti-patterns.
  """
  def get_portfolio_summary(%Client{} = client, options \\ []) do
    url_path = "/get-portfolio-summary"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about the specified recommendation report.
  """
  def get_recommendation_report_details(%Client{} = client, id, options \\ []) do
    url_path = "/get-recommendation-report-details/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about a specified server.
  """
  def get_server_details(
        %Client{} = client,
        server_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/get-server-details/#{AWS.Util.encode_uri(server_id)}"
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
  Retrieves recommended strategies and tools for the specified server.
  """
  def get_server_strategies(%Client{} = client, server_id, options \\ []) do
    url_path = "/get-server-strategies/#{AWS.Util.encode_uri(server_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of all the servers fetched from customer vCenter using Strategy
  Recommendation Collector.
  """
  def list_analyzable_servers(%Client{} = client, input, options \\ []) do
    url_path = "/list-analyzable-servers"
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
  Retrieves a list of all the application components (processes).
  """
  def list_application_components(%Client{} = client, input, options \\ []) do
    url_path = "/list-applicationcomponents"
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
  Retrieves a list of all the installed collectors.
  """
  def list_collectors(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/list-collectors"
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
  Retrieves a list of all the imports performed.
  """
  def list_import_file_task(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/list-import-file-task"
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
  Returns a list of all the servers.
  """
  def list_servers(%Client{} = client, input, options \\ []) do
    url_path = "/list-servers"
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
  Saves the specified migration and modernization preferences.
  """
  def put_portfolio_preferences(%Client{} = client, input, options \\ []) do
    url_path = "/put-portfolio-preferences"
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
  Starts the assessment of an on-premises environment.
  """
  def start_assessment(%Client{} = client, input, options \\ []) do
    url_path = "/start-assessment"
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
  Starts a file import.
  """
  def start_import_file_task(%Client{} = client, input, options \\ []) do
    url_path = "/start-import-file-task"
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
  Starts generating a recommendation report.
  """
  def start_recommendation_report_generation(%Client{} = client, input, options \\ []) do
    url_path = "/start-recommendation-report-generation"
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
  Stops the assessment of an on-premises environment.
  """
  def stop_assessment(%Client{} = client, input, options \\ []) do
    url_path = "/stop-assessment"
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
  Updates the configuration of an application component.
  """
  def update_application_component_config(%Client{} = client, input, options \\ []) do
    url_path = "/update-applicationcomponent-config/"
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
  Updates the configuration of the specified server.
  """
  def update_server_config(%Client{} = client, input, options \\ []) do
    url_path = "/update-server-config/"
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
end
