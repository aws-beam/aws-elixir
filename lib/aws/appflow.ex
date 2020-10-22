# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Appflow do
  @moduledoc """
  Welcome to the Amazon AppFlow API reference. This guide is for developers
  who need detailed information about the Amazon AppFlow API operations, data
  types, and errors.

  Amazon AppFlow is a fully managed integration service that enables you to
  securely transfer data between software as a service (SaaS) applications
  like Salesforce, Marketo, Slack, and ServiceNow, and AWS services like
  Amazon S3 and Amazon Redshift.

  Use the following links to get started on the Amazon AppFlow API:

  <ul> <li>
  [Actions](https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Operations.html):
  An alphabetical list of all Amazon AppFlow API operations.

  </li> <li> [Data
  types](https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Types.html):
  An alphabetical list of all Amazon AppFlow data types.

  </li> <li> [Common
  parameters](https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonParameters.html):
  Parameters that all Query operations can use.

  </li> <li> [Common
  errors](https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonErrors.html):
  Client and server errors that all operations can return.

  </li> </ul> If you're new to Amazon AppFlow, we recommend that you review
  the [Amazon AppFlow User
  Guide](https://docs.aws.amazon.com/appflow/latest/userguide/what-is-appflow.html).

  Amazon AppFlow API users can use vendor-specific mechanisms for OAuth, and
  include applicable OAuth attributes (such as `auth-code` and `redirecturi`)
  with the connector-specific `ConnectorProfileProperties` when creating a
  new connector profile using Amazon AppFlow API operations. For example,
  Salesforce users can refer to the [ *Authorize Apps with OAuth*
  ](https://help.salesforce.com/articleView?id=remoteaccess_authenticate.htm)
  documentation.
  """

  @doc """
  Creates a new connector profile associated with your AWS account. There is
  a soft quota of 100 connector profiles per AWS account. If you need more
  connector profiles than this quota allows, you can submit a request to the
  Amazon AppFlow team through the Amazon AppFlow support channel.
  """
  def create_connector_profile(client, input, options \\ []) do
    path_ = "/create-connector-profile"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Enables your application to create a new flow using Amazon AppFlow. You
  must create a connector profile before calling this API. Please note that
  the Request Syntax below shows syntax for multiple destinations, however,
  you can only transfer data to one item in this list at a time. Amazon
  AppFlow does not currently support flows to multiple destinations at once.
  """
  def create_flow(client, input, options \\ []) do
    path_ = "/create-flow"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Enables you to delete an existing connector profile.
  """
  def delete_connector_profile(client, input, options \\ []) do
    path_ = "/delete-connector-profile"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Enables your application to delete an existing flow. Before deleting the
  flow, Amazon AppFlow validates the request by checking the flow
  configuration and status. You can delete flows one at a time.
  """
  def delete_flow(client, input, options \\ []) do
    path_ = "/delete-flow"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Provides details regarding the entity used with the connector, with a
  description of the data model for each entity.
  """
  def describe_connector_entity(client, input, options \\ []) do
    path_ = "/describe-connector-entity"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of `connector-profile` details matching the provided
  `connector-profile` names and `connector-types`. Both input lists are
  optional, and you can use them to filter the result.

  If no names or `connector-types` are provided, returns all connector
  profiles in a paginated form. If there is no match, this operation returns
  an empty list.
  """
  def describe_connector_profiles(client, input, options \\ []) do
    path_ = "/describe-connector-profiles"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes the connectors vended by Amazon AppFlow for specified connector
  types. If you don't specify a connector type, this operation describes all
  connectors vended by Amazon AppFlow. If there are more connectors than can
  be returned in one page, the response contains a `nextToken` object, which
  can be be passed in to the next call to the `DescribeConnectors` API
  operation to retrieve the next page.
  """
  def describe_connectors(client, input, options \\ []) do
    path_ = "/describe-connectors"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Provides a description of the specified flow.
  """
  def describe_flow(client, input, options \\ []) do
    path_ = "/describe-flow"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Fetches the execution history of the flow.
  """
  def describe_flow_execution_records(client, input, options \\ []) do
    path_ = "/describe-flow-execution-records"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the list of available connector entities supported by Amazon
  AppFlow. For example, you can query Salesforce for *Account* and
  *Opportunity* entities, or query ServiceNow for the *Incident* entity.
  """
  def list_connector_entities(client, input, options \\ []) do
    path_ = "/list-connector-entities"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists all of the flows associated with your account.
  """
  def list_flows(client, input, options \\ []) do
    path_ = "/list-flows"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves the tags that are associated with a specified flow.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Activates an existing flow. For on-demand flows, this operation runs the
  flow immediately. For schedule and event-triggered flows, this operation
  activates the flow.
  """
  def start_flow(client, input, options \\ []) do
    path_ = "/start-flow"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deactivates the existing flow. For on-demand flows, this operation returns
  an `unsupportedOperationException` error message. For schedule and
  event-triggered flows, this operation deactivates the flow.
  """
  def stop_flow(client, input, options \\ []) do
    path_ = "/stop-flow"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Applies a tag to the specified flow.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes a tag from the specified flow.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"tagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a given connector profile associated with your account.
  """
  def update_connector_profile(client, input, options \\ []) do
    path_ = "/update-connector-profile"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an existing flow.
  """
  def update_flow(client, input, options \\ []) do
    path_ = "/update-flow"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "appflow"}
    host = build_host("appflow", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    AWS.HTTP.request(method, url, payload, headers, options, success_status_code)
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

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
