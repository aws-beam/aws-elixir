# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisVideoMedia do
  @moduledoc """
  <p/>
  """

  @doc """
  Use this API to retrieve media content from a Kinesis video stream. In the
  request, you identify the stream name or stream Amazon Resource Name (ARN),
  and the starting chunk. Kinesis Video Streams then returns a stream of
  chunks in order by fragment number.

  <note> You must first call the `GetDataEndpoint` API to get an endpoint.
  Then send the `GetMedia` requests to this endpoint using the
  [--endpoint-url
  parameter](https://docs.aws.amazon.com/cli/latest/reference/).

  </note> When you put media data (fragments) on a stream, Kinesis Video
  Streams stores each incoming fragment and related metadata in what is
  called a "chunk." For more information, see
  [PutMedia](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_dataplane_PutMedia.html).
  The `GetMedia` API returns a stream of these chunks starting from the chunk
  that you specify in the request.

  The following limits apply when using the `GetMedia` API:

  <ul> <li> A client can call `GetMedia` up to five times per second per
  stream.

  </li> <li> Kinesis Video Streams sends media data at a rate of up to 25
  megabytes per second (or 200 megabits per second) during a `GetMedia`
  session.

  </li> </ul> <note> If an error is thrown after invoking a Kinesis Video
  Streams media API, in addition to the HTTP status code and the response
  body, it includes the following pieces of information:

  <ul> <li> `x-amz-ErrorType` HTTP header – contains a more specific error
  type in addition to what the HTTP status code provides.

  </li> <li> `x-amz-RequestId` HTTP header – if you want to report an issue
  to AWS, the support team can better diagnose the problem if given the
  Request Id.

  </li> </ul> Both the HTTP status code and the ErrorType header can be
  utilized to make programmatic decisions about whether errors are retry-able
  and under what conditions, as well as provide information on what actions
  the client programmer might need to take in order to successfully try
  again.

  For more information, see the **Errors** section at the bottom of this
  topic, as well as [Common
  Errors](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html).

  </note>
  """
  def get_media(client, input, options \\ []) do
    path_ = "/getMedia"
    headers = []
    query_ = []
    case request(client, :post, path_, query_, headers, input, options, nil) do
      {:ok, body, response} when is_nil(body) == false ->
        body =
          [
            {"Content-Type", "ContentType"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "kinesisvideo"}
    host = build_host("kinesisvideo", client)
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
