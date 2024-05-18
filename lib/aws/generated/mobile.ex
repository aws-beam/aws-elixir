# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Mobile do
  @moduledoc """

  AWS Mobile Service provides mobile app and website developers with capabilities
  required to configure AWS resources and bootstrap their developer desktop
  projects
  with the necessary SDKs, constants, tools and samples to make use of those
  resources.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      account_action_required_exception() :: %{
        "message" => String.t()
      }

  """
  @type account_action_required_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bundle_details() :: %{
        "availablePlatforms" => list(list(any())()),
        "bundleId" => String.t(),
        "description" => String.t(),
        "iconUrl" => String.t(),
        "title" => String.t(),
        "version" => String.t()
      }

  """
  @type bundle_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_request() :: %{
        optional("contents") => binary(),
        optional("name") => String.t(),
        optional("region") => String.t(),
        optional("snapshotId") => String.t()
      }

  """
  @type create_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_project_result() :: %{
        "details" => project_details()
      }

  """
  @type create_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_project_request() :: %{}

  """
  @type delete_project_request() :: %{}

  @typedoc """

  ## Example:

      delete_project_result() :: %{
        "deletedResources" => list(resource()()),
        "orphanedResources" => list(resource()())
      }

  """
  @type delete_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_bundle_request() :: %{}

  """
  @type describe_bundle_request() :: %{}

  @typedoc """

  ## Example:

      describe_bundle_result() :: %{
        "details" => bundle_details()
      }

  """
  @type describe_bundle_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_project_request() :: %{
        optional("syncFromResources") => boolean(),
        required("projectId") => String.t()
      }

  """
  @type describe_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_project_result() :: %{
        "details" => project_details()
      }

  """
  @type describe_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_bundle_request() :: %{
        optional("platform") => list(any()),
        optional("projectId") => String.t()
      }

  """
  @type export_bundle_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_bundle_result() :: %{
        "downloadUrl" => String.t()
      }

  """
  @type export_bundle_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_project_request() :: %{}

  """
  @type export_project_request() :: %{}

  @typedoc """

  ## Example:

      export_project_result() :: %{
        "downloadUrl" => String.t(),
        "shareUrl" => String.t(),
        "snapshotId" => String.t()
      }

  """
  @type export_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bundles_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_bundles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bundles_result() :: %{
        "bundleList" => list(bundle_details()()),
        "nextToken" => String.t()
      }

  """
  @type list_bundles_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_projects_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_projects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_projects_result() :: %{
        "nextToken" => String.t(),
        "projects" => list(project_summary()())
      }

  """
  @type list_projects_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      project_details() :: %{
        "consoleUrl" => String.t(),
        "createdDate" => non_neg_integer(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t(),
        "projectId" => String.t(),
        "region" => String.t(),
        "resources" => list(resource()()),
        "state" => list(any())
      }

  """
  @type project_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      project_summary() :: %{
        "name" => String.t(),
        "projectId" => String.t()
      }

  """
  @type project_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "arn" => String.t(),
        "attributes" => map(),
        "feature" => String.t(),
        "name" => String.t(),
        "type" => String.t()
      }

  """
  @type resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t()
      }

  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_project_request() :: %{
        optional("contents") => binary(),
        required("projectId") => String.t()
      }

  """
  @type update_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_project_result() :: %{
        "details" => project_details()
      }

  """
  @type update_project_result() :: %{String.t() => any()}

  @type create_project_errors() ::
          unauthorized_exception()
          | too_many_requests_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | limit_exceeded_exception()
          | internal_failure_exception()
          | bad_request_exception()

  @type delete_project_errors() ::
          unauthorized_exception()
          | too_many_requests_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type describe_bundle_errors() ::
          unauthorized_exception()
          | too_many_requests_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | internal_failure_exception()
          | bad_request_exception()

  @type describe_project_errors() ::
          unauthorized_exception()
          | too_many_requests_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | internal_failure_exception()
          | bad_request_exception()

  @type export_bundle_errors() ::
          unauthorized_exception()
          | too_many_requests_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | internal_failure_exception()
          | bad_request_exception()

  @type export_project_errors() ::
          unauthorized_exception()
          | too_many_requests_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | internal_failure_exception()
          | bad_request_exception()

  @type list_bundles_errors() ::
          unauthorized_exception()
          | too_many_requests_exception()
          | service_unavailable_exception()
          | internal_failure_exception()
          | bad_request_exception()

  @type list_projects_errors() ::
          unauthorized_exception()
          | too_many_requests_exception()
          | service_unavailable_exception()
          | internal_failure_exception()
          | bad_request_exception()

  @type update_project_errors() ::
          unauthorized_exception()
          | too_many_requests_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | limit_exceeded_exception()
          | internal_failure_exception()
          | bad_request_exception()
          | account_action_required_exception()

  def metadata do
    %{
      api_version: "2017-07-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mobile",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Mobile",
      signature_version: "v4",
      signing_name: "AWSMobileHubService",
      target_prefix: nil
    }
  end

  @doc """

  Creates an AWS Mobile Hub project.
  """
  @spec create_project(map(), create_project_request(), list()) ::
          {:ok, create_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_project_errors()}
  def create_project(%Client{} = client, input, options \\ []) do
    url_path = "/projects"
    headers = []

    {query_params, input} =
      [
        {"name", "name"},
        {"region", "region"},
        {"snapshotId", "snapshotId"}
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
      200
    )
  end

  @doc """

  Delets a project in AWS Mobile Hub.
  """
  @spec delete_project(map(), String.t(), delete_project_request(), list()) ::
          {:ok, delete_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_project_errors()}
  def delete_project(%Client{} = client, project_id, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}"
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

  Get the bundle details for the requested bundle id.
  """
  @spec describe_bundle(map(), String.t(), list()) ::
          {:ok, describe_bundle_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_bundle_errors()}
  def describe_bundle(%Client{} = client, bundle_id, options \\ []) do
    url_path = "/bundles/#{AWS.Util.encode_uri(bundle_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Gets details about a project in AWS Mobile Hub.
  """
  @spec describe_project(map(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_project_errors()}
  def describe_project(%Client{} = client, project_id, sync_from_resources \\ nil, options \\ []) do
    url_path = "/project"
    headers = []
    query_params = []

    query_params =
      if !is_nil(sync_from_resources) do
        [{"syncFromResources", sync_from_resources} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(project_id) do
        [{"projectId", project_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Generates customized software development kit (SDK) and or tool packages
  used to integrate mobile web or mobile app clients with backend AWS resources.
  """
  @spec export_bundle(map(), String.t(), export_bundle_request(), list()) ::
          {:ok, export_bundle_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_bundle_errors()}
  def export_bundle(%Client{} = client, bundle_id, input, options \\ []) do
    url_path = "/bundles/#{AWS.Util.encode_uri(bundle_id)}"
    headers = []

    {query_params, input} =
      [
        {"platform", "platform"},
        {"projectId", "projectId"}
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
      200
    )
  end

  @doc """

  Exports project configuration to a snapshot which can be downloaded and shared.

  Note that mobile app push credentials are encrypted in exported projects, so
  they
  can only be shared successfully within the same AWS account.
  """
  @spec export_project(map(), String.t(), export_project_request(), list()) ::
          {:ok, export_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_project_errors()}
  def export_project(%Client{} = client, project_id, input, options \\ []) do
    url_path = "/exports/#{AWS.Util.encode_uri(project_id)}"
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

  List all available bundles.
  """
  @spec list_bundles(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_bundles_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_bundles_errors()}
  def list_bundles(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/bundles"
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

  Lists projects in AWS Mobile Hub.
  """
  @spec list_projects(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_projects_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_projects_errors()}
  def list_projects(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/projects"
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

  Update an existing project.
  """
  @spec update_project(map(), update_project_request(), list()) ::
          {:ok, update_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_project_errors()}
  def update_project(%Client{} = client, input, options \\ []) do
    url_path = "/update"
    headers = []

    {query_params, input} =
      [
        {"projectId", "projectId"}
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
      200
    )
  end
end
