# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppFabric do
  @moduledoc """
  Amazon Web Services AppFabric quickly connects software as a service (SaaS)
  applications across your
  organization.

  This allows IT and security teams to easily manage and secure applications
  using a standard schema, and employees can complete everyday tasks faster using
  generative
  artificial intelligence (AI). You can use these APIs to complete AppFabric
  tasks, such as
  setting up audit log ingestions or viewing user access. For more information
  about AppFabric,
  including the required permissions to use the service, see the [Amazon Web Services AppFabric Administration
  Guide](https://docs.aws.amazon.com/appfabric/latest/adminguide/). For more
  information about using the Command Line Interface (CLI) to manage your
  AppFabric resources, see the [AppFabric section of the CLI Reference](https://docs.aws.amazon.com/cli/latest/reference/appfabric/index.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2023-05-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "appfabric",
      global?: false,
      protocol: "rest-json",
      service_id: "AppFabric",
      signature_version: "v4",
      signing_name: "appfabric",
      target_prefix: nil
    }
  end

  @doc """
  Gets user access details in a batch request.

  This action polls data from the tasks that are kicked off by the
  `StartUserAccessTasks` action.
  """
  def batch_get_user_access_tasks(%Client{} = client, input, options \\ []) do
    url_path = "/useraccess/batchget"
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
  Establishes a connection between Amazon Web Services AppFabric and an
  application, which allows AppFabric to
  call the APIs of the application.
  """
  def connect_app_authorization(
        %Client{} = client,
        app_authorization_identifier,
        app_bundle_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/appauthorizations/#{AWS.Util.encode_uri(app_authorization_identifier)}/connect"

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
  Creates an app authorization within an app bundle, which allows AppFabric to
  connect to an
  application.
  """
  def create_app_authorization(%Client{} = client, app_bundle_identifier, input, options \\ []) do
    url_path = "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/appauthorizations"
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
  Creates an app bundle to collect data from an application using AppFabric.
  """
  def create_app_bundle(%Client{} = client, input, options \\ []) do
    url_path = "/appbundles"
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
  Creates a data ingestion for an application.
  """
  def create_ingestion(%Client{} = client, app_bundle_identifier, input, options \\ []) do
    url_path = "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions"
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
  Creates an ingestion destination, which specifies how an application's ingested
  data is
  processed by Amazon Web Services AppFabric and where it's delivered.
  """
  def create_ingestion_destination(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}/ingestiondestinations"

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
  Deletes an app authorization.

  You must delete the associated ingestion before you can
  delete an app authorization.
  """
  def delete_app_authorization(
        %Client{} = client,
        app_authorization_identifier,
        app_bundle_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/appauthorizations/#{AWS.Util.encode_uri(app_authorization_identifier)}"

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
  Deletes an app bundle.

  You must delete all associated app authorizations before you can
  delete an app bundle.
  """
  def delete_app_bundle(%Client{} = client, app_bundle_identifier, input, options \\ []) do
    url_path = "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}"
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
  Deletes an ingestion.

  You must stop (disable) the ingestion and you must delete all
  associated ingestion destinations before you can delete an app ingestion.
  """
  def delete_ingestion(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}"

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
  Deletes an ingestion destination.

  This deletes the association between an ingestion and it's destination. It
  doesn't
  delete previously ingested data or the storage destination, such as the Amazon
  S3
  bucket where the data is delivered. If the ingestion destination is deleted
  while the
  associated ingestion is enabled, the ingestion will fail and is eventually
  disabled.
  """
  def delete_ingestion_destination(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_destination_identifier,
        ingestion_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}/ingestiondestinations/#{AWS.Util.encode_uri(ingestion_destination_identifier)}"

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
  Returns information about an app authorization.
  """
  def get_app_authorization(
        %Client{} = client,
        app_authorization_identifier,
        app_bundle_identifier,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/appauthorizations/#{AWS.Util.encode_uri(app_authorization_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an app bundle.
  """
  def get_app_bundle(%Client{} = client, app_bundle_identifier, options \\ []) do
    url_path = "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an ingestion.
  """
  def get_ingestion(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_identifier,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an ingestion destination.
  """
  def get_ingestion_destination(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_destination_identifier,
        ingestion_identifier,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}/ingestiondestinations/#{AWS.Util.encode_uri(ingestion_destination_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all app authorizations configured for an app bundle.
  """
  def list_app_authorizations(
        %Client{} = client,
        app_bundle_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/appauthorizations"
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
  Returns a list of app bundles.
  """
  def list_app_bundles(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/appbundles"
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
  Returns a list of all ingestion destinations configured for an ingestion.
  """
  def list_ingestion_destinations(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}/ingestiondestinations"

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
  Returns a list of all ingestions configured for an app bundle.
  """
  def list_ingestions(
        %Client{} = client,
        app_bundle_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions"
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
  Returns a list of tags for a resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts (enables) an ingestion, which collects data from an application.
  """
  def start_ingestion(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}/start"

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
  Starts the tasks to search user access status for a specific email address.

  The tasks are stopped when the user access status data is found. The tasks are
  terminated when the API calls to the application time out.
  """
  def start_user_access_tasks(%Client{} = client, input, options \\ []) do
    url_path = "/useraccess/start"
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
  Stops (disables) an ingestion.
  """
  def stop_ingestion(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}/stop"

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
  Assigns one or more tags (key-value pairs) to the specified resource.
  """
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
  Removes a tag or tags from a resource.
  """
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

  @doc """
  Updates an app authorization within an app bundle, which allows AppFabric to
  connect to an
  application.

  If the app authorization was in a `connected` state, updating the app
  authorization will set it back to a `PendingConnect` state.
  """
  def update_app_authorization(
        %Client{} = client,
        app_authorization_identifier,
        app_bundle_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/appauthorizations/#{AWS.Util.encode_uri(app_authorization_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an ingestion destination, which specifies how an application's ingested
  data is
  processed by Amazon Web Services AppFabric and where it's delivered.
  """
  def update_ingestion_destination(
        %Client{} = client,
        app_bundle_identifier,
        ingestion_destination_identifier,
        ingestion_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/appbundles/#{AWS.Util.encode_uri(app_bundle_identifier)}/ingestions/#{AWS.Util.encode_uri(ingestion_identifier)}/ingestiondestinations/#{AWS.Util.encode_uri(ingestion_destination_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
