# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisVideoWebRTCStorage do
  @moduledoc """
  webrtc
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      client_limit_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type client_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_argument_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type invalid_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      join_storage_session_as_viewer_input() :: %{
        required("channelArn") => String.t(),
        required("clientId") => String.t()
      }

  """
  @type join_storage_session_as_viewer_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      join_storage_session_input() :: %{
        required("channelArn") => String.t()
      }

  """
  @type join_storage_session_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @type join_storage_session_errors() ::
          resource_not_found_exception()
          | invalid_argument_exception()
          | client_limit_exceeded_exception()
          | access_denied_exception()

  @type join_storage_session_as_viewer_errors() ::
          resource_not_found_exception()
          | invalid_argument_exception()
          | client_limit_exceeded_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kinesisvideo",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Kinesis Video WebRTC Storage",
      signature_version: "v4",
      signing_name: "kinesisvideo",
      target_prefix: nil
    }
  end

  @doc """

  Before using this API, you must call the `GetSignalingChannelEndpoint` API to
  request the WEBRTC endpoint.

  You then specify the endpoint and region in your `JoinStorageSession` API
  request.

  Join the ongoing one way-video and/or multi-way audio WebRTC session as a video
  producing
  device for an input channel. If there’s no existing session for the channel, a
  new streaming
  session needs to be created, and the Amazon Resource Name (ARN) of the signaling
  channel must
  be provided.

  Currently for the `SINGLE_MASTER` type, a video producing
  device is able to ingest both audio and video media into a stream. Only video
  producing devices can join the session and record media.

  Both audio and video tracks are currently required for WebRTC ingestion.

  Current requirements:

    
  Video track: H.264

    
  Audio track: Opus

  The resulting ingested video in the Kinesis video stream will have the following
  parameters: H.264 video and AAC audio.

  Once a master participant has negotiated a connection through WebRTC, the
  ingested media
  session will be stored in the Kinesis video stream. Multiple viewers are then
  able to play
  back real-time media through our Playback APIs.

  You can also use existing Kinesis Video Streams features like `HLS` or
  `DASH` playback, image generation via
  [GetImages](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/gs-getImages.html),
  and more
  with ingested WebRTC media.

  S3 image delivery and notifications are not currently supported.

  Assume that only one video producing device client
  can be associated with a session for the channel. If more than one
  client joins the session of a specific channel as a video producing device,
  the most recent client request takes precedence.

  ## Additional information

    *

  **Idempotent** - This API is not idempotent.

    *

  **Retry behavior** - This is counted as a new API call.

    *

  **Concurrent calls** - Concurrent calls are allowed. An offer is sent once per
  each call.
  """
  @spec join_storage_session(map(), join_storage_session_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, join_storage_session_errors()}
  def join_storage_session(%Client{} = client, input, options \\ []) do
    url_path = "/joinStorageSession"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Join the ongoing one way-video and/or multi-way audio WebRTC session as
  a viewer for an input channel.

  If there’s
  no existing session for the channel, create a new streaming session and provide
  the Amazon Resource Name (ARN) of the signaling channel (`channelArn`)
  and client id (`clientId`).

  Currently for `SINGLE_MASTER` type, a video producing device
  is able to ingest both audio and video media into a stream, while viewers
  can only ingest audio. Both a video producing device and viewers can join
  a session first and wait for other participants. While participants are having
  peer to peer conversations through WebRTC,
  the ingested media session will be stored into the Kinesis Video Stream.
  Multiple viewers are able to playback real-time media.

  Customers can also use existing Kinesis Video Streams features like
  `HLS` or `DASH` playback, Image generation, and more
  with ingested WebRTC media. If there’s an existing session with the same
  `clientId` that's found in the join session request, the new request takes
  precedence.
  """
  @spec join_storage_session_as_viewer(map(), join_storage_session_as_viewer_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, join_storage_session_as_viewer_errors()}
  def join_storage_session_as_viewer(%Client{} = client, input, options \\ []) do
    url_path = "/joinStorageSessionAsViewer"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
