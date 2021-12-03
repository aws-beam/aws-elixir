# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Appflow do
  @moduledoc """
  Welcome to the Amazon AppFlow API reference.

  This guide is for developers who need detailed information about the Amazon
  AppFlow API operations, data types, and errors.

  Amazon AppFlow is a fully managed integration service that enables you to
  securely transfer data between software as a service (SaaS) applications like
  Salesforce, Marketo, Slack, and ServiceNow, and Amazon Web Services like Amazon
  S3 and Amazon Redshift.

  Use the following links to get started on the Amazon AppFlow API:

    *
  [Actions](https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Operations.html): An alphabetical list of all Amazon AppFlow API operations.

    * [Data
  types](https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Types.html): An
  alphabetical list of all Amazon AppFlow data types.

    * [Common parameters](https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonParameters.html):
  Parameters that all Query operations can use.

    * [Common errors](https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonErrors.html):
  Client and server errors that all operations can return.

  If you're new to Amazon AppFlow, we recommend that you review the [Amazon AppFlow User
  Guide](https://docs.aws.amazon.com/appflow/latest/userguide/what-is-appflow.html).

  Amazon AppFlow API users can use vendor-specific mechanisms for OAuth, and
  include applicable OAuth attributes (such as `auth-code` and `redirecturi`) with
  the connector-specific `ConnectorProfileProperties` when creating a new
  connector profile using Amazon AppFlow API operations. For example, Salesforce
  users can refer to the [ *Authorize Apps with OAuth*
  ](https://help.salesforce.com/articleView?id=remoteaccess_authenticate.htm)
  documentation.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-08-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "appflow",
      global?: false,
      protocol: "rest-json",
      service_id: "Appflow",
      signature_version: "v4",
      signing_name: "appflow",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new connector profile associated with your Amazon Web Services
  account.

  There is a soft quota of 100 connector profiles per Amazon Web Services account.
  If you need more connector profiles than this quota allows, you can submit a
  request to the Amazon AppFlow team through the Amazon AppFlow support channel.
  """
  def create_connector_profile(%Client{} = client, input, options \\ []) do
    url_path = "/create-connector-profile"
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
  Enables your application to create a new flow using Amazon AppFlow.

  You must create a connector profile before calling this API. Please note that
  the Request Syntax below shows syntax for multiple destinations, however, you
  can only transfer data to one item in this list at a time. Amazon AppFlow does
  not currently support flows to multiple destinations at once.
  """
  def create_flow(%Client{} = client, input, options \\ []) do
    url_path = "/create-flow"
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
  Enables you to delete an existing connector profile.
  """
  def delete_connector_profile(%Client{} = client, input, options \\ []) do
    url_path = "/delete-connector-profile"
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
  Enables your application to delete an existing flow.

  Before deleting the flow, Amazon AppFlow validates the request by checking the
  flow configuration and status. You can delete flows one at a time.
  """
  def delete_flow(%Client{} = client, input, options \\ []) do
    url_path = "/delete-flow"
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
  Provides details regarding the entity used with the connector, with a
  description of the data model for each entity.
  """
  def describe_connector_entity(%Client{} = client, input, options \\ []) do
    url_path = "/describe-connector-entity"
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
  Returns a list of `connector-profile` details matching the provided
  `connector-profile` names and `connector-types`.

  Both input lists are optional, and you can use them to filter the result.

  If no names or `connector-types` are provided, returns all connector profiles in
  a paginated form. If there is no match, this operation returns an empty list.
  """
  def describe_connector_profiles(%Client{} = client, input, options \\ []) do
    url_path = "/describe-connector-profiles"
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
  Describes the connectors vended by Amazon AppFlow for specified connector types.

  If you don't specify a connector type, this operation describes all connectors
  vended by Amazon AppFlow. If there are more connectors than can be returned in
  one page, the response contains a `nextToken` object, which can be be passed in
  to the next call to the `DescribeConnectors` API operation to retrieve the next
  page.
  """
  def describe_connectors(%Client{} = client, input, options \\ []) do
    url_path = "/describe-connectors"
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
  Provides a description of the specified flow.
  """
  def describe_flow(%Client{} = client, input, options \\ []) do
    url_path = "/describe-flow"
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
  Fetches the execution history of the flow.
  """
  def describe_flow_execution_records(%Client{} = client, input, options \\ []) do
    url_path = "/describe-flow-execution-records"
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
  Returns the list of available connector entities supported by Amazon AppFlow.

  For example, you can query Salesforce for *Account* and *Opportunity* entities,
  or query ServiceNow for the *Incident* entity.
  """
  def list_connector_entities(%Client{} = client, input, options \\ []) do
    url_path = "/list-connector-entities"
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
  Lists all of the flows associated with your account.
  """
  def list_flows(%Client{} = client, input, options \\ []) do
    url_path = "/list-flows"
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
  Retrieves the tags that are associated with a specified flow.
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
  Activates an existing flow.

  For on-demand flows, this operation runs the flow immediately. For schedule and
  event-triggered flows, this operation activates the flow.
  """
  def start_flow(%Client{} = client, input, options \\ []) do
    url_path = "/start-flow"
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
  Deactivates the existing flow.

  For on-demand flows, this operation returns an `unsupportedOperationException`
  error message. For schedule and event-triggered flows, this operation
  deactivates the flow.
  """
  def stop_flow(%Client{} = client, input, options \\ []) do
    url_path = "/stop-flow"
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
  Applies a tag to the specified flow.
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
  Removes a tag from the specified flow.
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
  Updates a given connector profile associated with your account.
  """
  def update_connector_profile(%Client{} = client, input, options \\ []) do
    url_path = "/update-connector-profile"
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
  Updates an existing flow.
  """
  def update_flow(%Client{} = client, input, options \\ []) do
    url_path = "/update-flow"
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
