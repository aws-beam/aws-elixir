# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisVideo do
  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2017-09-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kinesisvideo",
      global?: false,
      protocol: "rest-json",
      service_id: "Kinesis Video",
      signature_version: "v4",
      signing_name: "kinesisvideo",
      target_prefix: nil
    }
  end

  @doc """
  Creates a signaling channel.

  `CreateSignalingChannel` is an asynchronous operation.
  """
  def create_signaling_channel(%Client{} = client, input, options \\ []) do
    url_path = "/createSignalingChannel"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Creates a new Kinesis video stream.

  When you create a new stream, Kinesis Video Streams assigns it a version number.
  When you change the stream's metadata, Kinesis Video Streams updates the
  version.

  `CreateStream` is an asynchronous operation.

  For information about how the service works, see [How it Works](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-it-works.html).

  You must have permissions for the `KinesisVideo:CreateStream` action.
  """
  def create_stream(%Client{} = client, input, options \\ []) do
    url_path = "/createStream"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Deletes a specified signaling channel.

  `DeleteSignalingChannel` is an asynchronous operation. If you don't specify the
  channel's current version, the most recent version is deleted.
  """
  def delete_signaling_channel(%Client{} = client, input, options \\ []) do
    url_path = "/deleteSignalingChannel"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Deletes a Kinesis video stream and the data contained in the stream.

  This method marks the stream for deletion, and makes the data in the stream
  inaccessible immediately.

  To ensure that you have the latest version of the stream before deleting it, you
  can specify the stream version. Kinesis Video Streams assigns a version to each
  stream. When you update a stream, Kinesis Video Streams assigns a new version
  number. To get the latest stream version, use the `DescribeStream` API.

  This operation requires permission for the `KinesisVideo:DeleteStream` action.
  """
  def delete_stream(%Client{} = client, input, options \\ []) do
    url_path = "/deleteStream"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Describes a stream’s edge configuration that was set using the
  `StartEdgeConfigurationUpdate` API.

  Use this API to get the status of the configuration if the configuration is in
  sync with the Edge Agent.
  """
  def describe_edge_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeEdgeConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Gets the `ImageGenerationConfiguration` for a given Kinesis video stream.
  """
  def describe_image_generation_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeImageGenerationConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns the most current information about the stream.

  Either streamName or streamARN should be provided in the input.

  Returns the most current information about the stream. The `streamName` or
  `streamARN` should be provided in the input.
  """
  def describe_mapped_resource_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeMappedResourceConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns the most current information about the channel.

  Specify the `ChannelName` or `ChannelARN` in the input.
  """
  def describe_media_storage_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeMediaStorageConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Gets the `NotificationConfiguration` for a given Kinesis video stream.
  """
  def describe_notification_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeNotificationConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns the most current information about the signaling channel.

  You must specify either the name or the Amazon Resource Name (ARN) of the
  channel that you want to describe.
  """
  def describe_signaling_channel(%Client{} = client, input, options \\ []) do
    url_path = "/describeSignalingChannel"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns the most current information about the specified stream.

  You must specify either the `StreamName` or the `StreamARN`.
  """
  def describe_stream(%Client{} = client, input, options \\ []) do
    url_path = "/describeStream"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Gets an endpoint for a specified stream for either reading or writing.

  Use this endpoint in your application to read from the specified stream (using
  the `GetMedia` or `GetMediaForFragmentList` operations) or write to it (using
  the `PutMedia` operation).

  The returned endpoint does not have the API name appended. The client needs to
  add the API name to the returned endpoint.

  In the request, specify the stream either by `StreamName` or `StreamARN`.
  """
  def get_data_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/getDataEndpoint"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Provides an endpoint for the specified signaling channel to send and receive
  messages.

  This API uses the `SingleMasterChannelEndpointConfiguration` input parameter,
  which consists of the `Protocols` and `Role` properties.

  `Protocols` is used to determine the communication mechanism. For example, if
  you specify `WSS` as the protocol, this API produces a secure websocket
  endpoint. If you specify `HTTPS` as the protocol, this API generates an HTTPS
  endpoint.

  `Role` determines the messaging permissions. A `MASTER` role results in this API
  generating an endpoint that a client can use to communicate with any of the
  viewers on the channel. A `VIEWER` role results in this API generating an
  endpoint that a client can use to communicate only with a `MASTER`.
  """
  def get_signaling_channel_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/getSignalingChannelEndpoint"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns an array of `ChannelInfo` objects.

  Each object describes a signaling channel. To retrieve only those channels that
  satisfy a specific condition, you can specify a `ChannelNameCondition`.
  """
  def list_signaling_channels(%Client{} = client, input, options \\ []) do
    url_path = "/listSignalingChannels"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns an array of `StreamInfo` objects.

  Each object describes a stream. To retrieve only streams that satisfy a specific
  condition, you can specify a `StreamNameCondition`.
  """
  def list_streams(%Client{} = client, input, options \\ []) do
    url_path = "/listStreams"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns a list of tags associated with the specified signaling channel.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/ListTagsForResource"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns a list of tags associated with the specified stream.

  In the request, you must specify either the `StreamName` or the `StreamARN`.
  """
  def list_tags_for_stream(%Client{} = client, input, options \\ []) do
    url_path = "/listTagsForStream"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  An asynchronous API that updates a stream’s existing edge configuration.

  The Kinesis Video Stream will sync the stream’s edge configuration with the Edge
  Agent IoT Greengrass component that runs on an IoT Hub Device, setup at your
  premise. The time to sync can vary and depends on the connectivity of the Hub
  Device. The `SyncStatus` will be updated as the edge configuration is
  acknowledged, and synced with the Edge Agent.

  If this API is invoked for the first time, a new edge configuration will be
  created for the stream, and the sync status will be set to `SYNCING`. You will
  have to wait for the sync status to reach a terminal state such as: `IN_SYNC`,
  or `SYNC_FAILED`, before using this API again. If you invoke this API during the
  syncing process, a `ResourceInUseException` will be thrown. The connectivity of
  the stream’s edge configuration and the Edge Agent will be retried for 15
  minutes. After 15 minutes, the status will transition into the `SYNC_FAILED`
  state.
  """
  def start_edge_configuration_update(%Client{} = client, input, options \\ []) do
    url_path = "/startEdgeConfigurationUpdate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Adds one or more tags to a signaling channel.

  A *tag* is a key-value pair (the value is optional) that you can define and
  assign to Amazon Web Services resources. If you specify a tag that already
  exists, the tag value is replaced with the value that you specify in the
  request. For more information, see [Using Cost Allocation Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *Billing and Cost Management and Cost Management User Guide*.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/TagResource"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Adds one or more tags to a stream.

  A *tag* is a key-value pair (the value is optional) that you can define and
  assign to Amazon Web Services resources. If you specify a tag that already
  exists, the tag value is replaced with the value that you specify in the
  request. For more information, see [Using Cost Allocation Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *Billing and Cost Management and Cost Management User Guide*.

  You must provide either the `StreamName` or the `StreamARN`.

  This operation requires permission for the `KinesisVideo:TagStream` action.

  A Kinesis video stream can support up to 50 tags.
  """
  def tag_stream(%Client{} = client, input, options \\ []) do
    url_path = "/tagStream"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Removes one or more tags from a signaling channel.

  In the request, specify only a tag key or keys; don't specify the value. If you
  specify a tag key that does not exist, it's ignored.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/UntagResource"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Removes one or more tags from a stream.

  In the request, specify only a tag key or keys; don't specify the value. If you
  specify a tag key that does not exist, it's ignored.

  In the request, you must provide the `StreamName` or `StreamARN`.
  """
  def untag_stream(%Client{} = client, input, options \\ []) do
    url_path = "/untagStream"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Increases or decreases the stream's data retention period by the value that you
  specify.

  To indicate whether you want to increase or decrease the data retention period,
  specify the `Operation` parameter in the request body. In the request, you must
  specify either the `StreamName` or the `StreamARN`.

  The retention period that you specify replaces the current value.

  This operation requires permission for the `KinesisVideo:UpdateDataRetention`
  action.

  Changing the data retention period affects the data in the stream as follows:

    * If the data retention period is increased, existing data is
  retained for the new retention period. For example, if the data retention period
  is increased from one hour to seven hours, all existing data is retained for
  seven hours.

    * If the data retention period is decreased, existing data is
  retained for the new retention period. For example, if the data retention period
  is decreased from seven hours to one hour, all existing data is retained for one
  hour, and any data older than one hour is deleted immediately.
  """
  def update_data_retention(%Client{} = client, input, options \\ []) do
    url_path = "/updateDataRetention"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Updates the `StreamInfo` and `ImageProcessingConfiguration` fields.
  """
  def update_image_generation_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/updateImageGenerationConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Associates a `SignalingChannel` to a stream to store the media.

  There are two signaling modes that can specified :

    * If the `StorageStatus` is disabled, no data will be stored, and
  the `StreamARN` parameter will not be needed.

    * If the `StorageStatus` is enabled, the data will be stored in the
  `StreamARN` provided.
  """
  def update_media_storage_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/updateMediaStorageConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Updates the notification information for a stream.
  """
  def update_notification_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/updateNotificationConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Updates the existing signaling channel.

  This is an asynchronous operation and takes time to complete.

  If the `MessageTtlSeconds` value is updated (either increased or reduced), it
  only applies to new messages sent via this channel after it's been updated.
  Existing messages are still expired as per the previous `MessageTtlSeconds`
  value.
  """
  def update_signaling_channel(%Client{} = client, input, options \\ []) do
    url_path = "/updateSignalingChannel"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Updates stream metadata, such as the device name and media type.

  You must provide the stream name or the Amazon Resource Name (ARN) of the
  stream.

  To make sure that you have the latest version of the stream before updating it,
  you can specify the stream version. Kinesis Video Streams assigns a version to
  each stream. When you update a stream, Kinesis Video Streams assigns a new
  version number. To get the latest stream version, use the `DescribeStream` API.

  `UpdateStream` is an asynchronous operation, and takes time to complete.
  """
  def update_stream(%Client{} = client, input, options \\ []) do
    url_path = "/updateStream"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
