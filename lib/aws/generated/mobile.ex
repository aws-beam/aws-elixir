# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Mobile do
  @moduledoc """
  AWS Mobile Service provides mobile app and website developers with capabilities
  required to configure AWS resources and bootstrap their developer desktop
  projects with the necessary SDKs, constants, tools and samples to make use of
  those resources.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-07-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mobile",
      global?: false,
      protocol: "rest-json",
      service_id: nil,
      signature_version: "v4",
      signing_name: "AWSMobileHubService",
      target_prefix: nil
    }
  end

  @doc """
  Creates an AWS Mobile Hub project.
  """
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
  Delets a project in AWS Mobile Hub.
  """
  def delete_project(%Client{} = client, project_id, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Get the bundle details for the requested bundle id.
  """
  def describe_bundle(%Client{} = client, bundle_id, options \\ []) do
    url_path = "/bundles/#{AWS.Util.encode_uri(bundle_id)}"
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
  Gets details about a project in AWS Mobile Hub.
  """
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
  Generates customized software development kit (SDK) and or tool packages used to
  integrate mobile web or mobile app clients with backend AWS resources.
  """
  def export_bundle(%Client{} = client, bundle_id, input, options \\ []) do
    url_path = "/bundles/#{AWS.Util.encode_uri(bundle_id)}"
    headers = []

    {query_params, input} =
      [
        {"platform", "platform"},
        {"projectId", "projectId"}
      ]
      |> Request.build_params(input)

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
  Exports project configuration to a snapshot which can be downloaded and shared.

  Note that mobile app push credentials are encrypted in exported projects, so
  they can only be shared successfully within the same AWS account.
  """
  def export_project(%Client{} = client, project_id, input, options \\ []) do
    url_path = "/exports/#{AWS.Util.encode_uri(project_id)}"
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
  List all available bundles.
  """
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
  Lists projects in AWS Mobile Hub.
  """
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
  Update an existing project.
  """
  def update_project(%Client{} = client, input, options \\ []) do
    url_path = "/update"
    headers = []

    {query_params, input} =
      [
        {"projectId", "projectId"}
      ]
      |> Request.build_params(input)

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
