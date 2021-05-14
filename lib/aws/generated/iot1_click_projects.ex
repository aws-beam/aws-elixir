# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoT1ClickProjects do
  @moduledoc """
  The AWS IoT 1-Click Projects API Reference
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
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
  def associate_device_with_placement(
        %Client{} = client,
        device_template_name,
        placement_name,
        project_name,
        input,
        options \\ []
      ) do
    url_path =
      "/projects/#{URI.encode(project_name)}/placements/#{URI.encode(placement_name)}/devices/#{
        URI.encode(device_template_name)
      }"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates an empty placement.
  """
  def create_placement(%Client{} = client, project_name, input, options \\ []) do
    url_path = "/projects/#{URI.encode(project_name)}/placements"
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
  Creates an empty project with a placement template.

  A project contains zero or more placements that adhere to the placement template
  defined in the project.
  """
  def create_project(%Client{} = client, input, options \\ []) do
    url_path = "/projects"
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
  Deletes a placement.

  To delete a placement, it must not have any devices associated with it.

  When you delete a placement, all associated data becomes irretrievable.
  """
  def delete_placement(%Client{} = client, placement_name, project_name, input, options \\ []) do
    url_path = "/projects/#{URI.encode(project_name)}/placements/#{URI.encode(placement_name)}"
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
  Deletes a project.

  To delete a project, it must not have any placements associated with it.

  When you delete a project, all associated data becomes irretrievable.
  """
  def delete_project(%Client{} = client, project_name, input, options \\ []) do
    url_path = "/projects/#{URI.encode(project_name)}"
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
  Describes a placement in a project.
  """
  def describe_placement(%Client{} = client, placement_name, project_name, options \\ []) do
    url_path = "/projects/#{URI.encode(project_name)}/placements/#{URI.encode(placement_name)}"
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
  Returns an object describing a project.
  """
  def describe_project(%Client{} = client, project_name, options \\ []) do
    url_path = "/projects/#{URI.encode(project_name)}"
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
  Removes a physical device from a placement.
  """
  def disassociate_device_from_placement(
        %Client{} = client,
        device_template_name,
        placement_name,
        project_name,
        input,
        options \\ []
      ) do
    url_path =
      "/projects/#{URI.encode(project_name)}/placements/#{URI.encode(placement_name)}/devices/#{
        URI.encode(device_template_name)
      }"

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
  Returns an object enumerating the devices in a placement.
  """
  def get_devices_in_placement(%Client{} = client, placement_name, project_name, options \\ []) do
    url_path =
      "/projects/#{URI.encode(project_name)}/placements/#{URI.encode(placement_name)}/devices"

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
  Lists the placement(s) of a project.
  """
  def list_placements(
        %Client{} = client,
        project_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/projects/#{URI.encode(project_name)}/placements"
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
  Lists the AWS IoT 1-Click project(s) associated with your AWS account and
  region.
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
  Lists the tags (metadata key/value pairs) which you have assigned to the
  resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  Creates or modifies tags for a resource.

  Tags are key/value pairs (metadata) that can be used to manage a resource. For
  more information, see [AWS Tagging Strategies](https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  Removes one or more tags (metadata key/value pairs) from a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

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
  Updates a placement with the given attributes.

  To clear an attribute, pass an empty value (i.e., "").
  """
  def update_placement(%Client{} = client, placement_name, project_name, input, options \\ []) do
    url_path = "/projects/#{URI.encode(project_name)}/placements/#{URI.encode(placement_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a project associated with your AWS account and region.

  With the exception of device template names, you can pass just the values that
  need to be updated because the update request will change only the values that
  are provided. To clear a value, pass the empty string (i.e., `""`).
  """
  def update_project(%Client{} = client, project_name, input, options \\ []) do
    url_path = "/projects/#{URI.encode(project_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
