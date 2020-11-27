# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TimestreamQuery do
  @moduledoc """

  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
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

  Cancellation is guaranteed only if the query has not completed execution before
  the cancellation request was issued. Because cancellation is an idempotent
  operation, subsequent cancellation requests will return a `CancellationMessage`,
  indicating that the query has already been canceled.
  """
  def cancel_query(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CancelQuery", input, options)
  end

  @doc """
  DescribeEndpoints returns a list of available endpoints to make Timestream API
  calls against.

  This API is available through both Write and Query.

  Because Timestream’s SDKs are designed to transparently work with the service’s
  architecture, including the management and mapping of the service endpoints, *it
  is not recommended that you use this API unless*:

    * Your application uses a programming language that does not yet
  have SDK support

    * You require better control over the client-side implementation

  For detailed information on how to use DescribeEndpoints, see [The Endpoint Discovery Pattern and REST
  APIs](https://docs.aws.amazon.com/timestream/latest/developerguide/Using-API.endpoint-discovery.html).
  """
  def describe_endpoints(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEndpoints", input, options)
  end

  @doc """
  Query is a synchronous operation that enables you to execute a query.

  Query will timeout after 60 seconds. You must update the default timeout in the
  SDK to support a timeout of 60 seconds. The result set will be truncated to 1MB.
  Service quotas apply. For more information, see Quotas in the Timestream
  Developer Guide.
  """
  def query(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "Query", input, options)
  end
end