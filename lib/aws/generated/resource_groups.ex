# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ResourceGroups do
  @moduledoc """
  AWS Resource Groups

  AWS Resource Groups lets you organize AWS resources such as Amazon EC2
  instances, Amazon Relational Database Service databases, and Amazon S3 buckets
  into groups using criteria that you define as tags.

  A resource group is a collection of resources that match the resource types
  specified in a query, and share one or more tags or portions of tags. You can
  create a group of resources based on their roles in your cloud infrastructure,
  lifecycle stages, regions, application layers, or virtually any criteria.
  Resource Groups enable you to automate management tasks, such as those in AWS
  Systems Manager Automation documents, on tag-related resources in AWS Systems
  Manager. Groups of tagged resources also let you quickly view a custom console
  in AWS Systems Manager that shows AWS Config compliance and other monitoring
  data about member resources.

  To create a resource group, build a resource query, and specify tags that
  identify the criteria that members of the group have in common. Tags are
  key-value pairs.

  For more information about Resource Groups, see the [AWS Resource Groups User Guide](https://docs.aws.amazon.com/ARG/latest/userguide/welcome.html).

  AWS Resource Groups uses a REST-compliant API that you can use to perform the
  following types of operations.

    * Create, Read, Update, and Delete (CRUD) operations on resource
  groups and resource query entities

    * Applying, editing, and removing tags from resource groups

    * Resolving resource group member ARNs so they can be returned as
  search results

    * Getting data about resources that are members of a group

    * Searching AWS resources based on a resource query
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-11-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "resource-groups",
      global?: false,
      protocol: "rest-json",
      service_id: "Resource Groups",
      signature_version: "v4",
      signing_name: "resource-groups",
      target_prefix: nil
    }
  end

  @doc """
  Creates a resource group with the specified name and description.

  You can optionally include a resource query, or a service configuration.
  """
  def create_group(%Client{} = client, input, options \\ []) do
    url_path = "/groups"
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
  Deletes the specified resource group.

  Deleting a resource group does not delete any resources that are members of the
  group; it only deletes the group structure.
  """
  def delete_group(%Client{} = client, input, options \\ []) do
    url_path = "/delete-group"
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
  Returns information about a specified resource group.
  """
  def get_group(%Client{} = client, input, options \\ []) do
    url_path = "/get-group"
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
  Returns the service configuration associated with the specified resource group.

  AWS Resource Groups supports configurations for the following resource group
  types:

    * `AWS::EC2::CapacityReservationPool` - Amazon EC2 capacity
  reservation pools. For more information, see [Working with capacity reservation groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-reservations-using.html#create-cr-group)
  in the *EC2 Users Guide*.
  """
  def get_group_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/get-group-configuration"
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
  Retrieves the resource query associated with the specified resource group.
  """
  def get_group_query(%Client{} = client, input, options \\ []) do
    url_path = "/get-group-query"
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
  Returns a list of tags that are associated with a resource group, specified by
  an ARN.
  """
  def get_tags(%Client{} = client, arn, options \\ []) do
    url_path = "/resources/#{URI.encode(arn)}/tags"
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
  Adds the specified resources to the specified group.
  """
  def group_resources(%Client{} = client, input, options \\ []) do
    url_path = "/group-resources"
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
  Returns a list of ARNs of the resources that are members of a specified resource
  group.
  """
  def list_group_resources(%Client{} = client, input, options \\ []) do
    url_path = "/list-group-resources"
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
  Returns a list of existing resource groups in your account.
  """
  def list_groups(%Client{} = client, input, options \\ []) do
    url_path = "/groups-list"
    headers = []

    {query_params, input} =
      [
        {"MaxResults", "maxResults"},
        {"NextToken", "nextToken"}
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
  Returns a list of AWS resource identifiers that matches the specified query.

  The query uses the same format as a resource query in a CreateGroup or
  UpdateGroupQuery operation.
  """
  def search_resources(%Client{} = client, input, options \\ []) do
    url_path = "/resources/search"
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
  Adds tags to a resource group with the specified ARN.

  Existing tags on a resource group are not changed if they are not specified in
  the request parameters.

  Do not store personally identifiable information (PII) or other confidential or
  sensitive information in tags. We use tags to provide you with billing and
  administration services. Tags are not intended to be used for private or
  sensitive data.
  """
  def tag(%Client{} = client, arn, input, options \\ []) do
    url_path = "/resources/#{URI.encode(arn)}/tags"
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
  Removes the specified resources from the specified group.
  """
  def ungroup_resources(%Client{} = client, input, options \\ []) do
    url_path = "/ungroup-resources"
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
  Deletes tags from a specified resource group.
  """
  def untag(%Client{} = client, arn, input, options \\ []) do
    url_path = "/resources/#{URI.encode(arn)}/tags"
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
  Updates the description for an existing group.

  You cannot update the name of a resource group.
  """
  def update_group(%Client{} = client, input, options \\ []) do
    url_path = "/update-group"
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
  Updates the resource query of a group.
  """
  def update_group_query(%Client{} = client, input, options \\ []) do
    url_path = "/update-group-query"
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