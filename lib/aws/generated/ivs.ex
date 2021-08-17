# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Ivs do
  @moduledoc """
  ## Introduction

  The Amazon Interactive Video Service (IVS) API is REST compatible, using a
  standard HTTP API and an AWS EventBridge event stream for responses.

  JSON is used for both requests and responses, including errors.

  The API is an AWS regional service, currently in these regions: us-west-2,
  us-east-1, and eu-west-1.

  * **All API request parameters and URLs are case sensitive. ** *

  For a summary of notable documentation changes in each release, see [ Document History](https://docs.aws.amazon.com/ivs/latest/userguide/doc-history.html).

  ## Service Endpoints

  The following are the Amazon IVS service endpoints (all HTTPS):

  Region name: US West (Oregon)

    * Region: `us-west-2`

    * Endpoint: `ivs.us-west-2.amazonaws.com`

  Region name: US East (Virginia)

    * Region: `us-east-1`

    * Endpoint: `ivs.us-east-1.amazonaws.com`

  Region name: EU West (Dublin)

    * Region: `eu-west-1`

    * Endpoint: `ivs.eu-west-1.amazonaws.com`

  ## Allowed Header Values

    * ` **Accept:** ` application/json

    * ` **Accept-Encoding:** ` gzip, deflate

    * ` **Content-Type:** `application/json

  ## Resources

  The following resources contain information about your IVS live stream (see [
  Getting Started with Amazon
  IVS](https://docs.aws.amazon.com/ivs/latest/userguide/getting-started.html)):

    * Channel — Stores configuration data related to your live stream.
  You first create a channel and then use the channel’s stream key to start your
  live stream. See the Channel endpoints for more information.

    * Stream key — An identifier assigned by Amazon IVS when you create
  a channel, which is then used to authorize streaming. See the StreamKey
  endpoints for more information. * **Treat the stream key like a secret, since it
  allows anyone to stream to the channel.** *

    * Playback key pair — Video playback may be restricted using
  playback-authorization tokens, which use public-key encryption. A playback key
  pair is the public-private pair of keys used to sign and validate the
  playback-authorization token. See the PlaybackKeyPair endpoints for more
  information.

    * Recording configuration — Stores configuration related to
  recording a live stream and where to store the recorded content. Multiple
  channels can reference the same recording configuration. See the Recording
  Configuration endpoints for more information.

  ## Tagging

  A *tag* is a metadata label that you assign to an AWS resource. A tag comprises
  a *key* and a *value*, both set by you. For example, you might set a tag as
  `topic:nature` to label a particular video category. See [Tagging AWS Resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) for
  more information, including restrictions that apply to tags.

  Tags can help you identify and organize your AWS resources. For example, you can
  use the same tag for different resources to indicate that they are related. You
  can also use tags to manage access (see [ Access Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html)).

  The Amazon IVS API has these tag-related endpoints: `TagResource`,
  `UntagResource`, and `ListTagsForResource`. The following resources support
  tagging: Channels, Stream Keys, Playback Key Pairs, and Recording
  Configurations.

  ## Authentication versus Authorization

  Note the differences between these concepts:

    * *Authentication* is about verifying identity. You need to be
  authenticated to sign Amazon IVS API requests.

    * *Authorization* is about granting permissions. You need to be
  authorized to view [Amazon IVS private channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html).
  (Private channels are channels that are enabled for "playback authorization.")

  ## Authentication

  All Amazon IVS API requests must be authenticated with a signature. The AWS
  Command-Line Interface (CLI) and Amazon IVS Player SDKs take care of signing the
  underlying API calls for you. However, if your application calls the Amazon IVS
  API directly, it’s your responsibility to sign the requests.

  You generate a signature using valid AWS credentials that have permission to
  perform the requested action. For example, you must sign PutMetadata requests
  with a signature generated from an IAM user account that has the
  `ivs:PutMetadata` permission.

  For more information:

    * Authentication and generating signatures — See [Authenticating Requests (AWS Signature Version
  4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
  in the *AWS General Reference*.

    * Managing Amazon IVS permissions — See [Identity and Access Management](https://docs.aws.amazon.com/ivs/latest/userguide/security-iam.html)
  on the Security page of the *Amazon IVS User Guide*.

  ## Channel Endpoints

    * `CreateChannel` — Creates a new channel and an associated stream
  key to start streaming.

    * `GetChannel` — Gets the channel configuration for the specified
  channel ARN (Amazon Resource Name).

    * `BatchGetChannel` — Performs `GetChannel` on multiple ARNs
  simultaneously.

    * `ListChannels` — Gets summary information about all channels in
  your account, in the AWS region where the API request is processed. This list
  can be filtered to match a specified name or recording-configuration ARN.
  Filters are mutually exclusive and cannot be used together. If you try to use
  both filters, you will get an error (409 Conflict Exception).

    * `UpdateChannel` — Updates a channel's configuration. This does not
  affect an ongoing stream of this channel. You must stop and restart the stream
  for the changes to take effect.

    * `DeleteChannel` — Deletes the specified channel.

  ## StreamKey Endpoints

    * `CreateStreamKey` — Creates a stream key, used to initiate a
  stream, for the specified channel ARN.

    * `GetStreamKey` — Gets stream key information for the specified
  ARN.

    * `BatchGetStreamKey` — Performs `GetStreamKey` on multiple ARNs
  simultaneously.

    * `ListStreamKeys` — Gets summary information about stream keys for
  the specified channel.

    * `DeleteStreamKey` — Deletes the stream key for the specified ARN,
  so it can no longer be used to stream.

  ## Stream Endpoints

    * `GetStream` — Gets information about the active (live) stream on a
  specified channel.

    * `ListStreams` — Gets summary information about live streams in
  your account, in the AWS region where the API request is processed.

    * `StopStream` — Disconnects the incoming RTMPS stream for the
  specified channel. Can be used in conjunction with `DeleteStreamKey` to prevent
  further streaming to a channel.

    * `PutMetadata` — Inserts metadata into the active stream of the
  specified channel. A maximum of 5 requests per second per channel is allowed,
  each with a maximum 1 KB payload. (If 5 TPS is not sufficient for your needs, we
  recommend batching your data into a single PutMetadata call.)

  ## PlaybackKeyPair Endpoints

  For more information, see [Setting Up Private Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
  in the *Amazon IVS User Guide*.

    * `ImportPlaybackKeyPair` — Imports the public portion of a new key
  pair and returns its `arn` and `fingerprint`. The `privateKey` can then be used
  to generate viewer authorization tokens, to grant viewers access to private
  channels (channels enabled for playback authorization).

    * `GetPlaybackKeyPair` — Gets a specified playback authorization key
  pair and returns the `arn` and `fingerprint`. The `privateKey` held by the
  caller can be used to generate viewer authorization tokens, to grant viewers
  access to private channels.

    * `ListPlaybackKeyPairs` — Gets summary information about playback
  key pairs.

    * `DeletePlaybackKeyPair` — Deletes a specified authorization key
  pair. This invalidates future viewer tokens generated using the key pair’s
  `privateKey`.

  ## RecordingConfiguration Endpoints

    * `CreateRecordingConfiguration` — Creates a new recording
  configuration, used to enable recording to Amazon S3.

    * `GetRecordingConfiguration` — Gets the recording-configuration
  metadata for the specified ARN.

    * `ListRecordingConfigurations` — Gets summary information about all
  recording configurations in your account, in the AWS region where the API
  request is processed.

    * `DeleteRecordingConfiguration` — Deletes the recording
  configuration for the specified ARN.

  ## AWS Tags Endpoints

    * `TagResource` — Adds or updates tags for the AWS resource with the
  specified ARN.

    * `UntagResource` — Removes tags from the resource with the
  specified ARN.

    * `ListTagsForResource` — Gets information about AWS tags for the
  specified ARN.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-07-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ivs",
      global?: false,
      protocol: "rest-json",
      service_id: "ivs",
      signature_version: "v4",
      signing_name: "ivs",
      target_prefix: nil
    }
  end

  @doc """
  Performs `GetChannel` on multiple ARNs simultaneously.
  """
  def batch_get_channel(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGetChannel"
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
  Performs `GetStreamKey` on multiple ARNs simultaneously.
  """
  def batch_get_stream_key(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGetStreamKey"
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
  Creates a new channel and an associated stream key to start streaming.
  """
  def create_channel(%Client{} = client, input, options \\ []) do
    url_path = "/CreateChannel"
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
  Creates a new recording configuration, used to enable recording to Amazon S3.

  **Known issue:** In the us-east-1 region, if you use the AWS CLI to create a
  recording configuration, it returns success even if the S3 bucket is in a
  different region. In this case, the `state` of the recording configuration is
  `CREATE_FAILED` (instead of `ACTIVE`). (In other regions, the CLI correctly
  returns failure if the bucket is in a different region.)

  **Workaround:** Ensure that your S3 bucket is in the same region as the
  recording configuration. If you create a recording configuration in a different
  region as your S3 bucket, delete that recording configuration and create a new
  one with an S3 bucket from the correct region.
  """
  def create_recording_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/CreateRecordingConfiguration"
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
  Creates a stream key, used to initiate a stream, for the specified channel ARN.

  Note that `CreateChannel` creates a stream key. If you subsequently use
  CreateStreamKey on the same channel, it will fail because a stream key already
  exists and there is a limit of 1 stream key per channel. To reset the stream key
  on a channel, use `DeleteStreamKey` and then CreateStreamKey.
  """
  def create_stream_key(%Client{} = client, input, options \\ []) do
    url_path = "/CreateStreamKey"
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
  Deletes the specified channel and its associated stream keys.

  If you try to delete a live channel, you will get an error (409
  ConflictException). To delete a channel that is live, call `StopStream`, wait
  for the Amazon EventBridge "Stream End" event (to verify that the stream's state
  was changed from Live to Offline), then call DeleteChannel. (See [ Using EventBridge with Amazon
  IVS](https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html).)
  """
  def delete_channel(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteChannel"
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
      204
    )
  end

  @doc """
  Deletes a specified authorization key pair.

  This invalidates future viewer tokens generated using the key pair’s
  `privateKey`. For more information, see [Setting Up Private Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
  in the *Amazon IVS User Guide*.
  """
  def delete_playback_key_pair(%Client{} = client, input, options \\ []) do
    url_path = "/DeletePlaybackKeyPair"
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
  Deletes the recording configuration for the specified ARN.

  If you try to delete a recording configuration that is associated with a
  channel, you will get an error (409 ConflictException). To avoid this, for all
  channels that reference the recording configuration, first use `UpdateChannel`
  to set the `recordingConfigurationArn` field to an empty string, then use
  DeleteRecordingConfiguration.
  """
  def delete_recording_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteRecordingConfiguration"
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
  Deletes the stream key for the specified ARN, so it can no longer be used to
  stream.
  """
  def delete_stream_key(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteStreamKey"
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
      204
    )
  end

  @doc """
  Gets the channel configuration for the specified channel ARN.

  See also `BatchGetChannel`.
  """
  def get_channel(%Client{} = client, input, options \\ []) do
    url_path = "/GetChannel"
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
  Gets a specified playback authorization key pair and returns the `arn` and
  `fingerprint`.

  The `privateKey` held by the caller can be used to generate viewer authorization
  tokens, to grant viewers access to private channels. For more information, see
  [Setting Up Private Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
  in the *Amazon IVS User Guide*.
  """
  def get_playback_key_pair(%Client{} = client, input, options \\ []) do
    url_path = "/GetPlaybackKeyPair"
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
  Gets the recording configuration for the specified ARN.
  """
  def get_recording_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetRecordingConfiguration"
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
  Gets information about the active (live) stream on a specified channel.
  """
  def get_stream(%Client{} = client, input, options \\ []) do
    url_path = "/GetStream"
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
  Gets stream-key information for a specified ARN.
  """
  def get_stream_key(%Client{} = client, input, options \\ []) do
    url_path = "/GetStreamKey"
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
  Imports the public portion of a new key pair and returns its `arn` and
  `fingerprint`.

  The `privateKey` can then be used to generate viewer authorization tokens, to
  grant viewers access to private channels. For more information, see [Setting Up Private
  Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
  in the *Amazon IVS User Guide*.
  """
  def import_playback_key_pair(%Client{} = client, input, options \\ []) do
    url_path = "/ImportPlaybackKeyPair"
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
  Gets summary information about all channels in your account, in the AWS region
  where the API request is processed.

  This list can be filtered to match a specified name or recording-configuration
  ARN. Filters are mutually exclusive and cannot be used together. If you try to
  use both filters, you will get an error (409 ConflictException).
  """
  def list_channels(%Client{} = client, input, options \\ []) do
    url_path = "/ListChannels"
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
  Gets summary information about playback key pairs.

  For more information, see [Setting Up Private Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
  in the *Amazon IVS User Guide*.
  """
  def list_playback_key_pairs(%Client{} = client, input, options \\ []) do
    url_path = "/ListPlaybackKeyPairs"
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
  Gets summary information about all recording configurations in your account, in
  the AWS region where the API request is processed.
  """
  def list_recording_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/ListRecordingConfigurations"
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
  Gets summary information about stream keys for the specified channel.
  """
  def list_stream_keys(%Client{} = client, input, options \\ []) do
    url_path = "/ListStreamKeys"
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
  Gets summary information about live streams in your account, in the AWS region
  where the API request is processed.
  """
  def list_streams(%Client{} = client, input, options \\ []) do
    url_path = "/ListStreams"
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
  Gets information about AWS tags for the specified ARN.
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
  Inserts metadata into the active stream of the specified channel.

  A maximum of 5 requests per second per channel is allowed, each with a maximum 1
  KB payload. (If 5 TPS is not sufficient for your needs, we recommend batching
  your data into a single PutMetadata call.) Also see [Embedding Metadata within a Video Stream](https://docs.aws.amazon.com/ivs/latest/userguide/metadata.html) in
  the *Amazon IVS User Guide*.
  """
  def put_metadata(%Client{} = client, input, options \\ []) do
    url_path = "/PutMetadata"
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
  Disconnects the incoming RTMPS stream for the specified channel.

  Can be used in conjunction with `DeleteStreamKey` to prevent further streaming
  to a channel.

  Many streaming client-software libraries automatically reconnect a dropped RTMPS
  session, so to stop the stream permanently, you may want to first revoke the
  `streamKey` attached to the channel.
  """
  def stop_stream(%Client{} = client, input, options \\ []) do
    url_path = "/StopStream"
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
  Adds or updates tags for the AWS resource with the specified ARN.
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
  Removes tags from the resource with the specified ARN.
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
  Updates a channel's configuration.

  This does not affect an ongoing stream of this channel. You must stop and
  restart the stream for the changes to take effect.
  """
  def update_channel(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateChannel"
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
