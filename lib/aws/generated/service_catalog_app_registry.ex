# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ServiceCatalogAppRegistry do
  @moduledoc """
  AWS Service Catalog AppRegistry enables organizations to understand the
  application context of their AWS resources.

  AppRegistry provides a repository of your applications, their resources, and the
  application metadata that you use within your enterprise.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-06-24",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "servicecatalog-appregistry",
      global?: false,
      protocol: "rest-json",
      service_id: "Service Catalog AppRegistry",
      signature_version: "v4",
      signing_name: "servicecatalog",
      target_prefix: nil
    }
  end

  @doc """
  Associates an attribute group with an application to augment the application's
  metadata with the group's attributes.

  This feature enables applications to be described with user-defined details that
  are machine-readable, such as third-party integrations.
  """
  def associate_attribute_group(
        %Client{} = client,
        application,
        attribute_group,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application)}/attribute-groups/#{AWS.Util.encode_uri(attribute_group)}"

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
  Associates a resource with an application.

  Both the resource and the application can be specified either by ID or name.
  """
  def associate_resource(
        %Client{} = client,
        application,
        resource,
        resource_type,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application)}/resources/#{AWS.Util.encode_uri(resource_type)}/#{AWS.Util.encode_uri(resource)}"

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
  Creates a new application that is the top-level node in a hierarchy of related
  cloud resource abstractions.
  """
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
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
      201
    )
  end

  @doc """
  Creates a new attribute group as a container for user-defined attributes.

  This feature enables users to have full control over their cloud application's
  metadata in a rich machine-readable format to facilitate integration with
  automated workflows and third-party tools.
  """
  def create_attribute_group(%Client{} = client, input, options \\ []) do
    url_path = "/attribute-groups"
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
      201
    )
  end

  @doc """
  Deletes an application that is specified either by its application ID or name.

  All associated attribute groups and resources must be disassociated from it
  before deleting an application.
  """
  def delete_application(%Client{} = client, application, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application)}"
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
  Deletes an attribute group, specified either by its attribute group ID or name.
  """
  def delete_attribute_group(%Client{} = client, attribute_group, input, options \\ []) do
    url_path = "/attribute-groups/#{AWS.Util.encode_uri(attribute_group)}"
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
  Disassociates an attribute group from an application to remove the extra
  attributes contained in the attribute group from the application's metadata.

  This operation reverts `AssociateAttributeGroup`.
  """
  def disassociate_attribute_group(
        %Client{} = client,
        application,
        attribute_group,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application)}/attribute-groups/#{AWS.Util.encode_uri(attribute_group)}"

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
  Disassociates a resource from application.

  Both the resource and the application can be specified either by ID or name.
  """
  def disassociate_resource(
        %Client{} = client,
        application,
        resource,
        resource_type,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application)}/resources/#{AWS.Util.encode_uri(resource_type)}/#{AWS.Util.encode_uri(resource)}"

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
  Retrieves metadata information about one of your applications.

  The application can be specified either by its unique ID or by its name (which
  is unique within one account in one region at a given point in time). Specify by
  ID in automated workflows if you want to make sure that the exact same
  application is returned or a `ResourceNotFoundException` is thrown, avoiding the
  ABA addressing problem.
  """
  def get_application(%Client{} = client, application, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application)}"
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
  Retrieves an attribute group, either by its name or its ID.

  The attribute group can be specified either by its unique ID or by its name.
  """
  def get_attribute_group(%Client{} = client, attribute_group, options \\ []) do
    url_path = "/attribute-groups/#{AWS.Util.encode_uri(attribute_group)}"
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
  Retrieves a list of all of your applications.

  Results are paginated.
  """
  def list_applications(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/applications"
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
  Lists all attribute groups that are associated with specified application.

  Results are paginated.
  """
  def list_associated_attribute_groups(
        %Client{} = client,
        application,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application)}/attribute-groups"
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
  Lists all resources that are associated with specified application.

  Results are paginated.
  """
  def list_associated_resources(
        %Client{} = client,
        application,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application)}/resources"
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
  Lists all attribute groups which you have access to.

  Results are paginated.
  """
  def list_attribute_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/attribute-groups"
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
  Lists all of the tags on the resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Syncs the resource with what is currently recorded in App registry.

  Specifically, the resource’s App registry system tags are synced with its
  associated application. The resource is removed if it is not associated with the
  application. The caller must have permissions to read and update the resource.
  """
  def sync_resource(%Client{} = client, resource, resource_type, input, options \\ []) do
    url_path = "/sync/#{AWS.Util.encode_uri(resource_type)}/#{AWS.Util.encode_uri(resource)}"
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
  Assigns one or more tags (key-value pairs) to the specified resource.

  Each tag consists of a key and an optional value. If a tag with the same key is
  already associated with the resource, this action updates its value.

  This operation returns an empty response if the call was successful.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes tags from a resource.

  This operation returns an empty response if the call was successful.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Updates an existing application with new attributes.
  """
  def update_application(%Client{} = client, application, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates an existing attribute group with new details.
  """
  def update_attribute_group(%Client{} = client, attribute_group, input, options \\ []) do
    url_path = "/attribute-groups/#{AWS.Util.encode_uri(attribute_group)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
