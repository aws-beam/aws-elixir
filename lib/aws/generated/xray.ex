# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.XRay do
  @moduledoc """
  AWS X-Ray provides APIs for managing debug traces and retrieving service maps
  and other data created by processing those traces.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2016-04-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "xray",
      global?: false,
      protocol: "rest-json",
      service_id: "XRay",
      signature_version: "v4",
      signing_name: "xray",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves a list of traces specified by ID.

  Each trace is a collection of segment documents that originates from a single
  request. Use `GetTraceSummaries` to get a list of trace IDs.
  """
  def batch_get_traces(%Client{} = client, input, options \\ []) do
    url_path = "/Traces"
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
  Creates a group resource with a name and a filter expression.
  """
  def create_group(%Client{} = client, input, options \\ []) do
    url_path = "/CreateGroup"
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
  Creates a rule to control sampling behavior for instrumented applications.

  Services retrieve rules with `GetSamplingRules`, and evaluate each rule in
  ascending order of *priority* for each request. If a rule matches, the service
  records a trace, borrowing it from the reservoir size. After 10 seconds, the
  service reports back to X-Ray with `GetSamplingTargets` to get updated versions
  of each in-use rule. The updated rule contains a trace quota that the service
  can use instead of borrowing from the reservoir.
  """
  def create_sampling_rule(%Client{} = client, input, options \\ []) do
    url_path = "/CreateSamplingRule"
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
  Deletes a group resource.
  """
  def delete_group(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteGroup"
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
  Deletes a sampling rule.
  """
  def delete_sampling_rule(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteSamplingRule"
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
  Retrieves the current encryption configuration for X-Ray data.
  """
  def get_encryption_config(%Client{} = client, input, options \\ []) do
    url_path = "/EncryptionConfig"
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
  Retrieves group resource details.
  """
  def get_group(%Client{} = client, input, options \\ []) do
    url_path = "/GetGroup"
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
  Retrieves all active group details.
  """
  def get_groups(%Client{} = client, input, options \\ []) do
    url_path = "/Groups"
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
  Retrieves the summary information of an insight.

  This includes impact to clients and root cause services, the top anomalous
  services, the category, the state of the insight, and the start and end time of
  the insight.
  """
  def get_insight(%Client{} = client, input, options \\ []) do
    url_path = "/Insight"
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
  X-Ray reevaluates insights periodically until they're resolved, and records each
  intermediate state as an event.

  You can review an insight's events in the Impact Timeline on the Inspect page in
  the X-Ray console.
  """
  def get_insight_events(%Client{} = client, input, options \\ []) do
    url_path = "/InsightEvents"
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
  Retrieves a service graph structure filtered by the specified insight.

  The service graph is limited to only structural information. For a complete
  service graph, use this API with the GetServiceGraph API.
  """
  def get_insight_impact_graph(%Client{} = client, input, options \\ []) do
    url_path = "/InsightImpactGraph"
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
  Retrieves the summaries of all insights in the specified group matching the
  provided filter values.
  """
  def get_insight_summaries(%Client{} = client, input, options \\ []) do
    url_path = "/InsightSummaries"
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
  Retrieves all sampling rules.
  """
  def get_sampling_rules(%Client{} = client, input, options \\ []) do
    url_path = "/GetSamplingRules"
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
  Retrieves information about recent sampling results for all sampling rules.
  """
  def get_sampling_statistic_summaries(%Client{} = client, input, options \\ []) do
    url_path = "/SamplingStatisticSummaries"
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
  Requests a sampling quota for rules that the service is using to sample
  requests.
  """
  def get_sampling_targets(%Client{} = client, input, options \\ []) do
    url_path = "/SamplingTargets"
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
  Retrieves a document that describes services that process incoming requests, and
  downstream services that they call as a result.

  Root services process incoming requests and make calls to downstream services.
  Root services are applications that use the [AWS X-Ray SDK](https://docs.aws.amazon.com/xray/index.html). Downstream services can be
  other applications, AWS resources, HTTP web APIs, or SQL databases.
  """
  def get_service_graph(%Client{} = client, input, options \\ []) do
    url_path = "/ServiceGraph"
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
  Get an aggregation of service statistics defined by a specific time range.
  """
  def get_time_series_service_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/TimeSeriesServiceStatistics"
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
  Retrieves a service graph for one or more specific trace IDs.
  """
  def get_trace_graph(%Client{} = client, input, options \\ []) do
    url_path = "/TraceGraph"
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
  Retrieves IDs and annotations for traces available for a specified time frame
  using an optional filter.

  To get the full traces, pass the trace IDs to `BatchGetTraces`.

  A filter expression can target traced requests that hit specific service nodes
  or edges, have errors, or come from a known user. For example, the following
  filter expression targets traces that pass through `api.example.com`:

  `service("api.example.com")`

  This filter expression finds traces that have an annotation named `account` with
  the value `12345`:

  `annotation.account = "12345"`

  For a full list of indexed fields and keywords that you can use in filter
  expressions, see [Using Filter Expressions](https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html)
  in the *AWS X-Ray Developer Guide*.
  """
  def get_trace_summaries(%Client{} = client, input, options \\ []) do
    url_path = "/TraceSummaries"
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
  Returns a list of tags that are applied to the specified AWS X-Ray group or
  sampling rule.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/ListTagsForResource"
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
  Updates the encryption configuration for X-Ray data.
  """
  def put_encryption_config(%Client{} = client, input, options \\ []) do
    url_path = "/PutEncryptionConfig"
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
  Used by the AWS X-Ray daemon to upload telemetry.
  """
  def put_telemetry_records(%Client{} = client, input, options \\ []) do
    url_path = "/TelemetryRecords"
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
  Uploads segment documents to AWS X-Ray.

  The [X-Ray SDK](https://docs.aws.amazon.com/xray/index.html) generates segment documents and sends them to the X-Ray daemon, which uploads them in batches. A
  segment document can be a completed segment, an in-progress segment, or an array
  of subsegments.

  Segments must include the following fields. For the full segment document
  schema, see [AWS X-Ray Segment
  Documents](https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html)
  in the *AWS X-Ray Developer Guide*.

  ## Required segment document fields

    * `name` - The name of the service that handled the request.

    * `id` - A 64-bit identifier for the segment, unique among segments
  in the same trace, in 16 hexadecimal digits.

    * `trace_id` - A unique identifier that connects all segments and
  subsegments originating from a single client request.

    * `start_time` - Time the segment or subsegment was created, in
  floating point seconds in epoch time, accurate to milliseconds. For example,
  `1480615200.010` or `1.480615200010E9`.

    * `end_time` - Time the segment or subsegment was closed. For
  example, `1480615200.090` or `1.480615200090E9`. Specify either an `end_time` or
  `in_progress`.

    * `in_progress` - Set to `true` instead of specifying an `end_time`
  to record that a segment has been started, but is not complete. Send an
  in-progress segment when your application receives a request that will take a
  long time to serve, to trace that the request was received. When the response is
  sent, send the complete segment to overwrite the in-progress segment.

  A `trace_id` consists of three numbers separated by hyphens. For example,
  1-58406520-a006649127e371903a2de979. This includes:

  ## Trace ID Format

    * The version number, for instance, `1`.

    * The time of the original request, in Unix epoch time, in 8
  hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in epoch time is
  `1480615200` seconds, or `58406520` in hexadecimal.

    * A 96-bit identifier for the trace, globally unique, in 24
  hexadecimal digits.
  """
  def put_trace_segments(%Client{} = client, input, options \\ []) do
    url_path = "/TraceSegments"
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
  Applies tags to an existing AWS X-Ray group or sampling rule.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/TagResource"
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
  Removes tags from an AWS X-Ray group or sampling rule.

  You cannot edit or delete system tags (those with an `aws:` prefix).
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/UntagResource"
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
  Updates a group resource.
  """
  def update_group(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateGroup"
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
  Modifies a sampling rule's configuration.
  """
  def update_sampling_rule(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateSamplingRule"
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
