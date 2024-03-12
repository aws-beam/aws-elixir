# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoT1ClickProjects do
  @moduledoc """
  The AWS IoT 1-Click Projects API Reference
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  describe_project_response() :: %{
    "project" => project_description()
  }
  """
  @type describe_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("tags") => map()
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  project_description() :: %{
    "arn" => String.t(),
    "createdDate" => non_neg_integer(),
    "description" => String.t(),
    "placementTemplate" => placement_template(),
    "projectName" => String.t(),
    "tags" => map(),
    "updatedDate" => non_neg_integer()
  }
  """
  @type project_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_failure_exception() :: %{
    "code" => String.t(),
    "message" => String.t()
  }
  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_placement_request() :: %{
    optional("attributes") => map(),
    required("placementName") => String.t()
  }
  """
  @type create_placement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_placement_response() :: %{

  }
  """
  @type update_placement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  project_summary() :: %{
    "arn" => String.t(),
    "createdDate" => non_neg_integer(),
    "projectName" => String.t(),
    "tags" => map(),
    "updatedDate" => non_neg_integer()
  }
  """
  @type project_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_placements_request() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_placements_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_project_request() :: %{

  }
  """
  @type describe_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  placement_description() :: %{
    "attributes" => map(),
    "createdDate" => non_neg_integer(),
    "placementName" => String.t(),
    "projectName" => String.t(),
    "updatedDate" => non_neg_integer()
  }
  """
  @type placement_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  placement_template() :: %{
    "defaultAttributes" => map(),
    "deviceTemplates" => map()
  }
  """
  @type placement_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("tagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  too_many_requests_exception() :: %{
    "code" => String.t(),
    "message" => String.t()
  }
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_project_response() :: %{

  }
  """
  @type update_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_placements_response() :: %{
    "nextToken" => String.t(),
    "placements" => list(placement_summary()())
  }
  """
  @type list_placements_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_project_response() :: %{

  }
  """
  @type create_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "code" => String.t(),
    "message" => String.t()
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_request_exception() :: %{
    "code" => String.t(),
    "message" => String.t()
  }
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associate_device_with_placement_request() :: %{
    required("deviceId") => String.t()
  }
  """
  @type associate_device_with_placement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_placement_response() :: %{
    "placement" => placement_description()
  }
  """
  @type describe_placement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_placement_response() :: %{

  }
  """
  @type delete_placement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_projects_response() :: %{
    "nextToken" => String.t(),
    "projects" => list(project_summary()())
  }
  """
  @type list_projects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "tags" => map()
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  placement_summary() :: %{
    "createdDate" => non_neg_integer(),
    "placementName" => String.t(),
    "projectName" => String.t(),
    "updatedDate" => non_neg_integer()
  }
  """
  @type placement_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_placement_response() :: %{

  }
  """
  @type create_placement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_project_response() :: %{

  }
  """
  @type delete_project_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_project_request() :: %{
    optional("description") => String.t(),
    optional("placementTemplate") => placement_template()
  }
  """
  @type update_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_placement_request() :: %{
    optional("attributes") => map()
  }
  """
  @type update_placement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associate_device_with_placement_response() :: %{

  }
  """
  @type associate_device_with_placement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{

  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_project_request() :: %{
    optional("description") => String.t(),
    optional("placementTemplate") => placement_template(),
    optional("tags") => map(),
    required("projectName") => String.t()
  }
  """
  @type create_project_request() :: %{String.t() => any()}

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
  describe_placement_request() :: %{

  }
  """
  @type describe_placement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disassociate_device_from_placement_response() :: %{

  }
  """
  @type disassociate_device_from_placement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_placement_request() :: %{

  }
  """
  @type delete_placement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  device_template() :: %{
    "callbackOverrides" => map(),
    "deviceType" => String.t()
  }
  """
  @type device_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_project_request() :: %{

  }
  """
  @type delete_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_devices_in_placement_request() :: %{

  }
  """
  @type get_devices_in_placement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_conflict_exception() :: %{
    "code" => String.t(),
    "message" => String.t()
  }
  """
  @type resource_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_devices_in_placement_response() :: %{
    "devices" => map()
  }
  """
  @type get_devices_in_placement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disassociate_device_from_placement_request() :: %{

  }
  """
  @type disassociate_device_from_placement_request() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2018-05-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "projects.iot1click",
      global?: false,
      protocol: "rest-json",
      service_id: "IoT 1Click Projects",
      signature_version: "v4",
      signing_name: "iot1click",
      target_prefix: nil
    }
  end

  @doc """
  Associates a physical device with a placement.
  """
  @spec associate_device_with_placement(
          map(),
          String.t(),
          String.t(),
          String.t(),
          associate_device_with_placement_request(),
          list()
        ) ::
          {:ok, associate_device_with_placement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_failure_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_conflict_exception()}
          | {:error, resource_not_found_exception()}
  def associate_device_with_placement(
        %Client{} = client,
        device_template_name,
        placement_name,
        project_name,
        input,
        options \\ []
      ) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project_name)}/placements/#{AWS.Util.encode_uri(placement_name)}/devices/#{AWS.Util.encode_uri(device_template_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates an empty placement.
  """
  @spec create_placement(map(), String.t(), create_placement_request(), list()) ::
          {:ok, create_placement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_failure_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_conflict_exception()}
          | {:error, resource_not_found_exception()}
  def create_placement(%Client{} = client, project_name, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_name)}/placements"
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
  Creates an empty project with a placement template.

  A project contains zero or more
  placements that adhere to the placement template defined in the project.
  """
  @spec create_project(map(), create_project_request(), list()) ::
          {:ok, create_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_failure_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_conflict_exception()}
  def create_project(%Client{} = client, input, options \\ []) do
    url_path = "/projects"
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
  Deletes a placement.

  To delete a placement, it must not have any devices associated with
  it.

  When you delete a placement, all associated data becomes irretrievable.
  """
  @spec delete_placement(map(), String.t(), String.t(), delete_placement_request(), list()) ::
          {:ok, delete_placement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_failure_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
  def delete_placement(%Client{} = client, placement_name, project_name, input, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project_name)}/placements/#{AWS.Util.encode_uri(placement_name)}"

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
  Deletes a project.

  To delete a project, it must not have any placements associated with
  it.

  When you delete a project, all associated data becomes irretrievable.
  """
  @spec delete_project(map(), String.t(), delete_project_request(), list()) ::
          {:ok, delete_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_failure_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
  def delete_project(%Client{} = client, project_name, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_name)}"
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
  Describes a placement in a project.
  """
  @spec describe_placement(map(), String.t(), String.t(), list()) ::
          {:ok, describe_placement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_failure_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
  def describe_placement(%Client{} = client, placement_name, project_name, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project_name)}/placements/#{AWS.Util.encode_uri(placement_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns an object describing a project.
  """
  @spec describe_project(map(), String.t(), list()) ::
          {:ok, describe_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_failure_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
  def describe_project(%Client{} = client, project_name, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Removes a physical device from a placement.
  """
  @spec disassociate_device_from_placement(
          map(),
          String.t(),
          String.t(),
          String.t(),
          disassociate_device_from_placement_request(),
          list()
        ) ::
          {:ok, disassociate_device_from_placement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_failure_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
  def disassociate_device_from_placement(
        %Client{} = client,
        device_template_name,
        placement_name,
        project_name,
        input,
        options \\ []
      ) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project_name)}/placements/#{AWS.Util.encode_uri(placement_name)}/devices/#{AWS.Util.encode_uri(device_template_name)}"

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
  Returns an object enumerating the devices in a placement.
  """
  @spec get_devices_in_placement(map(), String.t(), String.t(), list()) ::
          {:ok, get_devices_in_placement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_failure_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
  def get_devices_in_placement(%Client{} = client, placement_name, project_name, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project_name)}/placements/#{AWS.Util.encode_uri(placement_name)}/devices"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the placement(s) of a project.
  """
  @spec list_placements(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_placements_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_failure_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
  def list_placements(
        %Client{} = client,
        project_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_name)}/placements"
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
  Lists the AWS IoT 1-Click project(s) associated with your AWS account and
  region.
  """
  @spec list_projects(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_projects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_failure_exception()}
          | {:error, invalid_request_exception()}
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
  Lists the tags (metadata key/value pairs) which you have assigned to the
  resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_failure_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates or modifies tags for a resource.

  Tags are key/value pairs (metadata) that can be
  used to manage a resource. For more information, see [AWS Tagging Strategies](https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_failure_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
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
  Removes one or more tags (metadata key/value pairs) from a resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_failure_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
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
  Updates a placement with the given attributes.

  To clear an attribute, pass an empty value
  (i.e., "").
  """
  @spec update_placement(map(), String.t(), String.t(), update_placement_request(), list()) ::
          {:ok, update_placement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_failure_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
  def update_placement(%Client{} = client, placement_name, project_name, input, options \\ []) do
    url_path =
      "/projects/#{AWS.Util.encode_uri(project_name)}/placements/#{AWS.Util.encode_uri(placement_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a project associated with your AWS account and region.

  With the exception of
  device template names, you can pass just the values that need to be updated
  because the update
  request will change only the values that are provided. To clear a value, pass
  the empty string
  (i.e., `""`).
  """
  @spec update_project(map(), String.t(), update_project_request(), list()) ::
          {:ok, update_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_failure_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, too_many_requests_exception()}
  def update_project(%Client{} = client, project_name, input, options \\ []) do
    url_path = "/projects/#{AWS.Util.encode_uri(project_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
