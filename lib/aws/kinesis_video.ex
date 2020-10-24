# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisVideo do
  @moduledoc """
  <p/>
  """

  @doc """
  Creates a signaling channel.

  `CreateSignalingChannel` is an asynchronous operation.
  """
  def create_signaling_channel(client, input, options \\ []) do
    path_ = "/createSignalingChannel"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new Kinesis video stream.

  When you create a new stream, Kinesis Video Streams assigns it a version
  number. When you change the stream's metadata, Kinesis Video Streams
  updates the version.

  `CreateStream` is an asynchronous operation.

  For information about how the service works, see [How it
  Works](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-it-works.html).

  You must have permissions for the `KinesisVideo:CreateStream` action.
  """
  def create_stream(client, input, options \\ []) do
    path_ = "/createStream"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a specified signaling channel. `DeleteSignalingChannel` is an
  asynchronous operation. If you don't specify the channel's current version,
  the most recent version is deleted.
  """
  def delete_signaling_channel(client, input, options \\ []) do
    path_ = "/deleteSignalingChannel"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a Kinesis video stream and the data contained in the stream.

  This method marks the stream for deletion, and makes the data in the stream
  inaccessible immediately.

  To ensure that you have the latest version of the stream before deleting
  it, you can specify the stream version. Kinesis Video Streams assigns a
  version to each stream. When you update a stream, Kinesis Video Streams
  assigns a new version number. To get the latest stream version, use the
  `DescribeStream` API.

  This operation requires permission for the `KinesisVideo:DeleteStream`
  action.
  """
  def delete_stream(client, input, options \\ []) do
    path_ = "/deleteStream"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the most current information about the signaling channel. You must
  specify either the name or the Amazon Resource Name (ARN) of the channel
  that you want to describe.
  """
  def describe_signaling_channel(client, input, options \\ []) do
    path_ = "/describeSignalingChannel"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the most current information about the specified stream. You must
  specify either the `StreamName` or the `StreamARN`.
  """
  def describe_stream(client, input, options \\ []) do
    path_ = "/describeStream"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets an endpoint for a specified stream for either reading or writing. Use
  this endpoint in your application to read from the specified stream (using
  the `GetMedia` or `GetMediaForFragmentList` operations) or write to it
  (using the `PutMedia` operation).

  <note> The returned endpoint does not have the API name appended. The
  client needs to add the API name to the returned endpoint.

  </note> In the request, specify the stream either by `StreamName` or
  `StreamARN`.
  """
  def get_data_endpoint(client, input, options \\ []) do
    path_ = "/getDataEndpoint"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Provides an endpoint for the specified signaling channel to send and
  receive messages. This API uses the
  `SingleMasterChannelEndpointConfiguration` input parameter, which consists
  of the `Protocols` and `Role` properties.

  `Protocols` is used to determine the communication mechanism. For example,
  if you specify `WSS` as the protocol, this API produces a secure websocket
  endpoint. If you specify `HTTPS` as the protocol, this API generates an
  HTTPS endpoint.

  `Role` determines the messaging permissions. A `MASTER` role results in
  this API generating an endpoint that a client can use to communicate with
  any of the viewers on the channel. A `VIEWER` role results in this API
  generating an endpoint that a client can use to communicate only with a
  `MASTER`.
  """
  def get_signaling_channel_endpoint(client, input, options \\ []) do
    path_ = "/getSignalingChannelEndpoint"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns an array of `ChannelInfo` objects. Each object describes a
  signaling channel. To retrieve only those channels that satisfy a specific
  condition, you can specify a `ChannelNameCondition`.
  """
  def list_signaling_channels(client, input, options \\ []) do
    path_ = "/listSignalingChannels"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns an array of `StreamInfo` objects. Each object describes a stream.
  To retrieve only streams that satisfy a specific condition, you can specify
  a `StreamNameCondition`.
  """
  def list_streams(client, input, options \\ []) do
    path_ = "/listStreams"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of tags associated with the specified signaling channel.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    path_ = "/ListTagsForResource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of tags associated with the specified stream.

  In the request, you must specify either the `StreamName` or the
  `StreamARN`.
  """
  def list_tags_for_stream(client, input, options \\ []) do
    path_ = "/listTagsForStream"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds one or more tags to a signaling channel. A *tag* is a key-value pair
  (the value is optional) that you can define and assign to AWS resources. If
  you specify a tag that already exists, the tag value is replaced with the
  value that you specify in the request. For more information, see [Using
  Cost Allocation
  Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *AWS Billing and Cost Management User Guide*.
  """
  def tag_resource(client, input, options \\ []) do
    path_ = "/TagResource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds one or more tags to a stream. A *tag* is a key-value pair (the value
  is optional) that you can define and assign to AWS resources. If you
  specify a tag that already exists, the tag value is replaced with the value
  that you specify in the request. For more information, see [Using Cost
  Allocation
  Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *AWS Billing and Cost Management User Guide*.

  You must provide either the `StreamName` or the `StreamARN`.

  This operation requires permission for the `KinesisVideo:TagStream` action.

  Kinesis video streams support up to 50 tags.
  """
  def tag_stream(client, input, options \\ []) do
    path_ = "/tagStream"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes one or more tags from a signaling channel. In the request, specify
  only a tag key or keys; don't specify the value. If you specify a tag key
  that does not exist, it's ignored.
  """
  def untag_resource(client, input, options \\ []) do
    path_ = "/UntagResource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes one or more tags from a stream. In the request, specify only a tag
  key or keys; don't specify the value. If you specify a tag key that does
  not exist, it's ignored.

  In the request, you must provide the `StreamName` or `StreamARN`.
  """
  def untag_stream(client, input, options \\ []) do
    path_ = "/untagStream"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Increases or decreases the stream's data retention period by the value that
  you specify. To indicate whether you want to increase or decrease the data
  retention period, specify the `Operation` parameter in the request body. In
  the request, you must specify either the `StreamName` or the `StreamARN`.

  <note> The retention period that you specify replaces the current value.

  </note> This operation requires permission for the
  `KinesisVideo:UpdateDataRetention` action.

  Changing the data retention period affects the data in the stream as
  follows:

  <ul> <li> If the data retention period is increased, existing data is
  retained for the new retention period. For example, if the data retention
  period is increased from one hour to seven hours, all existing data is
  retained for seven hours.

  </li> <li> If the data retention period is decreased, existing data is
  retained for the new retention period. For example, if the data retention
  period is decreased from seven hours to one hour, all existing data is
  retained for one hour, and any data older than one hour is deleted
  immediately.

  </li> </ul>
  """
  def update_data_retention(client, input, options \\ []) do
    path_ = "/updateDataRetention"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the existing signaling channel. This is an asynchronous operation
  and takes time to complete.

  If the `MessageTtlSeconds` value is updated (either increased or reduced),
  it only applies to new messages sent via this channel after it's been
  updated. Existing messages are still expired as per the previous
  `MessageTtlSeconds` value.
  """
  def update_signaling_channel(client, input, options \\ []) do
    path_ = "/updateSignalingChannel"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates stream metadata, such as the device name and media type.

  You must provide the stream name or the Amazon Resource Name (ARN) of the
  stream.

  To make sure that you have the latest version of the stream before updating
  it, you can specify the stream version. Kinesis Video Streams assigns a
  version to each stream. When you update a stream, Kinesis Video Streams
  assigns a new version number. To get the latest stream version, use the
  `DescribeStream` API.

  `UpdateStream` is an asynchronous operation, and takes time to complete.
  """
  def update_stream(client, input, options \\ []) do
    path_ = "/updateStream"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
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
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case AWS.HTTP.request(method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        body = if(body != "", do: AWS.JSON.decode!(body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case AWS.HTTP.request(method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        body = if(body != "", do: AWS.JSON.decode!(body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

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
