# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.XRay do
  @moduledoc """
  AWS X-Ray provides APIs for managing debug traces and retrieving service
  maps and other data created by processing those traces.
  """

  @doc """
  Retrieves a list of traces specified by ID. Each trace is a collection of
  segment documents that originates from a single request. Use
  `GetTraceSummaries` to get a list of trace IDs.
  """
  def batch_get_traces(client, input, options \\ []) do
    path_ = "/Traces"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a group resource with a name and a filter expression.
  """
  def create_group(client, input, options \\ []) do
    path_ = "/CreateGroup"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a rule to control sampling behavior for instrumented applications.
  Services retrieve rules with `GetSamplingRules`, and evaluate each rule in
  ascending order of *priority* for each request. If a rule matches, the
  service records a trace, borrowing it from the reservoir size. After 10
  seconds, the service reports back to X-Ray with `GetSamplingTargets` to get
  updated versions of each in-use rule. The updated rule contains a trace
  quota that the service can use instead of borrowing from the reservoir.
  """
  def create_sampling_rule(client, input, options \\ []) do
    path_ = "/CreateSamplingRule"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a group resource.
  """
  def delete_group(client, input, options \\ []) do
    path_ = "/DeleteGroup"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a sampling rule.
  """
  def delete_sampling_rule(client, input, options \\ []) do
    path_ = "/DeleteSamplingRule"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves the current encryption configuration for X-Ray data.
  """
  def get_encryption_config(client, input, options \\ []) do
    path_ = "/EncryptionConfig"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves group resource details.
  """
  def get_group(client, input, options \\ []) do
    path_ = "/GetGroup"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves all active group details.
  """
  def get_groups(client, input, options \\ []) do
    path_ = "/Groups"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves all sampling rules.
  """
  def get_sampling_rules(client, input, options \\ []) do
    path_ = "/GetSamplingRules"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves information about recent sampling results for all sampling rules.
  """
  def get_sampling_statistic_summaries(client, input, options \\ []) do
    path_ = "/SamplingStatisticSummaries"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Requests a sampling quota for rules that the service is using to sample
  requests.
  """
  def get_sampling_targets(client, input, options \\ []) do
    path_ = "/SamplingTargets"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves a document that describes services that process incoming
  requests, and downstream services that they call as a result. Root services
  process incoming requests and make calls to downstream services. Root
  services are applications that use the [AWS X-Ray
  SDK](https://docs.aws.amazon.com/xray/index.html). Downstream services can
  be other applications, AWS resources, HTTP web APIs, or SQL databases.
  """
  def get_service_graph(client, input, options \\ []) do
    path_ = "/ServiceGraph"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Get an aggregation of service statistics defined by a specific time range.
  """
  def get_time_series_service_statistics(client, input, options \\ []) do
    path_ = "/TimeSeriesServiceStatistics"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves a service graph for one or more specific trace IDs.
  """
  def get_trace_graph(client, input, options \\ []) do
    path_ = "/TraceGraph"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves IDs and annotations for traces available for a specified time
  frame using an optional filter. To get the full traces, pass the trace IDs
  to `BatchGetTraces`.

  A filter expression can target traced requests that hit specific service
  nodes or edges, have errors, or come from a known user. For example, the
  following filter expression targets traces that pass through
  `api.example.com`:

  `service("api.example.com")`

  This filter expression finds traces that have an annotation named `account`
  with the value `12345`:

  `annotation.account = "12345"`

  For a full list of indexed fields and keywords that you can use in filter
  expressions, see [Using Filter
  Expressions](https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html)
  in the *AWS X-Ray Developer Guide*.
  """
  def get_trace_summaries(client, input, options \\ []) do
    path_ = "/TraceSummaries"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of tags that are applied to the specified AWS X-Ray group or
  sampling rule.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    path_ = "/ListTagsForResource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the encryption configuration for X-Ray data.
  """
  def put_encryption_config(client, input, options \\ []) do
    path_ = "/PutEncryptionConfig"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Used by the AWS X-Ray daemon to upload telemetry.
  """
  def put_telemetry_records(client, input, options \\ []) do
    path_ = "/TelemetryRecords"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Uploads segment documents to AWS X-Ray. The [X-Ray
  SDK](https://docs.aws.amazon.com/xray/index.html) generates segment
  documents and sends them to the X-Ray daemon, which uploads them in
  batches. A segment document can be a completed segment, an in-progress
  segment, or an array of subsegments.

  Segments must include the following fields. For the full segment document
  schema, see [AWS X-Ray Segment
  Documents](https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html)
  in the *AWS X-Ray Developer Guide*.

  <p class="title"> **Required segment document fields**

  <ul> <li> `name` - The name of the service that handled the request.

  </li> <li> `id` - A 64-bit identifier for the segment, unique among
  segments in the same trace, in 16 hexadecimal digits.

  </li> <li> `trace_id` - A unique identifier that connects all segments and
  subsegments originating from a single client request.

  </li> <li> `start_time` - Time the segment or subsegment was created, in
  floating point seconds in epoch time, accurate to milliseconds. For
  example, `1480615200.010` or `1.480615200010E9`.

  </li> <li> `end_time` - Time the segment or subsegment was closed. For
  example, `1480615200.090` or `1.480615200090E9`. Specify either an
  `end_time` or `in_progress`.

  </li> <li> `in_progress` - Set to `true` instead of specifying an
  `end_time` to record that a segment has been started, but is not complete.
  Send an in-progress segment when your application receives a request that
  will take a long time to serve, to trace that the request was received.
  When the response is sent, send the complete segment to overwrite the
  in-progress segment.

  </li> </ul> A `trace_id` consists of three numbers separated by hyphens.
  For example, 1-58406520-a006649127e371903a2de979. This includes:

  <p class="title"> **Trace ID Format**

  <ul> <li> The version number, for instance, `1`.

  </li> <li> The time of the original request, in Unix epoch time, in 8
  hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in epoch
  time is `1480615200` seconds, or `58406520` in hexadecimal.

  </li> <li> A 96-bit identifier for the trace, globally unique, in 24
  hexadecimal digits.

  </li> </ul>
  """
  def put_trace_segments(client, input, options \\ []) do
    path_ = "/TraceSegments"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Applies tags to an existing AWS X-Ray group or sampling rule.
  """
  def tag_resource(client, input, options \\ []) do
    path_ = "/TagResource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes tags from an AWS X-Ray group or sampling rule. You cannot edit or
  delete system tags (those with an `aws:` prefix).
  """
  def untag_resource(client, input, options \\ []) do
    path_ = "/UntagResource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a group resource.
  """
  def update_group(client, input, options \\ []) do
    path_ = "/UpdateGroup"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Modifies a sampling rule's configuration.
  """
  def update_sampling_rule(client, input, options \\ []) do
    path_ = "/UpdateSamplingRule"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "xray"}
    host = build_host("xray", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, nil) do
    case do_request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case do_request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
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

  defp do_request(client, method, url, payload, headers, options) do
    {mod, fun} = Map.fetch(client, :http_client)
    apply(mod, fun, [method, url, payload, headers, options])
  end

  defp encode!(client, payload, type \\ :json) do
    {mod, fun} = client
      |> Map.fetch(:encode)
      |> Map.fetch(type)
    apply(mod, fun, [payload])
  end

  defp decode!(client, payload) do
    {mod, fun} = client
      |> Map.fetch(:decode)
      |> Map.fetch(:json)
    apply(mod, fun, [payload])
  end
end
