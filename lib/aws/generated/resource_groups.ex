# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ResourceGroups do
  @moduledoc """
  Resource Groups lets you organize Amazon Web Services resources such as Amazon
  Elastic Compute Cloud instances, Amazon Relational Database Service databases,
  and Amazon Simple Storage Service buckets into groups using criteria that you
  define as tags.

  A resource group is a collection of resources that match the resource types
  specified in a query, and share one or more tags or portions of tags. You can
  create a group of resources based on their roles in your cloud infrastructure,
  lifecycle stages, regions, application layers, or virtually any criteria.
  Resource Groups enable you to automate management tasks, such as those in Amazon
  Web Services Systems Manager Automation documents, on tag-related resources in
  Amazon Web Services Systems Manager. Groups of tagged resources also let you
  quickly view a custom console in Amazon Web Services Systems Manager that shows
  Config compliance and other monitoring data about member resources.

  To create a resource group, build a resource query, and specify tags that
  identify the criteria that members of the group have in common. Tags are
  key-value pairs.

  For more information about Resource Groups, see the [Resource Groups User Guide](https://docs.aws.amazon.com/ARG/latest/userguide/welcome.html).

  Resource Groups uses a REST-compliant API that you can use to perform the
  following types of operations.

    * Create, Read, Update, and Delete (CRUD) operations on resource
  groups and resource query entities

    * Applying, editing, and removing tags from resource groups

    * Resolving resource group member ARNs so they can be returned as
  search results

    * Getting data about resources that are members of a group

    * Searching Amazon Web Services resources based on a resource query
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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

  You can optionally include either a resource query or a service configuration.
  For more information about constructing a resource query, see [Build queries and groups in Resource
  Groups](https://docs.aws.amazon.com/ARG/latest/userguide/getting_started-query.html)
  in the *Resource Groups User Guide*. For more information about service-linked
  groups and service configurations, see [Service configurations for Resource Groups](https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html).

  ## Minimum permissions

  To run this command, you must have the following permissions:

    * `resource-groups:CreateGroup`
  """
  def create_group(%Client{} = client, input, options \\ []) do
    url_path = "/groups"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateGroup",
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

  ## Minimum permissions

  To run this command, you must have the following permissions:

    * `resource-groups:DeleteGroup`
  """
  def delete_group(%Client{} = client, input, options \\ []) do
    url_path = "/delete-group"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteGroup",
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
  Retrieves the current status of optional features in Resource Groups.
  """
  def get_account_settings(%Client{} = client, input, options \\ []) do
    url_path = "/get-account-settings"
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
  Returns information about a specified resource group.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    * `resource-groups:GetGroup`
  """
  def get_group(%Client{} = client, input, options \\ []) do
    url_path = "/get-group"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetGroup",
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
  Retrieves the service configuration associated with the specified resource
  group.

  For details about the service configuration syntax, see [Service configurations for Resource
  Groups](https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html).

  ## Minimum permissions

  To run this command, you must have the following permissions:

    * `resource-groups:GetGroupConfiguration`
  """
  def get_group_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/get-group-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetGroupConfiguration",
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

  For more information about resource queries, see [Create a tag-based group in Resource
  Groups](https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag).

  ## Minimum permissions

  To run this command, you must have the following permissions:

    * `resource-groups:GetGroupQuery`
  """
  def get_group_query(%Client{} = client, input, options \\ []) do
    url_path = "/get-group-query"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetGroupQuery",
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

  ## Minimum permissions

  To run this command, you must have the following permissions:

    * `resource-groups:GetTags`
  """
  def get_tags(%Client{} = client, arn, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(arn)}/tags"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetTags",
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

  You can use this operation with only resource groups that are configured with
  the following types:

     `AWS::EC2::HostManagement`

     `AWS::EC2::CapacityReservationPool`

  Other resource group type and resource types aren't currently supported by this
  operation.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    * `resource-groups:GroupResources`
  """
  def group_resources(%Client{} = client, input, options \\ []) do
    url_path = "/group-resources"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GroupResources",
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

  ## Minimum permissions

  To run this command, you must have the following permissions:

    * `resource-groups:ListGroupResources`

    * `cloudformation:DescribeStacks`

    * `cloudformation:ListStackResources`

    * `tag:GetResources`
  """
  def list_group_resources(%Client{} = client, input, options \\ []) do
    url_path = "/list-group-resources"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListGroupResources",
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
  Returns a list of existing Resource Groups in your account.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    * `resource-groups:ListGroups`
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListGroups",
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
  Attaches a service configuration to the specified group.

  This occurs asynchronously, and can take time to complete. You can use
  `GetGroupConfiguration` to check the status of the update.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    * `resource-groups:PutGroupConfiguration`
  """
  def put_group_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/put-group-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "PutGroupConfiguration",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Returns a list of Amazon Web Services resource identifiers that matches the
  specified query.

  The query uses the same format as a resource query in a `CreateGroup` or
  `UpdateGroupQuery` operation.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    * `resource-groups:SearchResources`

    * `cloudformation:DescribeStacks`

    * `cloudformation:ListStackResources`

    * `tag:GetResources`
  """
  def search_resources(%Client{} = client, input, options \\ []) do
    url_path = "/resources/search"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "SearchResources",
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

  ## Minimum permissions

  To run this command, you must have the following permissions:

    * `resource-groups:Tag`
  """
  def tag(%Client{} = client, arn, input, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(arn)}/tags"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "Tag",
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

  This operation works only with static groups that you populated using the
  `GroupResources` operation. It doesn't work with any resource groups that are
  automatically populated by tag-based or CloudFormation stack-based queries.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    * `resource-groups:UngroupResources`
  """
  def ungroup_resources(%Client{} = client, input, options \\ []) do
    url_path = "/ungroup-resources"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UngroupResources",
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

  ## Minimum permissions

  To run this command, you must have the following permissions:

    * `resource-groups:Untag`
  """
  def untag(%Client{} = client, arn, input, options \\ []) do
    url_path = "/resources/#{AWS.Util.encode_uri(arn)}/tags"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "Untag",
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
  Turns on or turns off optional features in Resource Groups.

  The preceding example shows that the request to turn on group lifecycle events
  is `IN_PROGRESS`. You can call the `GetAccountSettings` operation to check for
  completion by looking for `GroupLifecycleEventsStatus` to change to `ACTIVE`.
  """
  def update_account_settings(%Client{} = client, input, options \\ []) do
    url_path = "/update-account-settings"
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
  Updates the description for an existing group.

  You cannot update the name of a resource group.

  ## Minimum permissions

  To run this command, you must have the following permissions:

    * `resource-groups:UpdateGroup`
  """
  def update_group(%Client{} = client, input, options \\ []) do
    url_path = "/update-group"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateGroup",
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

  For more information about resource queries, see [Create a tag-based group in Resource
  Groups](https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag).

  ## Minimum permissions

  To run this command, you must have the following permissions:

    * `resource-groups:UpdateGroupQuery`
  """
  def update_group_query(%Client{} = client, input, options \\ []) do
    url_path = "/update-group-query"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateGroupQuery",
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
