# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TimestreamQuery do
  @moduledoc """
  Amazon Timestream Query
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "Timestream Query",
      api_version: "2018-11-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "query.timestream",
      global?: false,
      protocol: "json",
      service_id: "Timestream Query",
      signature_version: "v4",
      signing_name: "timestream",
      target_prefix: "Timestream_20181101"
    }
  end

  @doc """
  Cancels a query that has been issued.

  Cancellation is provided only if the query has not completed running before the
  cancellation request was issued. Because cancellation is an idempotent
  operation, subsequent cancellation requests will return a `CancellationMessage`,
  indicating that the query has already been canceled. See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.cancel-query.html)
  for details.
  """
  def cancel_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelQuery", input, options)
  end

  @doc """
  Create a scheduled query that will be run on your behalf at the configured
  schedule.

  Timestream assumes the execution role provided as part of the
  `ScheduledQueryExecutionRoleArn` parameter to run the query. You can use the
  `NotificationConfiguration` parameter to configure notification for your
  scheduled query operations.
  """
  def create_scheduled_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateScheduledQuery", input, options)
  end

  @doc """
  Deletes a given scheduled query.

  This is an irreversible operation.
  """
  def delete_scheduled_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteScheduledQuery", input, options)
  end

  @doc """
  DescribeEndpoints returns a list of available endpoints to make Timestream API
  calls against.

  This API is available through both Write and Query.

  Because the Timestream SDKs are designed to transparently work with the
  service’s architecture, including the management and mapping of the service
  endpoints, *it is not recommended that you use this API unless*:

    * You are using [VPC endpoints (Amazon Web Services PrivateLink) with Timestream
  ](https://docs.aws.amazon.com/timestream/latest/developerguide/VPCEndpoints)

    * Your application uses a programming language that does not yet
  have SDK support

    * You require better control over the client-side implementation

  For detailed information on how and when to use and implement DescribeEndpoints,
  see [The Endpoint Discovery Pattern](https://docs.aws.amazon.com/timestream/latest/developerguide/Using.API.html#Using-API.endpoint-discovery).
  """
  def describe_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEndpoints", input, options)
  end

  @doc """
  Provides detailed information about a scheduled query.
  """
  def describe_scheduled_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScheduledQuery", input, options)
  end

  @doc """
  You can use this API to run a scheduled query manually.
  """
  def execute_scheduled_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExecuteScheduledQuery", input, options)
  end

  @doc """
  Gets a list of all scheduled queries in the caller's Amazon account and Region.

  `ListScheduledQueries` is eventually consistent.
  """
  def list_scheduled_queries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListScheduledQueries", input, options)
  end

  @doc """
  List all tags on a Timestream query resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  A synchronous operation that allows you to submit a query with parameters to be
  stored by Timestream for later running.

  Timestream only supports using this operation with the
  `PrepareQueryRequest$ValidateOnly` set to `true`.
  """
  def prepare_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PrepareQuery", input, options)
  end

  @doc """
  `Query` is a synchronous operation that enables you to run a query against your
  Amazon Timestream data.

  `Query` will time out after 60 seconds. You must update the default timeout in
  the SDK to support a timeout of 60 seconds. See the [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.run-query.html)
  for details.

  Your query request will fail in the following cases:

    * If you submit a `Query` request with the same client token outside
  of the 5-minute idempotency window.

    * If you submit a `Query` request with the same client token, but
  change other parameters, within the 5-minute idempotency window.

    * If the size of the row (including the query metadata) exceeds 1
  MB, then the query will fail with the following error message:

  `Query aborted as max page response size has been exceeded by the output result
  row`

    * If the IAM principal of the query initiator and the result reader
  are not the same and/or the query initiator and the result reader do not have
  the same query string in the query requests, the query will fail with an
  `Invalid pagination token` error.
  """
  def query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "Query", input, options)
  end

  @doc """
  Associate a set of tags with a Timestream resource.

  You can then activate these user-defined tags so that they appear on the Billing
  and Cost Management console for cost allocation tracking.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the association of tags from a Timestream query resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Update a scheduled query.
  """
  def update_scheduled_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateScheduledQuery", input, options)
  end
end
