# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

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
    url = "/Traces"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Retrieves a document that describes services that process incoming
  requests, and downstream services that they call as a result. Root services
  process incoming requests and make calls to downstream services. Root
  services are applications that use the AWS X-Ray SDK. Downstream services
  can be other applications, AWS resources, HTTP web APIs, or SQL databases.
  """
  def get_service_graph(client, input, options \\ []) do
    url = "/ServiceGraph"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Retrieves a service graph for one or more specific trace IDs.
  """
  def get_trace_graph(client, input, options \\ []) do
    url = "/TraceGraph"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Retrieves IDs and metadata for traces available for a specified time frame
  using an optional filter. To get the full traces, pass the trace IDs to
  `BatchGetTraces`.
  """
  def get_trace_summaries(client, input, options \\ []) do
    url = "/TraceSummaries"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Used by the AWS X-Ray daemon to upload telemetry.
  """
  def put_telemetry_records(client, input, options \\ []) do
    url = "/TelemetryRecords"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Uploads segment documents to AWS X-Ray. The X-Ray SDK generates segment
  documents and sends them to the X-Ray daemon, which uploads them in
  batches. A segment document can be a completed segment, an in-progress
  segment, or an array of subsegments.
  """
  def put_trace_segments(client, input, options \\ []) do
    url = "/TraceSegments"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  defp request(client, method, url, headers, input, options, success_status_code) do
    client = %{client | service: "xray"}
    host = get_host("xray", client)
    url = get_url(host, url, client)
    headers = Enum.concat([{"Host", host},
                           {"Content-Type", "application/x-amz-json-1.1"}],
                          headers)
    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 202, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 204, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: ^success_status_code, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: ^success_status_code, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, url, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{url}/"
  end

  defp encode_payload(input) do
    if input != nil do
      Poison.Encoder.encode(input, [])
    else
      ""
    end
  end
end
