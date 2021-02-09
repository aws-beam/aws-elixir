# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Ivs do
  @moduledoc """
  ## Introduction

  The Amazon Interactive Video Service (IVS) API is REST compatible, using a
  standard HTTP API and an [AWS SNS](http://aws.amazon.com/sns) event stream for responses.

  JSON is used for both requests and responses, including errors.

  The API is an AWS regional service, currently in these regions: us-west-2,
  us-east-1, and eu-west-1.

  * **All API request parameters and URLs are case sensitive. ** *

  For a summary of notable documentation changes in each release, see [ Document
  History](https://docs.aws.amazon.com/ivs/latest/userguide/doc-history.html).

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
  IVS](https://docs.aws.amazon.com/ivs/latest/userguide/GSIVS.html)):

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
  tagging: Channels, Stream Keys, and Playback Key Pairs.

  ## Channel Endpoints

    * `CreateChannel` — Creates a new channel and an associated stream
  key to start streaming.

    * `GetChannel` — Gets the channel configuration for the specified
  channel ARN (Amazon Resource Name).

    * `BatchGetChannel` — Performs `GetChannel` on multiple ARNs
  simultaneously.

    * `ListChannels` — Gets summary information about all channels in
  your account, in the AWS region where the API request is processed. This list
  can be filtered to match a specified string.

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

    * `PutMetadata` — Inserts metadata into an RTMPS stream for the
  specified channel. A maximum of 5 requests per second per channel is allowed,
  each with a maximum 1KB payload.

  ## PlaybackKeyPair Endpoints

    * `ImportPlaybackKeyPair` — Imports the public portion of a new key
  pair and returns its `arn` and `fingerprint`. The `privateKey` can then be used
  to generate viewer authorization tokens, to grant viewers access to authorized
  channels.

    * `GetPlaybackKeyPair` — Gets a specified playback authorization key
  pair and returns the `arn` and `fingerprint`. The `privateKey` held by the
  caller can be used to generate viewer authorization tokens, to grant viewers
  access to authorized channels.

    * `ListPlaybackKeyPairs` — Gets summary information about playback
  key pairs.

    * `DeletePlaybackKeyPair` — Deletes a specified authorization key
  pair. This invalidates future viewer tokens generated using the key pair’s
  `privateKey`.

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
  `privateKey`.
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
  tokens, to grant viewers access to authorized channels.
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
  grant viewers access to authorized channels.
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

  This list can be filtered to match a specified string.
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
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  Inserts metadata into an RTMPS stream for the specified channel.

  A maximum of 5 requests per second per channel is allowed, each with a maximum
  1KB payload.
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
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
    url_path = "/tags/#{URI.encode(resource_arn)}"
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