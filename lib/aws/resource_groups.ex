# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ResourceGroups do
  @moduledoc """
  AWS Resource Groups

  AWS Resource Groups lets you organize AWS resources such as Amazon EC2
  instances, Amazon Relational Database Service databases, and Amazon S3
  buckets into groups using criteria that you define as tags. A resource
  group is a collection of resources that match the resource types specified
  in a query, and share one or more tags or portions of tags. You can create
  a group of resources based on their roles in your cloud infrastructure,
  lifecycle stages, regions, application layers, or virtually any criteria.
  Resource Groups enable you to automate management tasks, such as those in
  AWS Systems Manager Automation documents, on tag-related resources in AWS
  Systems Manager. Groups of tagged resources also let you quickly view a
  custom console in AWS Systems Manager that shows AWS Config compliance and
  other monitoring data about member resources.

  To create a resource group, build a resource query, and specify tags that
  identify the criteria that members of the group have in common. Tags are
  key-value pairs.

  For more information about Resource Groups, see the [AWS Resource Groups
  User Guide](https://docs.aws.amazon.com/ARG/latest/userguide/welcome.html).

  AWS Resource Groups uses a REST-compliant API that you can use to perform
  the following types of operations.

  <ul> <li> Create, Read, Update, and Delete (CRUD) operations on resource
  groups and resource query entities

  </li> <li> Applying, editing, and removing tags from resource groups

  </li> <li> Resolving resource group member ARNs so they can be returned as
  search results

  </li> <li> Getting data about resources that are members of a group

  </li> <li> Searching AWS resources based on a resource query

  </li> </ul>
  """

  @doc """
  Creates a resource group with the specified name and description. You can
  optionally include a resource query, or a service configuration.
  """
  def create_group(client, input, options \\ []) do
    path_ = "/groups"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the specified resource group. Deleting a resource group does not
  delete any resources that are members of the group; it only deletes the
  group structure.
  """
  def delete_group(client, input, options \\ []) do
    path_ = "/delete-group"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns information about a specified resource group.
  """
  def get_group(client, input, options \\ []) do
    path_ = "/get-group"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the service configuration associated with the specified resource
  group. AWS Resource Groups supports configurations for the following
  resource group types:

  <ul> <li> `AWS::EC2::CapacityReservationPool` - Amazon EC2 capacity
  reservation pools. For more information, see [Working with capacity
  reservation
  groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/capacity-reservations-using.html#create-cr-group)
  in the *EC2 Users Guide*.

  </li> </ul>
  """
  def get_group_configuration(client, input, options \\ []) do
    path_ = "/get-group-configuration"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves the resource query associated with the specified resource group.
  """
  def get_group_query(client, input, options \\ []) do
    path_ = "/get-group-query"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of tags that are associated with a resource group, specified
  by an ARN.
  """
  def get_tags(client, arn, options \\ []) do
    path_ = "/resources/#{URI.encode(arn)}/tags"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Adds the specified resources to the specified group.
  """
  def group_resources(client, input, options \\ []) do
    path_ = "/group-resources"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of ARNs of the resources that are members of a specified
  resource group.
  """
  def list_group_resources(client, input, options \\ []) do
    path_ = "/list-group-resources"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of existing resource groups in your account.
  """
  def list_groups(client, input, options \\ []) do
    path_ = "/groups-list"
    headers = []
    {query_, input} =
      [
        {"MaxResults", "maxResults"},
        {"NextToken", "nextToken"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of AWS resource identifiers that matches the specified
  query. The query uses the same format as a resource query in a CreateGroup
  or UpdateGroupQuery operation.
  """
  def search_resources(client, input, options \\ []) do
    path_ = "/resources/search"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds tags to a resource group with the specified ARN. Existing tags on a
  resource group are not changed if they are not specified in the request
  parameters.

  <important> Do not store personally identifiable information (PII) or other
  confidential or sensitive information in tags. We use tags to provide you
  with billing and administration services. Tags are not intended to be used
  for private or sensitive data.

  </important>
  """
  def tag(client, arn, input, options \\ []) do
    path_ = "/resources/#{URI.encode(arn)}/tags"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the specified resources from the specified group.
  """
  def ungroup_resources(client, input, options \\ []) do
    path_ = "/ungroup-resources"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes tags from a specified resource group.
  """
  def untag(client, arn, input, options \\ []) do
    path_ = "/resources/#{URI.encode(arn)}/tags"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the description for an existing group. You cannot update the name
  of a resource group.
  """
  def update_group(client, input, options \\ []) do
    path_ = "/update-group"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the resource query of a group.
  """
  def update_group_query(client, input, options \\ []) do
    path_ = "/update-group-query"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "resource-groups"}
    host = build_host("resource-groups", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end


  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
